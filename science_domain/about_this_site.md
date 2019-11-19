# About this Site {-}


## Overview

 DRAFT - DRAFT - DRAFT

This site is book written in **Markdown**, and transformed to HTML with the **R bookdown** package. Original pages can be found at https://github.com/EDIorg/data-package-best-practices, and the site is served from the docs directory as gh-pages.

## Requirements
### Bookdown 
The **bookdown** package can be installed from CRAN or Github:

```{r eval=FALSE}
install.packages("bookdown")
# or the development version
# devtools::install_github("rstudio/bookdown")
```

It is based on the _sample_ from  https://bookdown.org/yihui/rmarkdown/bookdown-start.html

### TinyTeX
To compile the PDF, you need XeLaTeX. Install TinyTeX (which includes XeLaTeX): <https://yihui.name/tinytex/>.


## Guidelines
- Chapters are defined by the the presence of first-level heading `#`. 
- Each Rmd or md file contains one chapter 
- the search function (in header) only works once files are on a server. it searches both text and code blocks. 

## Steps (details TBD)
1. edit markdown (tbd: in a fork-PR? branch?)
1. review, e.g. by BP committee or other, accept changes 
1. build book(s) - output sent to docs
  1. TBD: single script.
1. add-commit-push (originals and docs)
1. TBD: need guidelines for when a PDF is warranted (fixed doc was requested for EML section, maybe others)



## Other stuff you might need. also notes. some to be dropped
- how to pandoc ?
- how to handle citations with bib
- how to handle the left menu 
  - within books
  - index page does not have to be a book

- how to drop numbering! 
  - this: `## Metadata concept {-}`
  - or even this: `# {-}`
  - it might be a hack. if so, advise on better way.

- what happens to files that have only second-level headings `##`  - they become subsections of the chapter loaded just ahead of them (with a top-level heading)


 - the search function (in header) only works once files are on a server. To preview drafts, use serve_book (if installed) or generate thru an Rproject.



- To create a bib database for R packages

```{r include=TRUE}
# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), 'bookdown', 'knitr', 'rmarkdown'
), 'packages.bib')
```

