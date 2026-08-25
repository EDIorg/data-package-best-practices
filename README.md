# Environmental Dataset Preparation Guides (data-package-best-practices)

This repository contains a series of documents about preparing and publishing datasets in the environmental sciences and similar contexts. Topics include community-developed metadata standards, serialization and markup formatting guidelines, and best practices for the content of published research datasets. This documentation is maintained by the [LTER Network](https://lternet.edu) and the [Environmental Data Initiative](https://edirepository.org) (EDI) and all content has been developed and written in collaboration with this community of scientists, data managers, and repository users. Two versions of this content are published online:

* [The current production version](https://ediorg.github.io/data-package-best-practices/), derived from the `main` branch of the repository.
* [A prerelease version](https://prerelease-edi-docs.netlify.app) containing new and in-development documents, derived from the `prerelease` branch.

The guide documents are published as a collection of [Quarto books](https://quarto.org/docs/books). Revisions and additions to these guides will occur using this repository, with periodic release and distribution of copies in print-ready formats (PDF, MS Word). For more on the history of this effort, and archived earlier editions of the guides, see the [History](history.qmd) page.

## Site and repository layout

The rendered site has a landing page, several top-level context pages, and guides or thematic collections of guides that are accessible through a top menubar or sidebar navigation. The content of all guides are written as Quarto markdown documents (`.qmd` files) that are organized into a subdirectory for each guide or collection. The Quarto search function makes it easy to find things that are not exposed in the navigation system.
 
This repository is structured as shown below:

```
data-package-best-practices/
|-- archive/                    # Older versions of the guides (pdf or markdown)
|-- guide-domain-specific/      # Domain-specific guides collection
|-- guide-eml-bp/               # EML Best Practices guide
│-- guide-special-cases/        # Data Package Design for Special Cases (NonTab)
|-- img/                        # Images used in the site 
|-- _publish.yml                # Publishing configs (for prerelease only)
|-- _quarto.yml                 # Quarto configs (format, navigation, etc.)
|-- about.qmd                   # About page
|-- contributing.qmd            # Contributing page
|-- history.qmd                 # History page
|-- index.qmd                   # Landing page layout and content
|-- Makefile                    # Makefile for rendering pdf/docx books
|-- README.md                   # This file
`-- references.bib              # A BibTex file with references cited
```

## Contributing

The maintenance of this website and documentation it contains is coordinated by EDI, with major revisions and new contributions developed and approved through a community-oriented process. We welcome community contributions of any size, but for significant new content or revisions to existing guides we recommend first contacting the maintainers and working group leads listed on the [About](about.qmd) page, or reaching out to EDI at [info@edirepository.org](mailto:info@edirepository.org>). Community working groups periodically convene to develop and draft changes to the guides, and getting involved in one of these efforts, or proposing your own, may be the best way to make big contributions.

Depending on the scale and who is involved, the path to contributing can vary. Below we describe our repository and several methods you or your group can use to contribute. 

### The repository

All website content and guides are stored in a [GitHub repository](https://github.com/ediorg/data-package-best-practices) and the revision process for the content is generally handled there through the publication stage. The repository has several branches, described below.

* **main**: The `main` branch holds the current production version of the documents, which are published in website format, using GitHub Pages, under the "EDIorg" organization. All content in this branch has generally been edited and approved by the community, but the branch is not open to direct contributions from anyone but the project maintainers (no push access). 
* **prerelease**: The `prerelease` branch contains the in-development, "next version" of the documents that have been submitted by, or are under review by the community. Documents in this branch are published in website format to Netlify. After a community-based review and approval process, the maintainers merge new or edited content into the `main` branch. Some contributors, particularly those involved in  community working groups, can request permission to push changes directly to the `prerelease` branch.
* **feature** or **content** branches: These may exist during the early development of new features or drafting of content. They will first be merged into the `prerelease` branch and are not currently published in website form.

### Contributing changes

The guides and other website content you find here are written in a variant of Markdown, and saved as `.qmd` files. These `.qmd` files are rendered by the [Quarto documentation system](https://quarto.org) to create the guides in HTML (this website) and other useful formats including PDF and MS Word. To contribute new content, or edits to existing documents, we recommend using one of the three pathways described below.

#### 1. File a GitHub issue

To suggest changes to the content or the website you may [file an issue](https://github.com/EDIorg/data-package-best-practices/issues/new/choose) in the GitHub repository outlining your proposed changes. **Please be descriptive about your issue and, for content revisions, reference the specific guide, chapter, and section you are referring to.** Filing an issue begins a conversation with the maintainers and others in the community about whether and how to implement changes to the documents or website. For some types of issues (new content, extensive revisions) you may be invited to draft the contribution using one of the two other methods below.

**This method is best for:** 

- Smaller content contributions (typos, broken links, minor revisions)
- New or external contributors not involved in working groups or site maintenance
- Technical issues (not content-related) like document rendering or website navigation problems

#### 2. Submit a pull request

You can contribute new content, or draft revisions to existing content, by submitting a pull request to the `prerelease` branch of the GitHub repository. In this case, a pull request will generally contain new `.qmd` files or edits to the ones already in the repository, so the process begins with you "cloning" or "forking" the repository (see the [GitHub docs](https://docs.github.com/en/pull-requests/how-tos/create-pull-requests/creating-a-pull-request) first) so you can draft the new or revised content. Follow the [Quarto authoring guide](https://quarto.org/docs/guide/) for information on how use the Quarto variant of markdown, and when you are ready to submit the pull request, follow this [GitHub tutorial](https://github.blog/developer-skills/github/beginners-guide-to-github-creating-a-pull-request/) for some simple instructions and links to more resources. Maintainers will review the changes before merging them into the `prerelease` branch for further community input.

**This method is best for:** 

- Large content, layout, or technical changes (chapter revisions, website restructuring)
- Technically-savvy groups or contributors (or the technical lead of a working group)

#### 3. Use a MS Word or Google document

For extensive editing of the guides, or editing in collaborative teams, it may be useful to export documents into a word-processor format (MS Word or Google Docs) and manage group contributions and feedback there. This is often the approach taken by community working groups who have significant revisions to make, or are developing all-new chapters or guides. Most guides on this website, including the [EML Best Practices](guide-eml-bp/index.qmd) and [Design for Special Cases](guide-special-cases/index.qmd) guides, have an MS Word (`.docx`) formatted version already available, just **look for the link in the upper right corner of the guide's web pages** to download it.

Once a Word-formatted guide is downloaded, we recommend enabling the track changes feature as edits are made by collaborators. Google Docs has fairly advanced features for collaborative writing, most of which can be used with MS Word documents that are uploaded into a Google Drive. Converting to a native Google Docs format enables more collaboration features. After edits are finished and the document is ready for community review, it must be converted to `.qmd` format. There are some tools available to convert Google or MS Word documents to Markdown, and if you reach out to one of the site maintainers they can provide assistance with conversion and getting the new content into the `prerelease` branch of the repository and website.

**This method is best for:** 

- Larger content contributions (chapter or full-document revisions)
- Groups with mixed technical (GitHub) abilities
- Collaborative revisions where input from a broad community is required

### Review and publication

Once changes are contributed to the `prerelease` branch of the repository using any of the methods above, they can be reviewed by maintainers and the larger community (EDI, LTER Network, EML users, repository communities, etc.). Upon community approval, the maintainers will merge the new changes into the production version of the guides and website (`main` branch) and then published.

Both `main` and `prerelease` branches have GitHub Actions workflows configured to build and deploy their associated website any time new commits are pushed to that branch. The production site, derived from `main`, is published as a GitHub pages site ([Quarto documentation](https://quarto.org/docs/publishing/github-pages.html#github-action)). The prerelease site, derived from the `prerelease` branch, is published to Netlify ([Quarto documentation](https://quarto.org/docs/publishing/netlify.html#github-action)). The GitHub Actions publishing workflow for both branches is specified in the [`.github/workflows/publish.yml`](.github/workflows/publish.yml) file, which was modeled in part on the [Quarto website version](https://github.com/quarto-dev/quarto-web/blob/main/.github/workflows/publish.yml). When changes are pushed to either branch, please verify that the GitHub Action completed and the website and all documents were built as expected.