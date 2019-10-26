---
col0:
  row1: natverse
  row2: ""
  row3: tidyverse
col2:
  row2: shiny
  row3: ""
  row4: rmarkdown
title: Neuroanatomical data analysis
---

The natverse is a [collection of interoperable R packages](/packages) to import, visualise, analyse, manipulate and export 3D neuroanatomical data, including neurons, brains and brain regions. It has been used to study brain and circuit organisation in species from flies to fish and mice. Install the natverse with:
```
if(!requireNamespace('remotes', quietly=TRUE))
  install.packages('remotes')
remotes::install_github("natverse/natverse", dependencies=TRUE)
```
