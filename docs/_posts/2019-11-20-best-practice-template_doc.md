---
layout: page
title:  "Best Practice Guide Template"
date:   2017-09-07
categories: tut
order: 2
---
Title: the title goes into the front matter. This will appear in the nav menu, so keep it short.

## Introduction
Paragraph or two, with background.

### Authors
- name 1
- name 2

---
## Recommendation
what you should do!

---
## Examples
how to do it. 


### File and image links
**These examples use tokens for the site base URL and repository URL. Tokens appear to be replaced in the HTML rendering. To this writer, that is a violation of what a code block should illustrate.**
Be sure to look at the raw example too. Token values are store in the `_config.yml`


Example of how to create a link: <a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>.

~~~~
<a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>. 
~~~~~

- To link to another page in this website:
    - Use the site.baseurl token for the URL head. 
    - add the section and page after the slash.

```html
<a href="{{ site.baseurl }}/EMLmetadata/keywordset-and-keyword.html">link to EML keyword section</a>
```


- To link to smething in the repository archive: 
    - Use the site.codeurl token for the URL head. 
    - add the section and page after the slash.

```html
<a href="{{ site.codeurl }}/master/archive/EML-BP-doc/emlbestpractices_oct2004.pdf">link to EML BP doc 2004 version</a>
```

### Code blocks
Put code examples in code blocks. There are several ways: 

Tildes: You can also use markdown shortcuts. Also see the kramdown quick ref.
~~~~~
simplest way to do a code block is to surround by defined by tildes.
~~
Ending lines must have at least as
many tildes as the starting line. 
~~~~~~~~~~~


Code block with language specified uses backticks:
``` XML
<access authSystem="knb" order="allowFirst" scope="document">
   <allow>
      <principal>uid=FLS,o=lter,dc=ecoinformatics,dc=org</principal>
      <permission>all</permission>
   </allow>
   <allow>
      <principal>public</principal>
      <permission>read</permission>
   </allow>
</access>
```



