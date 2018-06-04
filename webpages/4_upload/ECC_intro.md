## Introduction
The “quality” of a data package is a reflection of how well it may be used for a specific purpose. The EDI Repository (URL HERE) ingests EML-described datasets for presentation and use for synthesis and workflows. To be useful, data package must include access to data, adequate metadata plus strong agreement between the metadata and data (i.e., congruence). 

The ECC was developed originally by the LTER Network Information Managers Committee (IMC) and adopted by EDI along with other software components (e.g., PASTA). The original working group was formed at the LTER All Scientists Meeting in 2009 at Estes Park
  -  Committee Members: LTER: Margaret O'Brien (chair), Corinna Gries, Emery Boose, Dan Bahauddin, Gastil Gastil-Buhl, Jason Downing, Sven Bohm, James Brunt, Mark Servilla (software desigher/developer), Duane Costa (principal developer). 
  -  Associates: Matt Jones, Mark Shildhauer, Ben Leinfleder, Jing Tao (NCEAS Ecoinformatics programming group).
## What it does
the EML Congruence Checker reports on aspects of data packages submitted to ensure they meet a standard of high quality. As of 2018, 40 checks have been implemented. The report results become part of the data package in the repository. A small number will prevent the dataset being added to the repository; these were carefully chosen to reflect only conditions that will make a dataset unusable under any circumstances. 
## Example
- https://portal.edirepository.org/nis/reportviewer?packageid=edi.140.1
## Check overview 
In addition to basic pass/fail criteria, each check's definition includes categorization according to several features: scope, justification, response behavior, packaging aspect, and priority. Although some typologies simply facilitate organization or communication (e.g., justification, priority), having a specific, granular definition for each check forced contributors to focus on their most salient features and facilitated coding. Checks that would prevent insertion were considered and justified with special care. The high number of checks recorded to date reflects the complexity of datasets submitted, and the granularity allowed by EML metadata.

For details of checks, see [Check overview ](check_overview.md)
## How to 
An XML schema contains the output. Using XML allows output can be transformed for a variety of purposes, e.g., an individual report can be transformed into HTML for web presentation during evaluation of a single data package, or results from a group of reports can be aggregated and statistics computed. 

Two modes: 
- Evaluate: Typically, software for evaluating XML stops at the first error and repeated submissions are required until all errors have been exposed. In the ECC however, at much as possible, all errors be exposed in one run (rather than stopping processing) so that a submitter sees as many problems as possible at once. This feature saves a considerable time. Of course, some errors will prevent future
processing, e.g., if a data-URL does not return a data entity, that entity cannot be examined. Reports from Evaluation mode are
stored for 180 days only.
- Upload:  The Quality Engine halts on the first error, saving processor time. Upon a successful upload, the quality report document is stored permanently as part of the data package (associated via the resource map), and can be accessed and displayed alongside its metadata and data. 

For details of modes and interpreting reports, see [ECC How to](ECC_how_to.md)

## Process for adding checks
## How to get involved - ECC working group (github link)

