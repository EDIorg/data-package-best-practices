# About this Site 


## Overview
 DRAFT - DRAFT - DRAFT

This site is book written in **Markdown**, and transformed to HTML with the **bookdown** package  

The **bookdown** package can be installed from CRAN or Github:

```{r eval=FALSE}
install.packages("bookdown")
# or the development version
# devtools::install_github("rstudio/bookdown")
```

It is based on the _sample_ from  https://bookdown.org/yihui/rmarkdown/bookdown-start.html

## Guidelines and requirmements
- Each Rmd file contains one and only one chapter, and a chapter is defined by the first-level heading `#`.
- To compile the PDF, you need XeLaTeX. Install TinyTeX (which includes XeLaTeX): <https://yihui.name/tinytex/>.
- site is served from the docs directory as gh-pages.

## Steps (details TBD)
1. edit markdown
1. review in master branch, e.g. by BP committee or other
1. build book(s) - output sent to docs
1. add-commit-push (docs)



## Other stuff you might need. also notes. some to be dropped
- how to pandoc
- how to handle citations with bib
- how to handle the left menu 
  - within books
  - index page does not have to be a book

- how to drop numbering! 
  - this: `## Metadata concept {-}`
  - or even this: `# {-}`
  - it might be a hack. if so, advise on better way.


- the search function (in header) only works once files are on a server. To preview drafts, use serve_book (if installed) or generate thru an Rproject. 


- To create a bib database for R packages

```{r include=TRUE}
# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), 'bookdown', 'knitr', 'rmarkdown'
), 'packages.bib')
```

