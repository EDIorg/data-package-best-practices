---
layout: page
title: "Using Bookdown"
category: tut
date: 2019-11-21 09:23:31
order: 4
---



## Overview

 DRAFT - DRAFT - DRAFT

The major sections of this site are written in **Markdown**, and transformed to HTML with the **R bookdown** package. Original pages can be found in subdirectories of this repository: https://github.com/EDIorg/data-package-best-practices, and the entire site is served from the docs directory as gh-pages.

Each section is a bookdown-book, so it is **self-contained**. Using this format has these advantages:
- books can be served through gh-pages
- posting to a webserver (e.g., github's) is controlled by running a script
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

## Website organization
This website has three (3) books, each one has a directory
### EML-BP-docs
### scientific_domain
### non_tablular_data


## General Guidelines (for a single book)
- Chapters are defined by the the presence of first-level heading `#`. 
- Chapter organization is controlled by a configuration file ( `_bookdown.yml` )
- a navigation menu can be added ( `_output.yml` )
- Each Rmd or md file contains one chapter 
- the search function (in header) only works once files are on a server. it searches both text and code blocks, but only within a single book. 

## Steps to edit a book page
This section is a work in progress, as some of the process are still TBD, which are for a Best Practices Committee to decide. See the repo (https://github.com/EDIorg/data-package-best-practices/issues), issues labeled "BP Committee"
1. edit markdown (TBD: via fork-PR? branch?)
1. review, e.g. by BP committee or other
1. accept changes, commit 
1. build book(s) - output sent to your local docs dir
   1. TBD: scripts (each, all).
1. add-commit-push (docs)



## Cross-book linkages
- All three books are generated to the repository's docs directory, where they live in subdirs alongside the top-level pages (like this one). 
- use relative URLs to link between them. e.g. to link from a page under a *scientific_domain* to a page under ` EML_bp_doc`: `[anchor tag text here](../EML-BP-doc/abstract.html)`
- you can use in-page anchor tags too: `[anchor tag text here](../EML-BP-doc/distribution.html#entity-level)` . Note the convention of separating header words with dashes.


## External Citations (with bibtex)
1. Confirm that there is a References section in the book, and that it is included in the ` _bookdown.yml `. If not see this book: ` EML-BP-doc/ ` for an example to copy.
1. Create entry: Add a bibtex-style entry for the resource you want to cite to the book.bib file in the respective book. 
1. Cite it: in a page, cite like this: `EML schema documentation [@EML_2019]`
   1. The ` [@key] ` syntax means the citation will be enclosed in parens. Without the square brackets, ` @key `, it won't. 
1. Bookdown does the rest: 
   1. inserts the citation into the text in place of the key
   1. creates a References section to the bottom of the *page* containing a formatted entry 
   1. adds formatted entry to the references section at the end of the *book* 
1. See an example at ` EML-BP-doc/index.md `



## Parking Lot
Other material we might need, e.g. bookdown-specific markdown. Also notes; some likely to be dropped
- the bookdown bible: https://bookdown.org/yihui/bookdown/
- pandoc ref - low priority (find a link, maybe)
- how the left menu works
  - what is by-convention, what you can control
  - boiler plate  
  - within books
  - numbering 
    - automatic numbering - how it works (link out)
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


