# EML 

Dir holds files on EML best practices.  Originated with LTER working group.

## Active:
top level holds active files. Generally, this is 
* a word doc, which will be distributed as a PDF 
* examples, which most likely will stay here, and be linked from the PDF distribution page on the EDI website.
* index.md - draft of the PDF distribution page. 


## Archive: 
* old versions of the doc, from 2004 and 2010 
* version 2 in markdown, and partially edited. project is currently-shelved.


## Notes on migrating from Word to markdown:

For compiling to PDF from markdown (tested on Windows):
1. Install Python and then enter this in a command prompt: `pip install grip`
2. In a command prompt, enter `grip your-filename.md`. This runs a local server to display the markdown rendered as HTML.
3. Use Chrome's **Save as PDF** option from the Print menu to save the result to PDF.
