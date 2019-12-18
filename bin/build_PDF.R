#!/usr/bin/env  Rscript

# script creates and archives a PDF of the EML BP doc, using a user-supplied filename.

# Typically, this will be when enough changes have accumulated that an 'official' version
# is warranted, eg, EML BP doc, version 4.

# render the current markdown files as a PDF (using _bookdown.yml):
# and saves as a  PDF in the archive directory
# note that this command does NOT use the _output.ywl at all.

# debugging
options(tinytex.verbose = TRUE)
bookdown::render_book('index.Rmd', 'bookdown::pdf_book', output_dir = '../archive/test')

# rename the file:
# bookdown does not let me control the name of the output file (one of the many 'conventions'?). 
# and - for some R-specific reason, I have to process the command line args after
# running bookdown! Perhaps bookdown needs a clean session? which includes  
# cleaning out any variables I create? however, it still has access to the args array.
# I need a R-expert.

args = commandArgs(trailingOnly = TRUE)
output_filename <- args[1]
print(paste('saving to output to ', output_filename) )

setwd("../archive/test")
file.rename("EML-BP-doc.pdf", output_filename)
# file.rename("non_tabular.pdf", output_filename)
