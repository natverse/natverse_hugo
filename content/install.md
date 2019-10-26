---
title: Getting started
author: Gregory Jefferis
---

## Install
Install all the packages in the natverse by running:
```
if(!requireNamespace('remotes', quietly=TRUE)) {install.packages('remotes')}
remotes::install_github("natverse/natverse", dependencies=TRUE)
```
## Run
To load the core natverse and make it available in your current R session:
```
library(natverse)
```
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
To find our more, explore our resources for [learning the natverse](learn/).
  
## Update
To update all natverse packages (and their dependencies):

```
library(natverse)
# see what needs updating
natverse_update()
# actually update
natverse_update(update = TRUE)
# ... or if you don't want to answer any yes/no questions
natverse_update(update = TRUE, upgrade='always')
```


## Troubleshooting

If you have any installation issues, some general tips:

* make sure that you have started a clean R session
* make sure that you have recent R (>=3.6.0 recommended, R>=3.3.0 at a minimum)
* try updating installed packages (`update.packages(ask=F)` will update everything)

Still no luck?

* most install issues will be general R issues rather than anything
  specific to the natverse, so Google is your friend.
* Search the [nat-user google group](https://groups.google.com/forum/#!forum/nat-user).
* ... or use it to ask for help.
