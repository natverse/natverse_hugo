# Publications Maintenance Notes

This repo uses an older Hugo/theme setup. For publications updates, a few gotchas needed fixing:

- `rmarkdown::render()` default output creates a full standalone HTML page and breaks Hugo page styling.
  Use `output_format = "blogdown::html_page"` for `content/publications/index.Rmd`.
- Publications are now rendered directly from the bib file into year-grouped lists
  with custom numbering (earliest paper is number 1).
- `bibtex::read.bib()` can ignore malformed `@article` entries missing required fields
  (e.g. `journal`), so updates rely on raw bib parsing.
- Some preprint/publisher records in `natverse-papers.bib` needed journal backfilling:
  - DOI starts with `10.1101/` -> `journal={bioRxiv}`
  - DOI starts with `10.7554/eLife` -> `journal={eLife}`

## One-command maintenance

Run:

```bash
Rscript scripts/update_publications.R
```

This script will:

1. patch missing `journal` for the DOI rules above,
2. sort bib entries by year in `content/publications/natverse-papers.bib`,
3. render grouped publications in `content/publications/index.html` with `blogdown::html_page`.
