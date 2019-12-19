#!/usr/bin/env  Rscript

# script creates and archives a PDF of the EML BP doc, using a user-supplied filename.

# Typically, this will be when enough changes have accumulated that an 'official' version
# is warranted, eg, EML BP doc, version 4.

# render the current markdown files as a PDF (using _bookdown.yml):
# and save as a PDF in the archive directory
# note that this command does NOT use the _output.yml at all.

# debugging
# options(tinytex.verbose = TRUE)

# bookdown::render_book('index.Rmd', 'bookdown::pdf_book', output_dir = '.')
bookdown::render_book('index.Rmd', 'bookdown::pdf_book')

# rename the file:
# bookdown does not let me control the name of the output file (one of the many 'conventions'?). 
# and - for some R-specific reason, I have to process the command line args after
# running bookdown! Perhaps bookdown needs a clean session? which includes  
# cleaning out any variables I create? however, it still has access to the args array.
# I need a R-expert.
# also note: sometimes the arg includes a space at the beginning of the string. 
# figure that one out. - see issue #25. it also runs fine if comment out the bookdown command.

args = commandArgs(trailingOnly = TRUE)
output_filename <- args[1]
print(paste('saving to output to ', output_filename) )

# copy the pdf output to the name specified in the command line. 
# working LaTeX file and log are left in working dir
file.copy("EML-BP-doc.pdf", paste("../archive/test2/", output_filename))
