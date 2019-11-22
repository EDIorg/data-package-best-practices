---
layout: page
title: "Using Bookdown"
category: tut
date: 2019-11-21 09:23:31
order: 4
---



## Overview

 DRAFT - DRAFT - DRAFT

The major sections of this site are written in **Markdown**, and transformed to HTML with the **R bookdown** package. Original pages can be found at https://github.com/EDIorg/data-package-best-practices, and the site is served from the docs directory as gh-pages.

Each section is a bookdown-book, so it is **self-contained**. Using this format has these advantages:
- books can be served through gh-pages
- posting to a webserver (e.g., github;s) is controlled by running a script
- bookdown can also create PDFs for archive or printing

## Requirements
### Bookdown 
The **bookdown** package can be installed from CRAN or Github:

```R
install.packages("bookdown")
# or the development version
# devtools::install_github("rstudio/bookdown")
```

These books are based on the _sample_ from  https://bookdown.org/yihui/rmarkdown/bookdown-start.html

### TinyTeX
To compile the PDF, you need XeLaTeX. Install TinyTeX (which includes XeLaTeX): <https://yihui.name/tinytex/>.


## Guidelines
- Chapters are defined by the the presence of first-level heading `#`. 
- Chapter organization is controlled by a configuration file ( `_bookdown.yml` )
- a navigation menu can be added ( `_output.yml` )
- Each Rmd or md file contains one chapter 
- the search function (in header) only works once files are on a server. it searches both text and code blocks. 

## Steps
1. edit markdown (TBD: via fork-PR? branch?)
1. review, e.g. by BP committee or other
1. accept changes, commit 
1. build book(s) - output sent to docs
   1. TBD: scripts (each, all).
1. add-commit-push (docs)

TBD (as marked, and others): collect these as issues labeled "BP Committee"



## Parking Lot
Other material we might need, e.g. bookdown-specific markdown. Also notes; some likely to be dropped
- pandoc ref - low priority (find a link, maybe)
- how to handle citations with bibtex
- how to handle the left menu 
  - boiler plate  
  - within books
  - numbering 
    - how to drop section from being numbered! 
      - this: `## Metadata concept {-}`
      - or even this: `# {-}`
      - it might be a hack. if so, advise on better way.
    - what happens to files that have only second-level headings `##`
      - they become subsections of the chapter loaded just ahead of them (that has a top-level heading)


- the search function (in header) only works once files are on a server. To preview drafts, use ` serve_book ` (if installed) or generate thru an Rproject.



- To create a bib database for R packages

```R
# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), 'bookdown', 'knitr', 'rmarkdown'
), 'packages.bib')
```


