These files are in markdown because it's a fexible format readable by many browsers, and drafts are easy to view right in git.

However, wordpress does not always treat md properly (or the same way git does). So the interim solution is to convert the markdown to html.  Pandoc is pretty fast for this.

<code>
mcr-office02:webpages mob$ pandoc -f markdown -t html 3a1_eml-bp-doc-index.md -o 3a1_eml-bp-doc-index.html
</code>

The HTML is not included in the git repository, only markdown.

Other hints for working with with md/workpress:
1. you cannot use md code blocks in WP. at all. not even with html. There might be some other type of code block, but I have not found it, and people complain about this in WP a lot.
1. lists should be separated by blank lines from other text (pandoc likes this too - maybe a markdown flavor?)
1. md-style links probaby wont work at all in WP. md uses filenames to link, WP creates a page name for the link. so all the links were added later (in the html).
1. WP seems to ignore commented-out HTML sections. It is ok with commented-out text. So don't try to use this mechanism for future additions and notes. But you can keep these sections in the markdown.

So the process:
1. edit pages in markdown
1. commit markdown to git
1. convert to HTML with pandoc (local)
1. copy HTML page into WP
1. edit HTML in WP (in the raw editor, not wysiwyg!)
    1. links
    1. remove dev sections you would have liked to just comment out
  
Note: So the pages in git are out of sync with the content on the WP site, mainly due to limitations/practices of WP. 




