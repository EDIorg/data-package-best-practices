---
layout: page
title: "About This Site"
category: about
date: 2019-11-20 11:09:18
order: 1
---

## General info about this site.
- Git repository: https://github.com/EDIorg/data-package-best-practices
- iAll pages kept in  markdown
    - served as gh-pages (from the docs dir)
- contributions can be from many (via fork and pull request), moderated by a committee

### Section organization
#### Index section (e.g., this page) 
- based on a fork of http://bruth.github.io/jekyll-docs-template/


#### BP sections 
- generated with bookdown
    - a wrapper for pandoc (R package). 
- Goals:
    - pages can remain in development until they are explicitly posted, e.g., after moderation and build
    - PDF can be generated as needed for citable versions 
        - e.g., "Best Practices for EML metadata, V 4", anticipated in early 2020

## Instructions:
### Index section: tbd


#### To add new pages, e,g., another how-to for the Index, 
1. Add a file to the `/docs/_posts` directory. Since this is blog-based, we follow the convention `YYYY-MM-DD-name-of-post.md`
    1. Option 1: do it manually and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works
    2. Option 2: use the script to generate an empty file with front matter. The advantage of using the script is that it automatically creates a soft link in the `_pages` directory without the date, which makes editing easier. If you want to control order, add the order to the front matter.
  `bash-3.2$ ./bin/jekyll-page "About This Website" tut` 


#### Links
Files are in markdown, which means you can include HTML. 

- link to a file: 
`<a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>`

- link to an image:
<img src="{{ site.baseurl }}/images/EDI-logo-svg-240.png" alt="EDI logo" height="80" width="80"/>
end of img.


Menu navigation is controlled by categories, in page front matter. We are currently using only two navigation sections: 
- `tut`, for BP-templates, how-tos for markdown,  
- `about`, for info on how this website is generated 9this page).

See the `_config.yml` for the nav sections (and other site-wide material)


### BP sections: tbd
To add new material to bookdown sections, see the about : link tbd

    - bookdown for sub-sections, so that they can be reviewd first.


