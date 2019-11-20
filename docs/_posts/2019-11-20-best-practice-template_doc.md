---
layout: page
title:  "Best Practice Guide Template"
date:   2017-09-07
categories: tut
order: 2
---

## Introduction
Short paragraph, maybe some background.


---
## Recommendation
what the recommendation is.

---
## Details or examples
how to do it. 


### File and image links
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



