[![Netlify Status](https://api.netlify.com/api/v1/badges/9f348e1d-3d86-46f8-b933-9623f2569436/deploy-status)](https://app.netlify.com/sites/natverse/deploys)

# natverse.github.io

This repo is the source of <https://natverse.github.io/>, and this readme tells you 
how it all works. 

* If you spot any small problems with the website, please feel empowered to fix 
  them directly with a PR generated by editing any of the markdown files at https://github.com/natverse/natverse_hugo.
  
* If you see any larger problems, an [issue](https://github.com/natverse/natverse_hugo/issues/new)
  is probably better: that way we can 
  discuss the problem before you commit any time to it.

* If you'd like to contribute a blog post, please chat with one of us first.
  Then read the [contributing guide](CONTRIBUTING.md).

This repo (and resulting website) is licensed as [CC BY-SA](LICENSE.md).

## Recommended setup for editing the website

If you want to make regular edits to the website then one easy way to do this
is using Rstudio and the blogdown package. First install Rstudio/R as normal.

### Install blogdown/hugo (once only steps)

```
install.packages("blogdown")
# nb this can take some time to complete
blogdown::install_hugo()
```

### Git clone the repository

Use git to clone the repository.

```
# or wherever you would like to clone to
cd ~/dev_pages/
git clone git@github.com:natverse/natverse_hugo.git
```

Please make sure you have checked out the `dev_pages` branch (this is actually the default).

### Serve the site locally 

```
blogdown::serve_site()
```

You can now edit your markdown files in `/content/` and each time you save
the live local preview of the site will be updated.

### Saving your changes

* Check out the git `dev` branch
* Commit each distinct change in git
* Make sure that the site works OK locally (with `blogdown::serve_site()`)

### Update the public site

When you are ready, push your changes (in the `dev_pages` branch) to the remote GitHub repository
and the site will automatically be rebuilt (via the netlify integration). You should ensure
that the `dev_pages` branch has successfully rebuilt. If and only if this has happened, you can
[merge the `dev_pages` branch into the `master` branch](https://github.com/natverse/natverse_hugo/compare/master...dev?expand=1),
which will then trigger a rebuild of the public facing website.

## Acknowledgements

We are extremely grateful to the authors of the following:

  * [Hugo](https://gohugo.io)
  * [blogdown](https://github.com/rstudio/blogdown)
  * [tidyverse.org](https://github.com/tidyverse)
  * [tourmaline hugo theme](https://github.com/rstudio/hugo-tourmaline)
