# Nicole Brewer's CV

I'm a long-time fan of @posquit0 's Awesome-CV, and I have thought about templating it in the past. I'm glad I found [vitae](https://pkg.mitchelloharawild.com/vitae/index.html), which has done the hard work for me. Dealing with LaTeX isn't required: this package simplifies CV creation and maintenance with R Markdown. It also allows for easy automation and updates to entries with libraries that can pull information from [ORCID, Google Scholar, and more](https://pkg.mitchelloharawild.com/vitae/articles/data.html). 

## Development Environment

### Local Editor

You may have a favorite text editor or IDE that you use to make quick changes. You can do this with RStudio, vim, emacs, Atom, or your favorite IDE. Simply edit some text in cv.Rmd, commit, and push the changes. This repository uses GitHub Actions to render the output PDF for you. Click on the "Actions" tab in your repository to check that your commit has run properly and without errors.

### Dedicated Development Environment

Other times, you may want to make more extensive changes and preview them before making a commit. Instead of developing from a local instance of RStudio, this repository also creates a Docker image that runs an RStudio Server. This means you can use RStudio in your browser, even when you don't have it installed locally on your own machine. It comes with all the packages you need to edit cv.Rmd and render cv.PDF using R Markdown.

To get started, open a terminal and change directories to this repository. 

```bash
$ cd <path>/<to>/cv
```

Make sure you have Docker installed, then run...

```bash
 docker run --rm -ti -p 8787:8787  -v "$(pwd)":/home/rstudio/ brewer36/r-vitae
```

This will start an instance of RStudio Server. There will be a printed message that tells you your password. To get to the login page, visit localhost:8787 in a browser. Use the given password with the username "rstudio" to login to the RStudio Server.

If you click on the "workspace" directory in the "Files" pane, you will see all of your repository files are present. They are [mounted with a volume](https://rocker-project.org/use/shared_volumes.html#bind-mounts) so any changes you make will persist after shutting down the Docker container. From here, you can edit your files and use the `rmarkdown::render('cv.Rmd')` command to render cv.PDF.
