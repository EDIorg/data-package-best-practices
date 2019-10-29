# EML archive 

Dir holds older versions of EML best practices.  Originated with LTER working group.

## Files: 
### Version 2
* emlbestpractices-2.0-DRAFT_20110627.docx
* emlbestpractices-2.0-DRAFT_20110627.pdf
* eml_bp_2011.markdown
* eml_bp_by_element.md

#### Notes:


1. eml_bp_by_element.md - draft of the entire doc, from which individual sections could be built. This project has been shelved for now, due to technical and time constraints.
1. first generation output markdown output was created from the docx version using pandoc:  

```
 pandoc -f docx -t markdown emlbestpractices-2.0-DRAFT_20110627.docx -o   eml_bp_2011.markdown
```
