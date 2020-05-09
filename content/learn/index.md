---
title: Learn the natverse
---

To see some examples of the natverse in action take a look at our
[Gallery](/gallery). Alternatively if you'd rather see some code right away,
then read one of the
introductory [articles](/news). If these look interesting, then we recommend
reading (or at least skimming) the [natverse paper](#natverse-paper) for a more in depth introduction. You can then browse documentation for the
core [nat package](https://natverse.github.io/nat/) and work through some
[example code](https://github.com/jefferis/nat.examples).

---
<a href="https://elifesciences.org/articles/53350"><img src="../images/natverse_manuscript4.png"" align="right" height="300"/></a>
## natverse paper

To understand what the natverse can do and how it is organised, the best
resource is a paper currently available at elife : 
[Bates, Manton et al (2020)](https://elifesciences.org/articles/53350).
This describes all the main natverse packages and how they fit together. It also
provides numerous worked examples based on data from a range of species, including flies, fish and mice.

<div style="clear:both;"></div>

---

## nat documentation
<img src="nat-pkgdown.png" align="right" height="300" />

To get started with some actual code, take a look at the documentation for the 
[**nat** (NeuroAnatomy Toolbox)](https://natverse.github.io/nat) package, which is the core of the natverse:

* Read the [overview package documentation](https://natverse.github.io/nat/reference/nat-package.html)
  (`?nat` in R)
* Read the [Introduction to neurons](https://natverse.github.io/nat/articles/neurons-intro.html) article
  - There are several other useful [articles](https://natverse.github.io/nat/articles).
* Check out the thematically organised [function reference documentation](https://natverse.github.io/nat/reference/). 
  - Most help pages include examples.

There is extensive sample code and data available including:

* [nat.examples](https://github.com/jefferis/nat.examples) has detailed 
  examples for data sets from a range of model organisms and techniques
* [frulhns](https://github.com/jefferis/frulhns) analysis of sexually dimorphic circuits

<div style="clear:both;"></div>

---
## Bridging and Mirroring registrations
<a href="https://www.biorxiv.org/content/10.1101/006353v1?versioned=true"><img src="../images/manton_biorxiv.png"" align="right" height="300" /></a>

We introduced the concept of bridging registrations between template
brains in [Manton et al, bioRxiv, 2014](https://www.biorxiv.org/content/10.1101/006353v1?versioned=true).
This allows a huge amount of neuroanatomical
data from different labs acquired using both light and electron microscopy 
to brought into a common space for shared analysis. The natverse provides
efficient tools to move data from one template brain to another. The original 
version of this paper introduces and motivates our general approach with many examples.
The natverse supports a range of different registration tools and formats 
including thin plate splines, [CMTK](https://www.nitrc.org/projects/cmtk), 
[ANTs](http://stnava.github.io/ANTs/) and the Saalfeld lab's 
[h5 format](https://github.com/saalfeldlab/template-building/wiki/Hdf5-Deformation-fields).

<div style="clear:both;"></div>

---
<a href="http://dx.doi.org/10.1016/j.neuron.2016.06.012"><img src="../images/costa-nblast-scaled-p1clusters.png" align="right" height="300" /></a>
## NBLAST

NBLAST is a fast and sensitive algorithm for comparing neuron structure. It is
described in an open access publication, [Costa et al, Neuron (2016)](http://dx.doi.org/10.1016/j.neuron.2016.06.012). Read the paper
to understand how the algorithm works and to see many examples of its use.

You can also see the [R Markdown](http://rmarkdown.rstudio.com/) reports
used to generate [all the figures for the paper](https://github.com/jefferislab/NBLAST_figures/).


<div style="clear:both;"></div>

---
## Learning R

Naturally you will need to learn some basics of the R language to use the
natverse. There are a huge number of books and online resources now available.
The tidyverse website has some good suggestions, see 
https://www.tidyverse.org/learn/. Resources that we recommend include:

* http://swirlstats.com (an interactive way to get started for complete beginners) 
* https://www.rstudio.com/resources/cheatsheets/ (a quick way to find key functions for data munging tasks)
* http://adv-r.had.co.nz (chapters 1-7 are a good investment if you plan to spend much time in R)
