---
layout: page
title:  "Best Practice guide template"
date:   2017-09-07
categories: bp4bp
---

Page template based on kramdown  
1. Copy this page to a new file with a filename of this form: YYYY-MM-DD-filename-for-html.md
1. edit the "categories" in the top-matter to "bp"
2. add your bp text.


When it is converted by git, it will be under a menu item for "Guides" (other docs based on the category), and have a filename "filename-for-html.html"

This page has examples, and also shows you what how the md is transformed to html. nice. \ 
 https://kramdown.gettalong.org/quickref.html


## Introduction
Short paragraph, maybe some background.


---
## Recommendation
what the recommendation is.

---
## How to or examples
how to do it. 

### File and image links
Example of how to create a link: <a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>.

~~~~
<a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>. 
~~~~~

This example uses HTML, and tildes. Seems to me that tokens should not be replaced in a code block. If they are, look a the source. You can also use markdown shortcuts. see the kramdown quick ref.

Steps
1. commit the file to the files dir
1. create link using site.baseurl


Example of a how to include an image. Same process, use the images dir and site.baseurl:
<img src="{{ site.baseurl }}/images/EDI-logo-svg-240.png" alt="EDI logo" height="80" width="80"/>

~~~
<img src="{{ site.baseurl }}/images/EDI-logo-svg-240.png" alt="EDI logo" height="80" width="80"/>
~~~~

### Code blocks
put code examples in code blocks
~~~~~
simplest way to do a code block is to surround by defined by tildes.
~~
Ending lines must have at least as
many tildes as the starting line. 
~~~~~~~~~~~


Code block with language specified uses backticks:
``` ruby
def what?
  42
end
```



