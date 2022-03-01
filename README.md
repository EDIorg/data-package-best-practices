This is a refactored version of the EDI Data Package Best Practices documentation.

To view the rendered version: https://kzollove.github.io/data-package-best-practices/

Please feel free to comment on this refactored version by opening a repo issue

Everything below is from the original README:

# data-package-best-practices

This repository was initiated in late 2019, after EML 2.2 release.  It holds best practices recommendations related to data packages, written by the community of data managers who contributed to the EDI repository. The public-facing view is organized as gitbooks, which are comitted from a local checkout *when ready* (ie, edits to pages do not automatically become public). Individual gitbooks can be versioned and archived as PDFs.


## Background
- The first "BPs" (and the origins of this collection) were focused on the use of the EML metadata schema, and created by the LTER data managers [version 1 EML BP, 2005](link here, in archive dir). 
- Over time, that document was expanded to include specifics about data types and practices of the LTER related to the then-nascent PASTA system [version 2 EML BP, 2012?](link here, in archive dir).  
- As these recommendations for practice continue to grow, [EDI](https://environmentaldatainitiative.org) (established in 2016) 
  - revised the EML BP to general material about use of the EML spec [version 3 EML BP, 2017](link here, in archive dir), which became the basis of the metadata section 
  - created this repository to house that and other data package recommendations as gh-pages.
  
## Organization
There are several axes of organization anticipated, below, with examples. All are likely to link out to other help docs.

- Metadata concepts that apply to most or all scientific domains. Including but not limited to: 
  - creators
  - keywords
  - geoCoverage 
  - taxonCoverage
  - temporalCoverage
  - annotation
  - project
  - methods
  - data entities
  - citations of papers (in a data package)
  
- Scientific domain 
  - community survey data
  - meteorology/hydrology data
  - genomics and metagenomics
  
- General "Data Package Design", including challenging data types, organized by acquisition method or platform (multiple scientific domains) 
  - offline data
  - key-value pair tables (long vs. wide)
  - model output
  - drone-collected
  - photo imagery
  - acoustics



## What this repository does not contain
This git repository/website is not intended to be your only resource for data management. This repository's focus is "data packages", and of course other aspects of data and information management overlap with that. Many other tools exist, and have their own repositories and help-pages. See EDI's [5 phases of data publication](https://github.com/EDIorg/five_phases_DM) for informatation and links to resources related to:
- how to interact with the EDI repository and portal (PASTA)
- how to interpret congruence checker messages (ECC)
- broader topics, e.g., 
  - handling bibliographic resouces
  - finding and using all-in-one solutions such as DEIMS, GCE-toolbox
  - back-end databases such as LTER-metabase


## Anticipated workflow 
Details are being worked out. A workflow such as the below allows for review of drafts, with a public-facing view created after that review. It also allows for some sections to be exposed as citable PDFs if necessary (e.g., for the EML BP doc). To be determined are editing practices such as use of branches, fork+PR, and guidelines for when a PDF version is warranted.
1. edit markdown
1. add-commit-push raw markdown (or issue a pull request)
1. review the changes, e.g. by a working group or external committee
1. build book(s), using scripts which export to `/docs`
1. optional: create PDF of book(s)
1. add-commit-push `/docs`
