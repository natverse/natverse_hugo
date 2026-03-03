#!/usr/bin/env Rscript

index_rmd <- "content/publications/index.Rmd"
bib_file <- "content/publications/natverse-papers.bib"

stopifnot(file.exists(index_rmd), file.exists(bib_file))

ensure_utf8_locale <- function() {
  candidates <- c("en_US.UTF-8", "C.UTF-8", "UTF-8")
  for (loc in candidates) {
    res <- suppressWarnings(try(Sys.setlocale("LC_CTYPE", loc), silent = TRUE))
    if (!inherits(res, "try-error") && !is.na(res) && nzchar(res)) return(res)
  }
  NA_character_
}

ctype_locale <- ensure_utf8_locale()
if (is.na(ctype_locale)) {
  stop("Unable to set a UTF-8 locale (tried en_US.UTF-8, C.UTF-8, UTF-8); aborting to avoid encoding corruption.")
}

read_utf8_lines <- function(path) {
  readLines(path, warn = FALSE, encoding = "UTF-8")
}

write_utf8_lines <- function(lines, path) {
  con <- file(path, open = "w", encoding = "UTF-8")
  on.exit(close(con), add = TRUE)
  writeLines(enc2utf8(lines), con, useBytes = TRUE)
}

patch_missing_journal <- function(lines, doi_prefix, journal_name) {
  starts <- grep("^[[:space:]]*@", lines)
  if (length(starts) == 0) return(list(lines = lines, changed = character()))
  ends <- c(starts[-1] - 1L, length(lines))

  out <- character()
  prev <- 1L
  changed <- character()

  for (i in seq_along(starts)) {
    s <- starts[i]
    e <- ends[i]

    if (prev <= s - 1L) out <- c(out, lines[prev:(s - 1L)])

    block <- paste(lines[s:e], collapse = "\n")
    is_article <- grepl("^[[:space:]]*@article[[:space:]]*\\{", block, ignore.case = TRUE)
    has_doi <- grepl(
      sprintf("DOI[[:space:]]*=[[:space:]]*\\{%s[^}]*\\}", doi_prefix),
      block,
      ignore.case = TRUE
    )
    has_journal <- grepl("[,{[:space:]]journal[[:space:]]*=", block, ignore.case = TRUE, perl = TRUE)

    if (is_article && has_doi && !has_journal) {
      key <- sub(
        "^[[:space:]]*@article[[:space:]]*\\{[[:space:]]*([^,]+),.*$",
        "\\1",
        block,
        ignore.case = TRUE
      )
      block2 <- sub(
        sprintf("(?i)(DOI[[:space:]]*=[[:space:]]*\\{%s[^}]*\\})([[:space:]]*,?)", doi_prefix),
        sprintf("\\1, journal={%s}\\2", journal_name),
        block,
        perl = TRUE
      )
      if (!identical(block, block2)) {
        block <- block2
        changed <- c(changed, key)
      }
    }

    out <- c(out, strsplit(block, "\n", fixed = TRUE)[[1]])
    prev <- e + 1L
  }
  if (prev <= length(lines)) out <- c(out, lines[prev:length(lines)])

  list(lines = out, changed = changed)
}

sort_bib_entries_by_year <- function(lines) {
  starts <- grep("^[[:space:]]*@[A-Za-z]+[[:space:]]*\\{", lines)
  if (length(starts) == 0) return(lines)
  ends <- c(starts[-1] - 1L, length(lines))

  preamble <- if (starts[1] > 1L) lines[1:(starts[1] - 1L)] else character()
  entries <- vector("list", length(starts))

  for (i in seq_along(starts)) {
    block_lines <- lines[starts[i]:ends[i]]
    block <- paste(block_lines, collapse = "\n")
    key <- sub(
      "^[[:space:]]*@[A-Za-z]+[[:space:]]*\\{[[:space:]]*([^,]+),.*$",
      "\\1",
      block_lines[1]
    )
    year_txt <- sub(
      ".*[[:space:]]year[[:space:]]*=[[:space:]]*[\\{\\\"]?([0-9]{4}).*",
      "\\1",
      block,
      ignore.case = TRUE
    )
    year_num <- suppressWarnings(as.integer(year_txt))
    if (is.na(year_num)) year_num <- 0L
    entries[[i]] <- list(block_lines = block_lines, key = key, year = year_num)
  }

  ord <- order(
    -vapply(entries, function(x) x$year, integer(1)),
    vapply(entries, function(x) x$key, character(1))
  )
  sorted_entries <- entries[ord]

  out <- c(preamble)
  for (i in seq_along(sorted_entries)) {
    out <- c(out, sorted_entries[[i]]$block_lines)
    if (i < length(sorted_entries)) out <- c(out, "")
  }
  out
}

# 1) Patch known missing-journal rules for preprints/published eLife papers.
bib_lines <- read_utf8_lines(bib_file)

res_bio <- patch_missing_journal(bib_lines, "10\\.1101/", "bioRxiv")
bib_lines <- res_bio$lines

res_elife <- patch_missing_journal(bib_lines, "10\\.7554/eLife", "eLife")
bib_lines <- res_elife$lines

# Keep bibliography in year order so rendered references stay year-ordered.
bib_lines <- sort_bib_entries_by_year(bib_lines)

write_utf8_lines(bib_lines, bib_file)

# 2) Re-render publications fragment for Hugo.
rmarkdown::render(
  index_rmd,
  output_format = "blogdown::html_page",
  output_file = "index.html",
  output_dir = dirname(index_rmd),
  quiet = TRUE
)

# Ensure Hugo front matter is present in generated HTML content page.
out_html <- file.path(dirname(index_rmd), "index.html")
out_lines <- read_utf8_lines(out_html)
first_nonempty <- which(nzchar(trimws(out_lines)))[1]
has_front_matter <- !is.na(first_nonempty) && trimws(out_lines[first_nonempty]) == "---"
if (!has_front_matter) {
  out_lines <- c(
    "---",
    "title: Publications",
    "---",
    "",
    out_lines
  )
  write_utf8_lines(out_lines, out_html)
}

cat("Updated journals (bioRxiv):", length(res_bio$changed), "\n")
if (length(res_bio$changed)) cat(paste(res_bio$changed, collapse = ", "), "\n")
cat("Updated journals (eLife):", length(res_elife$changed), "\n")
if (length(res_elife$changed)) cat(paste(res_elife$changed, collapse = ", "), "\n")
cat("Rendered:", out_html, "\n")
