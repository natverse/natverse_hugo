---
title: Getting started
author: Gregory Jefferis
---

## Installation

The natverse runs on top of R. If you have never installed R see the First time
install and Step by Step illustrated guide at the bottom of this page.

### Basic Install
Install core natverse packages to get started by doing
```
install.packages("natmanager")
natmanager::install('core')
```

### Full Install
Install all the packages in the natverse by running:
```
install.packages("natmanager")
natmanager::install('natverse')
```

You may be prompted to make a GitHub account and personal access token 
(GITHUB_PAT) if you have not done this previously. See the [Step by Step Installation Guide](#step-by-step-installation-guide)

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

* Start a clean R session
* Start a clean R session if you had to update natmanager
* make sure that you have recent R (>=3.6.0 recommended, R>=3.3.0 at a minimum)
* try updating installed packages (`update.packages(ask=F)` will update everything)

Still no luck?

* most install issues will be general R issues rather than anything
  specific to the natverse, so Google is your friend.
* Search the [nat-user google group](https://groups.google.com/forum/#!forum/nat-user).
* ... or use it to ask for help.

## First time install - Prerequisites
To install this package you need to have `R` and `RStudio` installed. Detailed instructions for each operating system are given below. You will also need a valid GitHub account to install the full suite of natverse packages, see  [Usage](#usage)

### Mac OS X
1. Install `R` from here:
[r-installation](http://cloud.r-project.org/bin/macosx/)


2. Install `RStudio`, from here:
[RStudio-installation](https://rstudio.com/products/rstudio/download/#download)


3. Start `RStudio` from Launchpad

### Windows
1. Install `R` from here:
[r-installation](http://cloud.r-project.org/bin/windows/base/)


2. Install `RStudio`, for Windows from here:
[RStudio-installation](https://rstudio.com/products/rstudio/download/#download)


3. Start `RStudio` from Programs menu

### Linux (Ubuntu)
1. Install `R`, in terminal type below:
```{r, engine = 'bash', eval = FALSE}
sudo apt-get install libopenblas-base r-base
```


2. Install `RStudio`, in terminal type below:
```{r, engine = 'bash', eval = FALSE}
sudo apt-get install gdebi
cd ~/Downloads
wget https://download1.rstudio.org/rstudio-xenial-1.1.419-amd64.deb
sudo gdebi rstudio-xenial-1.1.419-amd64.deb
```


3. Start `RStudio`, in terminal type below:
```{r, engine = 'bash', eval = FALSE}
rstudio
```

## Step by Step Installation Guide

![](/images/installation_images/Step_0_mod.png)
![](/images/installation_images/Step_1_mod.png)
![](/images/installation_images/Step_2_mod.png)
![](/images/installation_images/Step_3a_mod.png)
![](/images/installation_images/Step_3b_mod.png)
![](/images/installation_images/Step_3c_mod.png)
![](/images/installation_images/Step_4_mod.png)
![](/images/installation_images/Step_5_mod.png)
![](/images/installation_images/Step_6_mod.png)
![](/images/installation_images/Step_7_mod.png)

