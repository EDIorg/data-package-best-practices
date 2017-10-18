> **EML Best Practices for LTER Sites**

TO DO
========
This is the index page. 
* rearrange material - sections
* * background
* * link to BP doc, v 3
* * other resources
* * previous revisions


========

[I. Introduction 2](#i.-introduction)

[I.1. Changes from EML Best Practices Version 1 (2004)
3](#i.1.-changes-from-eml-best-practices-version-1-2004)

[I.2 EML Management 4](#i.2-eml-management)

[I.2.1 Creating Datasets 4](#i.2.1-creating-datasets)

[I.2.2 The Attribute – Value Data Model
5](#i.2.2-the-attribute-value-data-model)

[I.2.3. EML produced from Geographic Information Systems (GIS) systems
6](#i.2.3.-eml-produced-from-geographic-information-systems-gis-systems)

[II. Detailed content recommendations For Elements and Attributes
7](#ii.-detailed-content-recommendations-for-elements-and-attributes)

[II.1 General Recommendations 7](#ii.1-general-recommendations)

### <a name="introduction"></a>Introduction
===============
TO DO: rewrite to be less LTER-specific. put LTER bits into single doc.


The Ecological Metadata Language (EML) was adopted in 2003 as the exchange format for metadata contributed to the LTER network. As such, EML is one part of an LTER site's information management system. This document contains recommended current views for best practices for EML content for our network’s use, and is also intended to augment the EML schema documentation (normative documents) for a less technical audience. Some notes on implementation are included as appropriate. This is one component of several Best Practice documents available to LTER sites, and related documents and resources are listed in the Additional Resources (Section V). The recommendations are directed towards achieving the following specific goals:

a)  Provide guidance and clarification in the implementation of EML for     datasets

b)  Minimize heterogeneity of LTER EML documents to simplify development     and re-use of software built for EML datasets

c)  Maximize interoperability of LTER EML documents to facilitate data     synthesis

Please cite this document as:

Environmental Data Initiative. 2017. EML Best Practices.

I.1. Timeline - maybe this goes into background instead. see issue #2
-----------------------------------------------------

I.1.1 2004 LTER EML BP v1 - include a link to the PDF in /files/

I.1.2 2011 LTER EML BP v2 - include a link to the PDF in /files/

I.1.3 2016 EDI inception

I.1.4 2017 this doc.

Pull info from original section 1.1 as needed. 



I.2. Organization of these recommendations 
-----------------------------------------------------
1.2.1 Conventions used 

Fonts and type faces: example XML nodes are in fixed-width font. XML element  nd attribute names, XPath, and references to element names in text are in bold face, and elements are surrounded by angle brackets. Recommendations or notes on possible changes to the EML schema are in italic.

1.2.1 XML Types:

*XPath*: Many elements can be placed at multiple locations in a dataset, e.g., coverage and methods. To illustrate all possible locations, the allowable XPath locations are listed for every element. XPath is a representation of the document's hierarchical structure, which is similar to fileserver directory paths. 

*Grouped Element Descriptions: For each element, recommendations for content have been grouped together where the element first appears (often at the dataset level). This does not imply that these trees belong only at that level; in fact, locating trees at the most granular level is still advantageous and recommended.


1.2.3 Examples: Complete EML with all these examples
[link here.]


### <a name="recommendations-by-element"></a>Recommendations by element
-------------------------------

General 
----------------------------

Following are general best practices for creating EML dataset metadata:

*Metadata Distribution*: Do not publicly distribute EML documents containing elements with incorrect information as dataset metadata (i.e. as a workaround for problems with metadata content availability or to meet validation requirements). EML produced as draft, demonstration or for testing purposes should be clearly identified as such and not contributed to public metadata archives or clearinghouses.

*Text Elements*: Use EML text formatting tags whenever possible (e.g. &lt;**section**&gt;, &lt;**para**&gt;, &lt;**orderedlist**&gt;, etc.). Use &lt;**literalLayout**&gt; only when the field must contain HTML for formatting that is not available with Text Type. Note that the TextType elements were taken from docbook, and so do not use the 'camelCase' notation that was generally adopted for EML elements.

*Versioning*: It is recommended that metadata and data set versioning be handled at the site level. For example, data entities and corresponding metadata for ongoing long term datasets can be archived annually with correct end dates and versions of the EML. In the future, the NIS may assign unique ID to incoming EML files and data will be independent from the ID system used at the sites. Such a NIS ID would be assigned without knowledge of lineage or versions.

*EML "id" Attribute*: Many EML elements are allowed to have an “id” attribute. In EML 2.1.0, all ids in a document must be unique. Care should be exercised when using id attributes to reference and re-use EML content. It may be preferable to duplicate content without ids when generating EML dynamically from a relational database system to avoid potential id conflicts. See below for more information on the id attribute.

*High-priority Elements*: To support locating datasets by time, geographic location, and taxonomically, metadata should provide as much information as possible, in the three &lt;**coverage**&gt; elements of &lt;**temporalCoverage**&gt; (when), &lt;**taxonomicCoverage**&gt; (what), and &lt;** geographicCoverage**&gt; (where) for the dataset.

Metadata should include detailed descriptions in the &lt;**project**&gt;, &lt;**methods**&gt;, &lt;**protocols**&gt;, and &lt;**intellectualRights**&gt; elements in order for a potential user to evaluate the relevance of the data package for their research study or synthesis project.

The change history should be recorded in the &lt;**maintenance**&gt; element


[III. Recommendations for Compatibility with External Applications
46](#iii.-recommendations-for-compatibility-with-external-applications)

[III.1 Metacat 46](#iii.1-metacat)

[III.2 LTERMapS 47](#iii.2-ltermaps)

[III.3 Provenance Tracking in EML 47](#iii.3-provenance-tracking-in-eml)

[III.4 EML Congruency Checker 48](#iii.4-eml-congruency-checker)

[IV. Descriptions of EML sample files provided with this document
50](#iv.-descriptions-of-eml-sample-files-provided-with-this-document)

[V. Other resources 50](#v.-other-resources)

[VI. Contributors to this Document
51](#vi.-contributors-to-this-document)

[INDEX 52](#index)

**Conventions used in this document:** Fonts and type faces: example XML
nodes are in fixed-width font. XML element and attribute names, XPath,
and references to element names in text are in bold face, and elements
are surrounded by angle brackets. Recommendations or notes on possible
changes to the EML schema are in italic.

I. Introduction
===============

The Ecological Metadata Language (EML) was adopted in 2003 as the
exchange format for metadata contributed to the LTER network. As such,
EML is one part of an LTER site’s information management system. This
document contains recommended current views for best practices for EML
content for our network’s use, and is also intended to augment the EML
schema documentation (normative documents) for a less technical
audience. Some notes on implementation are included as appropriate. This
is one component of several Best Practice documents available to LTER
sites, and related documents and resources are listed in the Additional
Resources (Section V). The recommendations are directed towards
achieving the following specific goals:

a)  Provide guidance and clarification in the implementation of EML for
    datasets

b)  Minimize heterogeneity of LTER EML documents to simplify development
    and re-use of software built for EML datasets

c)  Maximize interoperability of LTER EML documents to facilitate data
    synthesis

Please cite this document as:

Long Term Ecological Research Network. 2011. EML Best Practices for LTER
Sites.

I.1. Changes from EML Best Practices Version 1 (2004)
-----------------------------------------------------

The EML Best Practice recommendations have evolved over time. They are
the cumulative result of several working groups comprised of LTER
information managers and Network Office representatives (Section VI).
Each group aligned its recommendations with the current capability at
most of the contributing LTER sites. As of 2011, EML has been widely
used for several years with multiple applications written against it,
and the community has had the opportunity to observe the consequences of
many content patterns. Following are the major changes between this
document and Version 1 (2004).

*EML Version*: EML 2.1 is the current version of the specification, and
all examples and recommendations refer to this. However, all
recommendations for element content can be applied to EML 2.0.1.

*Document Organization and EML “Metadata Levels”*: Version 1 (2004) of
this document discussed specific elements in sections of “levels of EML
completeness” which corresponded to functionality tiers identified by
NISAC in 2004. It used the completeness levels’ increasingly
comprehensive descriptions of data resources so that EML could be
implemented gradually. In this document (Version 2), the detailed
content recommendations (Section II) are organized more simply and more
or less in EML‐document order. Other organizing concepts were
considered, .e.g., distinguishing between ‘human‐readable’ and
‘machine‐readable’ elements. However, at present all information in EML
is consumed by humans while only few elements are used by applications,
(e.g. access control, geographic coverage, and the structural
information in the entity tree). Few applications are able to make
semantic use of TextType fields such as &lt;**abstract**&gt; and
&lt;**methodStep**&gt;, although these fields can be machine‐searched.
Some fields with simple string content that is currently ad hoc (e.g.,
&lt;**attributeName**&gt;, &lt;**customUnit**&gt;) are currently
undergoing a network wide standardization effort and are expected to
become machine‐read in the near future.

*Element Descriptions*: Several important EML elements can be placed at
multiple locations in a dataset, e.g., coverage and methods. To
illustrate all possible locations, the allowable XPath locations are
listed for every element. XPath is a representation of the document’s
hierarchical structure, which is similar to fileserver directory paths.
For each element, recommendations for content have been grouped together
when the element first appears (often at the dataset level). This does
not imply that these trees belong only at that level; in fact, locating
trees at the most granular level is still advantageous and recommended.
*Data Availability*: The LTER Network policy on availability is that
data products should be generally available. Therefore, there are
limited recommendations here for how to describe a data entity which is
unavailable to the public. More information on access can be found in
the EML normative documents. *Data Types*: Recommendations have been
added in Section I.2 for describing certain dataset types or for common
situations encountered in LTER datasets, specifically, conversions of
spatial metadata to EML, and “string‐of‐pearls” or “attribute – value”
data models.

*External Applications:* A new section (III) has been added to contain
recommendations for EML which is to be used in specific external
applications. These include Metacat, the LTERMaPs project, and PASTA
(specifically, the EML Congruency Checker and its use in validating LTER
datasets, and provenance for derived datasets).

I.2 EML Management
------------------

The terms “dataset” and “data package” are somewhat interchangeable. The
term “data package” is used here to mean the published unit of data and
metadata together. “Dataset” has a special meaning within EML documents,
because it is the top-level container for data objects (i.e.,
&lt;**dataset**&gt; as opposed to the other top-level elements,
**&lt;citation&gt;,** **&lt;software&gt;** and **&lt;protocol&gt;**).
However, a logical “dataset” may be something slightly different. For
example, management needs for an ongoing collection may dictate that a
dataset is published in increments, and the entire “Ongoing Climate
Dataset” may be composed of multiple contributions, each of which could
be an individual EML “dataset”. Subsequent data access applications may
use the term dataset differently.

### ***I.2.1 Creating Datasets***

Several approaches to creating datasets or data packages have emerged in
the network and are all valid concepts. In general, this document does
not recommend any one pattern. Following are several examples:

\(1) Data collected with defined beginning and end dates are published in
logical units, with all ancillary data are described together in one EML
file (i.e., &lt;**dataset**&gt;). EML accommodates descriptions of
multiple data entities in one metadata document. For instance, a data
table could be accompanied by a KML file or shapefile to describe the
sampling locations.

\(2) Data from a large sampling campaign where many somewhat independent
parameters are measured could either be combined into one EML dataset
with multiple data entities, or broken up into several datasets, all
accompanied by some of the same metadata, and each with other unique
metadata. Both patterns are valid, and it is left up to the dataset
designers to decide which style works best for their particular data and
circumstances. It is wise to keep the data user in mind, and whether
certain data entitles naturally belong together.

\(3) For time-series observations (instrumented or not), some designers
choose to update existing EML metadata when methods or other ancillary
material remains constant. Others may choose to create new datasets for
each logical unit (e.g., a summer sampling season). There are advantages
and disadvantages to both approaches. The first approach does not allow
for strict versioning of the data while the second approach forces the
user to download and integrate many separate entities.

\(4) The dataset designer should consider some reasonable approaches to
deciding which information is encoded directly in EML and which is
better left in ancillary files (or tables). For example, codes used in a
column of the data table may either be encoded directly in EML or stored
in a “look-up table” (described in EML as another entity) and linked via
a &lt;**constraint**&gt; element. Another example is site locations,
which may be encoded in EML under &lt;**methods**&gt;
&lt;**sampling**&gt; &lt;**spatialSamplingUnits**&gt; or supplied as a
KML or shape file and described as another entity. The decision between
these two options probably depends mostly on the number of units to
encode in EML. For example, 500 codes are better left in a second data
entity, while ten code-definition pairs should be encoded directly in
EML.

### ***I.2.2 The Attribute – Value Data Model***

The Attribute - Value or “string of pearls” data model is widely used
for certain kinds of observational data where the more conventional
matrix type model would cause many empty cells. This data model treats
each point observation as a single record containing fields for
location, time, variable (attribute) name, and value, plus various flags
for methods, data quality etc. For ecologists, this data model is
especially useful for (1) biodiversity and (2) sensor data that may
otherwise require very wide tables in a matrix format, and/or have many
empty cells e.g., when species are not regularly observed or sensors are
not employed consistently.

The advantages of the Attribute - Value data model are its flexibility
and efficiency. However datasets in this format are not easily described
in the current version of EML. The basic problem is that the values in
the value field do not necessarily share the same attributes (e.g.
numerical type, collection methods, unit, and precision). So for now the
best practices recommendations are as follows:

*Biodiversity data*: If all of the values in a given table share the
same units (e.g., presence/absence, count, percent abundance), then the
table should be represented in this Attribute – Value format and
described accurately in EML. If not, then the data should be represented
in matrix format, or possibly several matrices if the table is
unreasonably wide.

*Sensor data*: The Attribute - Value format is especially efficient for
sensor data and variations of this data model have been developed in
communities handling large volumes of sensor data (e.g., ODM or
Observation Data Model from CUAHSI). For a single site this data model
is useful when sensors are frequently changed or redeployed or when
several different sets of sensor deployments exist. For accurate
description in EML, it is recommended that each data table contain only
the Attribute – Value formatted values for a single sensor. If a single
metadata document contains data from multiple sensors, values for each
sensor should appear as separate entities (data tables) within one
dataset. (Most of these data models describe the concept of a single
“data stream,” which may be used to achieve the here recommended
approach dynamically.)

### ***I.2.3. EML produced from Geographic Information Systems (GIS) systems***

Several established standards exist for documenting spatial datasets.
The most common formats are Federal Geographic Data Committee (FGDC)
geospatial standard, National Biological Information Infrastructure
(NBII) biological profile, International Standards Organization (ISO)
standard 19115, and ArcGIS metadata format. Tools are available at
<http://www.fgdc.gov/metadata/geospatial-metadata-tools> for preparing
FGDC compliant metadata, which can then be converted into EML using XSL
transformation style sheets. The LTER network has the following
stylesheets available:

*esri2eml.xsl*: converts XML documents from ArcCatalog metadata editor
(up to ARCGIS version 9.3.1)
[http://im.lternet.edu/project/Esri2Eml/docs](http://intranet.lternet.edu/im/project/Esri2Eml/docs)

*bdp2eml.xsl*: converts FGDC and NBII Biological Profile metadata to
EML.
[http://im.lternet.edu/project/bdp2eml](http://intranet.lternet.edu/im/project/bdp2eml)

Valid EML will be produced by esri2eml.xsl if the following guidelines
are followed when preparing your FGDC, ISO, or ArcGIS compliant
metadata:

a)  *Personnel names*: Last name, first name (i.e., use a comma to
    separate last name and first name) and for multiple names and
    contact elements (phone, fax, e‐mail), use repeating fields.

b)  *Attribute definition*: Every attribute value needs a corresponding
    value definition. If the value definition is not available, record
    the value definition as “unknown”, “none”, or null”.



V. Other resources 
===================

Documents are ordered by year. Applications are alphabetical by title.

*Documents*:

EML 2.1.0 schema and normative documentation (2008):
[http://knb.ecoinformatics.org/software/eml/](http://www.google.com/url?q=http%3A%2F%2Fknb.ecoinformatics.org%2Fsoftware%2Feml%2F&sa=D&sntz=1&usg=AFQjCNF4N6AsKlyYSPW-7BidAbbYO8R57g)

EML-2.1.0 FAQ (2008):
[http://knb.ecoinformatics.org/software/eml/eml-2.1.0/eml-faq.html](http://www.google.com/url?q=http%3A%2F%2Fknb.ecoinformatics.org%2Fsoftware%2Feml%2Feml-2.1.0%2Feml-faq.html&sa=D&sntz=1&usg=AFQjCNHdzk-0kWI27Bz9yZA_woWdOzlIIg)

ESRI to EML conversion stylesheet documentation and recommendations
(yyyy: <http://im.lternet.edu/project/Esri2Eml>

EML Best Practices for LTER Sites, Version 1 (2004):
<http://im.lternet.edu/sites/im.lternet.edu/files/emlbestpractices_oct2004_final.pdf>

EML Handbook (yyyy):
<http://im.lternet.edu/sites/im.lternet.edu/files/emlHandbook.pdf>

Report from the 2003 EML implementation workshop at SEV (2003):

*Applications and Websites:*

LNO Data Access Server:
[http://im.lternet.edu/im\_practices/metadata/das](http://intranet.lternet.edu/im/im_practices/metadata/das)

LNO Metacat Harvester info:
[http://im.lternet.edu/node/418](http://intranet.lternet.edu/im/node/418)

LTER Project Database:
<http://im.lternet.edu/project/LTERProjectDatabase>

LTER Unit dictionary: <http://unit.lternet.edu>

Metacat and Morpho: <http://ecoinformatics.org/tools.html>

Observational Data Model (ODM) used by CUASHI hydrological information
system at:
[http://his.cuahsi.org/index.html](http://www.google.com/url?q=http%3A%2F%2Fhis.cuahsi.org%2Findex.html&sa=D&sntz=1&usg=AFQjCNHKROli8pRG8-QDqcNuWWmkgQ9hew).

VI. Contributors to this Document
=================================

**EML Best Practices Workshop, LTER Network Office, Albuquerque, NM
(June 21-23, 2010)**

Best Practices Working Group:

· Dan Bahauddin (CDR)

· Emery Boose (HFR)

· Corinna Gries (NTL)

· Margaret O’Brien (SBC)

· Ken Ramsey (JRN)

· Mark Servilla (LNO)

· Theresa Valentine (AND)

· Jonathan Walsh (BES)

Co-participants:

· James Brunt (LNO)

· Inigo San Gil (LNO)

· Philip Tarrant (CAP)

· Yang Xia (LNO)

**EML Best Practices Workshop, LTER Network Office, Albuquerque, NM (May
19-20, 2004)**

Best Practices Working Group:

· James Brunt (LNO)

· Corinna Gries (CAP)

· Jeanine McGann (LNO)

· Margaret O’Brien (SBC)

· Ken Ramsey (JRN)

· Wade Sheldon (GCE)

Co-participants:

· Duane Costa (LNO)

· Mark Servilla (LNO)

**LTER EML Implementation Workshop, Sevilleta Research Station,
Sevilleta National Wildlife Refuge, NM (June 9-10, 2003)**

Best Practices Working Group:

· Barbara Benson (NTL)

· James Brunt (LNO)

· Don Henshaw (AND)

· John Vande Castle (LNO)

· Kristin Vanderbilt (SEV)

Working Group Support:

· Jeanine McGann (LNO)

INDEX
=====

abstract 16, 17, 30, 47

access 4, 10, 18, 19, 20, 33, 47

additionalMetadata 37, 38, 45

address 13, 14, 15, 16

alternateIdentifier 12, 32

alternativeTimeScale 23

associatedParty 14, 15, 47

attribute 2, 5, 9, 12, 19, 20, 26, 27, 28, 33, 35, 36, 37, 38, 40, 42,
44, 45, 46, 50

attributeDefinition 36, 37, 38

attributeLabel 36, 40

attributeList 20, 26, 35, 38, 44, 50

attributeName 35, 36, 38

*attributeReference* 45

boundingCoordinates 21, 22, 29

bounds 37, 39, 50

checkConstraint 44

citation 4, 27, 28, 30

classificationSystem 24

classificationSystemCitation 24

constraint 5, 44, 45

*constraintName* 45

constraintType 44

*ConstraintType* 45

contact 12, 13, 15, 16, 18

coverage 7, 20, 21, 22, 23, 26, 27, 28, 29, 30, 33, 47

creator 9, 12, 13, 14, 16, 27, 47

customUnit 37, 38, 40, 45, 46

dataset 4, 5, 7, 8, 9, 10, 12, 13, 16, 17, 18, 19, 20, 21, 23, 26, 28,
29, 31, 35, 46, 48

datasetGPolygon 22, 23

datasetGPolygonExclusionGRing 23

datasetGPolygonOuterGRing 22

dataTable 9, 20, 27, 31, 33

datetime 36, 38, 50

descriptor 30

distribution 10, 19, 20, 27, 30, 33, 34, 50

electronicMailAddress 13, 14, 15, 16

endDate 23

entityDescription 32, 33

entityName 32, 33, 47

*enumeratedDomain* 36, 39, 50

externallyDefinedFormat 32

fundingSource 30

generalTaxonomicCoverage 24

geographicCoverage 7, 20, 21, 47

givenName 13, 14, 15, 47

identifierName 24

individualName 12, 13, 15

inline 19

instrumentation 27, 28

intellectualRights 18

interval 36, 37, 40

joinCondition 44

keyword 17, 47

keywordSet 17

maintanence 23

maintenance 8, 26

measurementScale 36, 38, 50

mediumName 19

metadataProvider 14

methods 5, 7, 16, 20, 23, 24, 26, 27, 28, 31, 33, 35, 44, 47, 48

methodStep 27, 28, 37, 48

missingValueCode 38, 40, 50

nominal 36, 38

nonNullConstraint 44

*nonNumericDomain* 36, 38

numberType 37, 39, 50

*numericDomain* 37, 39, 50

objectName 32, 33

offline 19

online 16, 19, 20, 33, 34, 49

onlineURL 14, 15, 16

ordinal 36, 39

organizationName 13, 14, 15, 16, 47

packageId 8, 10, 12, 46

personnel 9, 15, 30

phone 13, 14, 15, 16

postitionName 13

precision 5, 37, 39

primaryKey 44, 45

project 7, 9, 16, 17, 20, 29, 30, 47

protocol 4, 9, 26, 27, 28, 48

pubDate 16, 17

publisher 16

qualityControl 27, 28, 44

role 13, 15

sampling 4, 5, 20, 23, 27, 28, 33

samplingDescription 28, 29

scope 10, 12, 13, 15, 24, 27

spatialRaster 31, 50

spatialSamplingUnits 5, 20, 28, 29, 30, 47

spatialVector 31, 50

standardUnit 37, 38, 39

storageType 36, 38

storedProcedure 31

studyAreaDiscription 30

studyExtent 20, 27, 28, 29, 30

surName 13, 14, 15, 47

system 7, 9, 10, 12, 13, 15, 36, 37, 38, 44, 45, 51

taxonomicClassification 24, 25

taxonomicCompleteness 24

taxonomicCoverage 7, 24

taxonomicProcedures 24

taxonRankName 24, 25

temporalCoverage 7, 20, 23

*textDomain* 36, 38

title 12, 18, 27, 28, 30, 47

uniqueKey 44

unit 4, 5, 37, 38, 39, 45, 46, 48

view 15, 31
