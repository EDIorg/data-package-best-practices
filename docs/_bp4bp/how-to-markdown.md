---
layout: page
title:  "How to markdown"
date:   2017-09-07
categories: bp4bp
---

Describes markdown format for EDI documentation. Based on Kramdown

This page has examples, and also shows you what how the md is transformed to html. nice. \ 
 https://kramdown.gettalong.org/quickref.html

# Typical Components - headers, sections

# H1 header

## H2 header

### H3 header

### horizontal rules
Insert a horizontal rule with three or more asterisks, dashes or underscores, optionally separated by spaces or tabs, on an otherwise blank line:

* * *

---

  _  _  _  _

---------------



### code block

<pre><code>this is a code block defined by pre and code tags.
</code></pre>

~~~~~
This is a code block defined by tildes.
~~
Ending lines must have at least as
many tildes as the starting line. this code block has 2 imbedded tildes that did not close the block.
~~~~~~~~~~~


code block with language specified is defined by backquotes:

```ruby
def what?
  42
end
```


### nested lists
1. Item one
   1. sub item one
   2. sub item two
   3. sub item three
2. Item two



### File and image links
Example of how to create a link: <a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>.

~~~
<a href="{{ site.baseurl }}/files/966.pdf">link to 966.pdf</a>.
~~~~

This example uses HTML, and tildes. Seems to me that tokens should not be replaced in a code block. If they are, look a the source. You can also use markdown shortcuts. see the kramdown quick ref.

Steps
1. commit the file to the files dir
1. create link using site.baseurl


Example of a how to include an image. Same process, use the images dir and site.baseurl:
<img src="{{ site.baseurl }}/images/EDI-logo-svg-240.png" alt="EDI logo" height="80" width="80"/>

~~
<img src="{{ site.baseurl }}/images/EDI-logo-svg-240.png" alt="EDI logo" height="80" width="80"/>
~~~

### Code blocks
put code examples in code blocks
~~~~
simplest way to do a code block is to surround by defined by tildes.
~
Ending lines must have at least as
many tildes as the starting line.
~~~~~~~~~~


Code block with language specified uses backticks:
``` ruby
def what?
  42
end
```




