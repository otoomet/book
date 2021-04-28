# INFO 201: Technical Foundations in Informatics

This repository contains the source code for the **INFO 201: Technical
Foundations in Informatics** course book.  [The published version is
at](https://faculty.washington.edu/otoomet/info201-book/r-markdown.html).
You are welcome to leave feedback and discuss the problems with the
book in the issue pages.

This repo is a fork of
[info201/book](https://github.com/info201/book), I was unhappy with
the publishing at github.io as this forces one to keep intermittend
files under version control and create a huge load of updates and
conflicts each time one wants to merge pull requests or otherwise
update the repo.  This repo is designed to be just copied (_rsync_-ed)
to a webserver as a set of static pages.


## Dependencies

You should be able to install all required R dependencies using [packrat](https://rstudio.github.io/packrat/): simply restart R (e.g., through an interactive session in the terminal) in order to automatically install the required libraries.

- If that doesn't work, you should be able to use the `packrat::restore()` function. You may need to do this through RStudio.

Additionally, you may need to install the following libraries separately:

- [Pandoc](https://github.com/jgm/pandoc/releases/latest) (for compiling the R-Markdown). But you may just need to [specify the path](https://stackoverflow.com/questions/28432607/pandoc-version-1-12-3-or-higher-is-required-and-was-not-found-r-shiny/29710643#29710643).

- LaTeX for building to `pdf` ([MiKTeX](https://miktex.org/) for Windows, [MacTex](https://www.tug.org/mactex/) on Mac).

## Building the Book

You can use the included [`Makefile`](https://en.wikipedia.org/wiki/Makefile) to build the book:

- **`make book`** to build the HTML version of the book (the output is
  saved in the saved in the repository's root folder).  It is
  essentially a call to `bookdown::render_book`.

- **`make pdf`** to build the PDF version of the book.

- **`make all`** to build all versions of the book.

- **`make serve`** to serve a local copy of the book for development (with auto-refreshing browser).

- **`make deploy`** to publish the built book to `https://info201.github.io`.

Consult the makefile for more information.
