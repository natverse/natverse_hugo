---
title: install natverse packages
author: Gregory Jefferis
---

## Installation and use

* Install all the packages in the natverse by running:
  ```
  if(!requireNamespace('remotes')) install.packages('remotes')
  remotes::install_github("natverse/natverse")
  ```
* Run 
  ```
  library(natverse)
  ```
  to load the core natverse and make it available in your current R session.
  You can check everything is working with some simple plots:
  
  ```
  # plot some test data (?kcs20 for details)
  # Drosophila Kenyon cells processed from raw data at http://flycircuit.tw
  head(kcs20)
  open3d()
  plot3d(kcs20, col=type)
  # get help
  ?nat
  ```
Learn more about the natverse package at <https://natverse.github.io/>.

## Troubleshooting

If you have any installation issues, some general tips:

* make sure that you have started a clean R session
* make sure that you have recent R (>=3.6.0 recommended, R>=3.3.0 at a minimum)
* try updating installed packages (`update.packages(ask=F)` will update everything)

Still no luck?

* most install issues will be general R issues rather than anything
  specific to the natverse, so Google is your friend.
* Search the [nat-user google group](https://groups.google.com/forum/#!forum/nat-user).
* Come and ask for help at the [nat-user google group](https://groups.google.com/forum/#!forum/nat-user).
