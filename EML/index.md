# DRAFT Best Practices for Metadata in Ecological Metadata Language (EML)

This is the index page. so it needs a ToC
* [Introduction](#introduction)
    * link to BP doc, v 3
* [General Recommendations](#general-recommendations)
* [Other Resources](#other-resources)
    * previous revisions
    *  glossary
    *  dataset design 
*  [Timeline](#timeline)


## <a name="introduction"></a>Introduction

[Best Practices for Metadata in Ecological Metadata Language (EML Best Practices V3). 2017. Environmental Data Initiative. (linkable citation)](http://link/here.)

The above document contains current "Best Practice" recommendations for EML content for ecological and environmental data. It is intended to augment the EML schema documentation (normative documents) for a less technical audience. The current version (v3, 2017) is one component of several resources available to EML constructors, and related resources are listed at the bottom of this page. The recommendations are directed towards the following goals:
- Provide guidance and clarification in the implementation of EML for     datasets
- Minimize heterogeneity of EML documents to simplify development and re-use of software built to ingest it
- Maximize interoperability of EML documents to facilitate data synthesis

EML Best Practice recommendations have evolved over time. The most active contributors have been members of the LTER Information Manager's Committee during multiple working groups (see [Timeline](#timeline). EML has been widely used for several years with multiple applications written against it, and the community has had the opportunity to observe the consequences of many content patterns. As much as possible, recommendations have been aligned with the capability of dataset contributors, as well as with those experiences. 

At time of this document's publication (Autumn 2017), the version of EML currently in production was EML.2.1.1. EML 2.2.0 is anticipated within the next year. Contact <a mailto="info@environmentalDataInitiative.org"><EDI/a> for more information.

## <a name="generalrecommendations">General Recommendations

Following are general best practices for handling EML dataset metadata:

*Metadata Distribution*: Do not publicly distribute EML documents containing elements with incorrect information, e.g., as a workaround for missing metadata or to meet validation requirements. EML produced as draft, demonstration or for testing purposes should be clearly identified as such and not contributed to public metadata archives, because these are passed on to large-scale clearinghouses. For previews of draft datasets, consult your repository to learn about options.

*Data Package Identifiers*: Metadata and data set versioning are controlled by the contributor, and so identifiers are tied to local systems. Many repository systems that accept EML-described data support principles of immutable metadata and data entity versioning.  EML has elements to contain package identifers, although these may be also be assigned externally. It is the responsibility of the submitters to understand the practices of their intended repository when using identifiers.

*High-priority Elements*: 
* To support locating datasets by time, geographic location, and taxonomically, metadata should provide as much information as possible, in the three &lt;**coverage**&gt; elements of &lt;**temporalCoverage**&gt; (when), &lt;**taxonomicCoverage**&gt; (what), and &lt;**geographicCoverage**&gt; (where) for the dataset.
* For a potential user to evaluate the relevance and usability of the data package for their research study or synthesis projects, metadata should include detailed descriptions in the &lt;**project**&gt;, &lt;**methods**&gt;, &lt;**protocols**&gt;, and &lt;**intellectualRights**&gt; elements.


## <a name="other-resources">Other Resources

*Documents:*
EML 2.1.0 schema and normative documentation (2008):
[http://knb.ecoinformatics.org/software/eml/](http://www.google.com/url?q=http%3A%2F%2Fknb.ecoinformatics.org%2Fsoftware%2Feml%2F&sa=D&sntz=1&usg=AFQjCNF4N6AsKlyYSPW-7BidAbbYO8R57g)

ESRI to EML conversion stylesheet documentation and recommendations (yyyy)
<http://im.lternet.edu/project/Esri2Eml>

EML Best Practices for LTER Sites, Version 1 (2004):
<http://im.lternet.edu/sites/im.lternet.edu/files/emlbestpractices_oct2004_final.pdf>

EML Handbook (yyyy):
<http://im.lternet.edu/sites/im.lternet.edu/files/emlHandbook.pdf>

Report from the 2003 EML implementation workshop at SEV (2003):

*Applications and Websites:*

EDI

PASTA
 
Unit dictionary: <http://unit.lternet.edu>



## <a name="timeline">Timeline
=================================
* 2017 EML BP v 3 link here to the doc TBD
* 2011 LTER EML BP v2 - include a link to the PDF in /files/
* 2008 EML 2.1 release
* 2004 LTER EML BP v1 - include a link to the PDF in /files/
* 2003 LTER adopts EML as network exchange standard

LTER EML Best Practices Working Group (alphabetical order): 
Dan Bahauddin, Barbara Benson, Emery Boose, James Brunt, Duane Costa, Corinna Gries, Don Henshaw, Margaret O’Brien, Ken Ramsey, Inigo San Gil, Mark Servilla, Wade Sheldon, Philip Tarrant, Theresa Valentine, John Vande Castle, Kristin Vanderbilt, Jonathan Walsh, Yang Xia 



