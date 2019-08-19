---
title: Contribute to the natverse
---

We want the natverse to expand. No matter your current skills it's possible to contribute to the natverse by adding your own code, reporting bugs, requesting features and giving us your feedback. We are all ears, and we are keen to make the natverse easier to use as well as expanding its capabilities, and improving interaction with other toolkits / languages.

## Show and tell {#show}

Get in touch and let us know if these tools have been useful, and what you have used them for! We are always super interested to see our tools used by others. If you use [twitter](https://twitter.com), you can mention [@gsxej](https://twitter.com/gsxej) and [@as_bates](https://twitter.com/as_bates) in a tweet. Alternatively,
you can write the [nat-user](https://groups.google.com/forum/#!forum/nat-user) group with your use case.

If you have some nice code, it would be great if you could make a pull request for the appropriate package. You could add an example to
the documentation for a function or make a short [vignette](http://r-pkgs.had.co.nz/vignettes.html) in [R Markdown](https://rmarkdown.rstudio.com/). We can even add you example to the
natverse [Gallery](/gallery/) help inspire others.

## Cite our papers {#cite}

Citing appropriate papers is a key way to support the natverse. As usual
citations are the general currency of academic credit and the best way to
justify ongoing support of the natverse. Don't worry though, natverse
development is currently well supported by core funding from the Medical Research Council as well as grant support from ERC and the Wellcome Trust.

You can extract a generic citation for each package like so:
```
citation('nat.nblast')
citation('flycircuit')
```
If unsure, please contact the [nat-user](https://groups.google.com/forum/#!forum/nat-user) group.

## Answer community questions {#answers}

The simplest way to help out is to answer questions posed by our user community. We are trying to this, but you might get there first, and it would be great if you could pay forward any help received! We have an active [nat-user](https://groups.google.com/forum/#!forum/nat-user) Google group.

## File issues {#issues}

If you think you've found a bug, first create a minimal, [reproducible example](https://stackoverflow.com/help/minimal-reproducible-example)
Then file it on the GitHub repo of the appropriate package or add to the [nat-user](https://groups.google.com/forum/#!forum/nat-user) Google forum. For example, for nat, you could create an  issue [here](https://github.com/natverse/nat/issues). See the [help](/help/) page for more details.

## Contribute documentation {#docs}

Anyone with a GitHub account can help improve our documentation.
We have worked hard to ensure that all the functions in our packages have
up to date documentation; many also have examples and there are also
a number of longer form articles/vignettes. However, if you see a typo, bug, missing cross-reference, opportunity to add an example, or anything else that could be improved in this documentation, then we would be delighted if you make a suggestion.

Each page in the online documentation includes a
link at the top of the form `Source: R/neuron-io.R`. Clicking on this takes you to GitHub where you can then edit the source code. If you do this, you
will automatically make a [pull request](https://help.github.com/en/articles/about-pull-requests)
that will invite us to incorporate your edits.

## Contribute code to an existing package {#bugs}

If you are a middling-to-experienced programmer, you might want to pitch in with R package development. Before you do a pull request, best practice would be to file an issue and make sure someone from our team agrees that it's a problem and you have a good solution. When it comes to how you should write your code, a great place to look is the [tidyverse style guide](http://style.tidyverse.org/).

## Contribute new packages and libraries to the natverse {#new}

If you are an experienced programmer, you might want to contribute your own R packages, or a library in a different programming language to the natverse project! Good ideas include:

* talking to new, remote data repositories we have missed
* adding a new analysis capability to the natverse
* linking natverse functionality to other programming language
  * for example by using [MATLAB R-Link](https://www.mathworks.com/matlabcentral/fileexchange/5051-matlab-r-link)
* improving integration of the natverse with other analysis suites e.g.
  * [TREES toolbox](https://www.treestoolbox.org/)
  * Philipp Schlegel's Python 3 library [NAVis](https://github.com/schlegelp/navis) is a great example of expanding the natverse mentality into another programming language.

The easiest way to contribute large amounts of code to the natverse is as an [R package](http://r-pkgs.had.co.nz/). R packages are discrete bundles of code. It is preferable to develop logically related sets of functions as separate packages because this simplifies development, ease troubleshooting and divides the natverse into units within which users can search for the more specific code examples or functions that they want.

If you would like to contribute a large amount of new code to the project, get in touch with [Gregory Jefferis](https://www2.mrc-lmb.cam.ac.uk/group-leaders/h-to-m/gregory-jefferis/).
