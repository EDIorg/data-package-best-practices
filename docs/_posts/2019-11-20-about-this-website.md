---
layout: page
title: "About This Site"
category: about
date: 2019-11-20 11:09:18
order: 1
---

## General
- Git repository: https://github.com/EDIorg/data-package-best-practices
- All pages can be edited in  markdown
    - Served as gh-pages (from the docs dir)
- Contributions can be from many (via fork and pull request), moderated by a committee

### Section organization
#### Index section 
- A very few pages of introductory material (including this page) and a navigation menu 
- Based on a fork of http://bruth.github.io/jekyll-docs-template/
- Changes (after pushed to github) are public immediately

#### BP sections 
- Multiple sections, each composed of multiple pages and moderated by the Best Practicies Committee
- Each section is generated as a separate "book", with bookdown (a wrapper for pandoc, in R)
- Edited pages do not become public until the book is rebuilt
- We use bookdown here to support these goals:
    - Pages can remain in development until they are explicitly posted, e.g., after moderation and built
    - PDFs can be generated as needed for citable versions 
        - e.g., "Best Practices for EML metadata, V 4", anticipated in early 2020

## Instructions
### Index section

#### To add new pages, e,g., a how-to for the Index section, 
1. Add a file to the `/docs/_posts` directory. Since the template is blog-based, we follow the convention `YYYY-MM-DD-name-of-post.md`
    1. Option 1: do it manually and include the necessary front matter. Take a look at the source for this page to see how it works
    2. Option 2: use the script to generate an empty file with front matter. The advantage of using the script is that it automatically creates a soft link in the `_pages` directory without the date, which makes editing easier. If you want to control order, add the order to the front matter. Example:
  `bash-3.2$ ./bin/jekyll-page "About This Website" about` 


#### Links
Files are in markdown, which means you can include HTML. 

- link to a file: 
`<a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>`

- link to an image:
<img src="{{ site.baseurl }}/images/EDI-logo-svg-240.png" alt="EDI logo" height="80" width="80"/>
end of img.


Menu navigation is controlled by categories, labeled in the `_config.yml` and assigned in each page's front matter. We are currently using only two navigation sections: 
- `tut`, for BP-templates, how-tos for markdown,  
- `about`, for info on how this website is generated 9this page).

See the `_config.yml` for the nav sections (and other site-wide material)


### BP sections: 

The major sections of this site are written in **Markdown**, and transformed to HTML with the **R bookdown** package. 

Instructions for using **bookdown** can be found with other information for contributors, under "[Using Bookdown]({{ site.baseurl }}/tut/using-bookdown.html)"



