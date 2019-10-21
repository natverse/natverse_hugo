## Instructions for making a vignette from a package to an article..
# 1) First make a folder like `nat-v-xx` or any other name inside the `content/articles/` subfolder.
# 2) Copy the settings.R file to the above folder.
# 3) Set the path of the .Rmd vignette you would like to add as an article in the variable `urlpath` below.
# 4) Modify the variable `metadata` for author name etc.
# 5) Add jpg ending with xxx-sq.jpg for use in the article favicons.


#Step 0: File settings here..
urlpath <- 'https://raw.githubusercontent.com/natverse/nat/master/vignettes/NeuroGeometry.Rmd'

metadata = '
---
title: NeuroGeometry - Analysing 3D morphology of neurons
author:
- greg
categories:
- learn
- nat
date: "2019-02-21"
description: |
  `nat` version 1.8.13 is now on CRAN!
photo:
  author: Maranda Vandergriff
  url: https://unsplash.com/photos/o-d37kiKqqc
slug: nat-1-8-13
---
'

## Do not modify anything below here..

# Step 1: First create temporary file..
rmdfile <- file.path(dirname(rstudioapi::getSourceEditorContext()$path),'index.Rmarkdown' )
mdfile <- file.path(dirname(rstudioapi::getSourceEditorContext()$path),'index.markdown')
unlink(mdfile) #Remove previously present files.

# Step 2: Download to the folder here..
download.file(url=urlpath, destfile=rmdfile, method='curl')

blogdown::serve_site()

# Step 3: Read contents of mdfile here..
con = file(mdfile, "r+")
res <- readLines(con)

# Step 4: Remove the title lines..
tempdata <- grepl(pattern = '---', res)
tempres <- res
cat('\n removing lines from', which(tempdata)[1], 'to', which(tempdata)[2], 'in markdown file \n')
tempdata[which(tempdata)[1]:which(tempdata)[2]] <- TRUE
tempres <- res[!tempdata]

unlink(rmdfile) #This is to prevent the rmd file from triggering a build again.

tempmetadata <- unlist(strsplit(metadata,"\n" ))

tempcont <- c(tempmetadata,tempres)

writeLines(tempcont, con)

close(con)
