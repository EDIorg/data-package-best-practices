These files are in markdown because it's a fexible format readable by many browsers, and drafts are easy to view right in git.

However, wordpress does not always treat md properly (or the same way git does). So the interim solution is to convert the markdown to html.  Pandoc is pretty fast for this.

<code>
mcr-office02:webpages mob$ pandoc -f markdown -t html 3a1_eml-bp-doc-index.md -o 3a1_eml-bp-doc-index.html
</code>

HTML is not included in the git repository, only markdown.

Other hints for working with with md/workpress:
1. you cannot use md code blocks in WP. at all. not even with html.
1. lists should be separated by blank lines (pandoc likes this too - maybe a markdown flavor?)
1. md-style links probaby wont work at all in WP. md uses filenames to link, WP creates a page name for the link. so all the links were added later.




