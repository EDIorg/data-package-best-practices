# Dataset Preparation Guides for the EDI Community

This repository contains a series of documents about preparing and publishing datasets in the environmental sciences and similar contexts. Topics include community-developed metadata standards, serialization and markup formatting guidelines, and best practices for the content of published research datasets. This documentation is maintained by the [Environmental Data Initiative](https://edirepository.org) (EDI) and all content has been developed and written in collaboration with EDI's community of scientists, data managers, and repository users. Two versions of this content are published online:

* [A current production version](https://ediorg.github.io/dataset_preparation_guides/), derived from the `main` branch of the repository.
* [A prerelease version](https://prerelease-edi-docs.netlify.app) containing new and in-development documents, derived from the `prerelease` branch.

**NOTE: Content in the current production version was originally taken from EDI's [*Data Package Best Practices*](https://ediorg.github.io/data-package-best-practices/) site ([repo](https://github.com/EDIorg/data-package-best-practices))**

The guide documents are published as a collection of [Quarto books](https://quarto.org/docs/books). Revisions and additions to these guides will occur using this repository, with periodic release and distribution of copies in print-ready formats (PDF, MS Word). For more on the history of this effort, and archived earlier editions of the guides, see the [History](history.qmd) page.

# Contributing

The maintenance of this repository and development of the included documents is coordinated by EDI, with major updates and new content developed and approved through a community-oriented process. If you would like to help develop these documents please contact the maintainers and working group leads listed on the [About](about.qmd) page, or reach out to EDI at [info@edirepository.org](mailto:info@edirepository.org>). Some details on how contribution works are below.

## Branches

* **main**: The `main` branch holds the current production version of the documents. Documents in this branch have generally been edited and approved by the community. They are published in website format with GitHub Pages, under the "EDIorg" organization.
* **prerelease**: The `prerelease` branch contains the in-development, "next version" of the documents. These documents contain new content or changes submitted by, or under review by the community. Documents in this branch are published in website format to Netlify. After a review and approval process changes may be merged into `main`.
* **feature** or **content** branches: These may exist during the early development of new features or drafting of content. They will first be merged into the `prerelease` branch and they are not currently published in website form.

## Contributing changes

The guide documents and most website content are written in Quarto markdown, a variant of `pandoc` markdown, and saved as `.qmd` files. See the [Quarto guide](https://quarto.org/docs/guide/) for information on how to author `.qmd` files. New content, or edits to existing documents, can be contributed in several possible ways:

1. To suggest a change you may [file an issue](https://github.com/EDIorg/dataset_preparation_guides/issues/new/choose) in the GitHub repository outlining your proposed changes. This will begin a conversation with the maintainers and others in the community about whether and how to implement changes to the documents or website. You may be invited to draft the content changes (see the next item).
2. If you are ready to create a draft of the changes yourself, new `.qmd` files or edits to existing pages may be submitted as a pull request to the `prerelease` branch. See this [GitHub tutorial](https://github.blog/developer-skills/github/beginners-guide-to-github-creating-a-pull-request/) for some simple instructions and links to more resources. Maintainers will review the changes before merging them into the `prerelease` branch for further community input.
3. In some cases, particularly if you are involved in a community working group, you may request permission to push changes directly to the `prerelease` branch. If you think this would be the best way to contribute your changes please contact the maintainers listed in the [About](about.qmd) page or <info@edirepository.org>. 
4. Periodically, community working groups convene to develop and draft changes to these guides, and much of the writing, revising, and editing process takes place in formats outside this repository (Word or Google Docs). To get involved in one of these efforts and contribute changes that way, see the [About](about.qmd) page and contact working group leads, or propose your own working group to the community.

Once changes are moved into the `prerelease` branch, they will be reviewed by the the larger community (EDI, LTER Network, EML users, repository communities, etc.) and approved (or not) for inclusion in the production documents (`main` branch).

## Publishing workflow

Both `main` and `prerelease` branches have GitHub Actions workflows configured to build and deploy their associated website any time new commits are pushed to that branch. The production site, derived from `main`, is published as a GitHub pages site ([Quarto documentation](https://quarto.org/docs/publishing/github-pages.html#github-action)). The prerelease site, derived from the `prerelease` branch, is published to Netlify ([Quarto documentation](https://quarto.org/docs/publishing/netlify.html#github-action)). The GitHub Actions publishing workflow for both branches is specified in the [`.github/workflows/publish.yml`](.github/workflows/publish.yml) file, which was modeled in part on the [Quarto website version](https://github.com/quarto-dev/quarto-web/blob/main/.github/workflows/publish.yml). When changes are pushed to either branch, please verify that the GitHub action completed and the website and all documents were built as expected.


