> **EML Best Practice Recommendations by Element**
========

[II. Detailed content recommendations For Elements and Attributes
7](#ii.-detailed-content-recommendations-for-elements-and-attributes)


[II.2 Recommendations by element](#ii.2-recommendations-by-element)

[The root element: &lt;eml:eml&gt;](#the-root-element-emleml)

[@packageId (XML attribute) 8](#packageid-xml-attribute)

[id, system and scope (XML attribute group)
8](#id-system-and-scope-xml-attribute-group)

[access 10](#access)

[*dataset* 10](#_Toc297021932)

[alternateIdentifier 11](#alternateidentifier)

[title (dataset) 12](#title-dataset)

[People and Organizations (Parties)
12](#people-and-organizations-parties)

> [creator 13](#creator)
>
> [metadataProvider 14](#metadataprovider)
>
> [associatedParty 14](#associatedparty)
>
> [contact 15](#contact)
>
> [publisher 15](#publisher)

[pubDate 16](#pubdate)

[abstract 16](#abstract)

[keywordSet and keyword 16](#keywordset-and-keyword)

[intellectualRights 17](#intellectualrights)

[distribution 18](#distribution)

[coverage 20](#coverage)

> [geographicCoverage 20](#geographiccoverage)

[temporalCoverage 23](#temporalcoverage)

[taxonomicCoverage 23](#taxonomiccoverage)

[maintenance 26](#maintenance)

> [methods 26](#methods)
>
> [methodStep 27](#methodstep)
>
> [instrumentation 27](#instrumentation)
>
> [dataSource 27](#datasource)
>
> [sampling 27](#sampling)
>
> [qualityControl 28](#qualitycontrol)

[project 29](#project)

[\[entity\] = dataTable, spatialRaster, spatialVector, storedProcedure,
view, otherEntity
31](#entity-datatable-spatialraster-spatialvector-storedprocedure-view-otherentity)

[attributeList 35](#attributelist)

[constraint 43](#constraint)

[additionalMetadata 45](#additionalmetadata)

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

I. Introduction
===============
TO DO: rewrite to be less LTER-specific. put LTER bits into single doc.


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

Environmental Data Initiative. 2017. EML Best Practices.

I.1. Timeline 
-----------------------------------------------------

I.1.1 2004 LTER EML BP v1 - include a link to the PDF in /files/

I.1.2 2011 LTER EML BP v2 - include a link to the PDF in /files/

I.1.3 2016 EDI inception

I.1.4 2017 this doc.

Pull info from original section 1.1 as needed. 



I.2. Organization of this document 
-----------------------------------------------------
1.2.1 Conventions used in this document

**Conventions used in this document:** Fonts and type faces: example XML
nodes are in fixed-width font. XML element and attribute names, XPath,
and references to element names in text are in bold face, and elements
are surrounded by angle brackets. Recommendations or notes on possible
changes to the EML schema are in italic.


1.2.1 
*XML Types*:

*Element Descriptions*: Several important EML elements can be placed at
multiple locations in a dataset, e.g., coverage and methods. To
illustrate all possible locations, the allowable XPath locations are
listed for every element. XPath is a representation of the document’s
hierarchical structure, which is similar to fileserver directory paths.
For each element, recommendations for content have been grouped together
when the element first appears (often at the dataset level). This does
not imply that these trees belong only at that level; in fact, locating
trees at the most granular level is still advantageous and recommended.




II. Detailed content recommendations For Elements and Attributes 
=================================================================

II.1 General Recommendations
----------------------------

Following are general best practices for creating EML dataset metadata:

*Metadata Distribution*: Do not publicly distribute EML documents
containing elements with incorrect information as dataset metadata (i.e.
as a workaround for problems with metadata content availability or to
meet EML validation requirements). EML produced as draft, demonstration
or for testing purposes should be clearly identified as such and not
contributed to public metadata archives or clearinghouses.

*Text Elements*: Use EML text formatting tags whenever possible (e.g.
&lt;**section**&gt;, &lt;**para**&gt;, &lt;**orderedlist**&gt;, etc.).
Use &lt;**literalLayout**&gt; only when the field must contain HTML for
formatting that is not available with Text Type. Note that the TextType
elements were taken from docbook, and so do not use the “camelCase”
notation that was generally adopted for EML.

*Versioning*: It is recommended that metadata and data set versioning be
handled at the site level. For example, data entities and corresponding
metadata for ongoing long term datasets can be archived annually with
correct end dates and versions of the EML. In the future, the NIS may
assign unique ID to incoming EML files and data will be independent from
the ID system used at the sites. Such a NIS ID would be assigned without
knowledge of lineage or versions.

*EML “id” Attribute*: Many EML elements are allowed to have an “id”
attribute. In EML 2.1.0, all ids in a document must be unique. Care
should be exercised when using id attributes to reference and re-use EML
content. It may be preferable to duplicate content without ids when
generating EML dynamically from a relational database system to avoid
potential id conflicts. See below for more information on the id
attribute.

*High-priority Elements*: To support locating datasets by time,
geographic location, and taxonomically, metadata should provide as much
information as possible, in the three &lt;**coverage**&gt; elements of
&lt;**temporalCoverage**&gt; (when), &lt;**taxonomicCoverage**&gt;
(what), and &lt;**geographicCoverage**&gt; (where) for the dataset.

Metadata should include detailed descriptions in the
&lt;**project**&gt;, &lt;**methods**&gt;, &lt;**protocols**&gt;, and
&lt;**intellectualRights**&gt; elements in order for a potential user to
evaluate the relevance of the data package for their research study or
synthesis project.

The change history should be recorded in the &lt;**maintenance**&gt;
element

II.2 Recommendations by element
-------------------------------

### ***The root element: &lt;eml:eml&gt;***

This element is the root element in all EML documents. The XPath
notation is:

**/eml:eml**

After the XML declaration, all EML documents must have one root element
(&lt;**eml:eml**&gt;).

An EML dataset is composed of up to three elements under the root
element (&lt;**eml:eml**&gt;):

&lt;**access**&gt;

&lt;**dataset**&gt;

&lt;**additionalMetadata**&gt;

### ***@packageId (XML attribute) ***

This attribute is required in all EML2.1 documents, and is found at this
location (XPath):

**/eml:eml/@packageId**

As outlined in other sections (see versioning above, @**id** and
&lt;**alternateIdentifier**&gt;, below) each site should manage unique
identifiers and versioning at the local level (see @**system**
discussion below). However, a central data catalog will handle
identifiers at it’s scope and may assign a different ids. The LTER
Network currently uses “Metacat” as its EML repository. Most sites
synchronize the packageId with the Metacat “docid” designated in the
harvester or at document upload, however synchronization is not
required. Metacat and its harvester rely on numerical data set ids and
revision numbers for document management and synchronization. This may
necessitate a workaround for sites that use non-numeric ids or don’t
version data sets. Possible solutions include differentially generating
EML optimized for Metacat (for sites capable of dynamic EML generation)
and XSLT transformation.

Currently, the packageId attribute is used to identify a site’s EML
documents for searches in the LTER Data Catalog. A site’s packageId
attribute in EML contributed to the KNB Metacat should be standardized
as follows, or another format agreed upon by the site and LNO Data
Catalog managers.

> knb-lter-\[site\].\[dataset number\].\[revision\], e.g.
> knb-lter-gce.187.4

See Section III for other information about EML documents in Metacat.

### ***id, system and scope (XML attribute group)***

This attribute group can be used on these EML elements:

&lt;**access**&gt;

&lt;**dataset**&gt;

&lt;**creator**&gt;

&lt;**associatedParty**&gt;

&lt;**contact**&gt;

&lt;**metadataProvider**&gt;

&lt;**publisher**&gt;

&lt;**coverage**&gt;

&lt;**geographicCoverage**&gt;

&lt;**temporalCoverage**,&gt;

&lt;**taxonomicCoverage**&gt;

&lt;**distribution**&gt;

&lt;**software**&gt;

&lt;**citation**&gt;

&lt;**protocol**&gt;

&lt;**project**&gt;

&lt;**dataTable**&gt;

&lt;**otherEntity**&gt;

&lt;**spatialRaster**&gt;

&lt;**spatialReference**&gt;

&lt;**spatialVector**&gt;

&lt;**storedProcedure**&gt;

&lt;**view**&gt;

&lt;**attribute**&gt;

&lt;**constraint**&gt;

These three attributes are found as a group and are usually optional,
unless the id attribute is used as a reference. Each id must be unique
in one EML document, i.e. a &lt;**creator**&gt; must have a different id
than a &lt;**dataTable**&gt;. If the same person appears as dataset
creator and protocol or project creator, the same id cannot be repeated,
so either the content of the id must be changed or a reference used for
repeated instances.

The current restrictions can cause problems when content is drawn from a
system with IDs (e.g. a personnel database), and is under consideration
by the EML developers. Ideally the three attributes would work together.
The **scope** attribute can have one of two values, “system” or
“document”. It is preferred that when the scope is set to “system”, that
the **system** attribute defines the ID-system, the **id** attribute
content is (presumably) from that system.

Currently, a reasonable general practice should be to define a
**system** on the &lt;**eml:eml**&gt; element and set it to the site
(but not set the system attribute at any other level), and to set
**scope**=“document” on elements other than &lt;**eml:eml**&gt;.

Example: attributes packageId, id, system, and scope

TO DO: code block


> &lt;?xml version="1.0" encoding="UTF-8"?&gt;
>
> &lt;eml:eml xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
>
> xmlns:xs="http://www.w3.org/2001/XMLSchema"
>
> xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
>
> xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
>
> xmlns:stmml="http://www.xml-cml.org/schema/stmml"
>
> xsi:schemaLocation="eml://ecoinformatics.org/eml-2.1.0
> https://nis.lternet.edu/eml-2.1.0/eml.xsd"
>
> packageId="knb-lter-fls.21.3"
>
> system="FLS"
>
> scope="system"&gt;

### ***access***

The dataset title element is found at this location (XPath):

**/eml:eml/access**

**/eml:eml/\[entityType\]/physical/distribution/access**

&lt;**access**&gt; contains a list of rules defining permissions for
this file and its data entity. Values must be applicable by the system
where data is stored. Metacat access control format conforms to the LDAP
“distinguishedName (dn)” for an individual, as in
“uid=FLS,o=LTER,dc=ecoinformatics,dc=org”.

As of EML 2.1.0, &lt;**access**&gt; trees are allowed at two places: as
the first child of the &lt;**eml:eml**&gt; root element (a sibling to
&lt;**dataset**&gt;) for controlling access to the entire document, and
in a **physical/distribution** tree for controlling access to the
resource URL. Access elements for documents contributed to the KNB
Metacat should be formed according to Example below. With the exception
of certain sensitive information, metadata should be publicly
accessible. The &lt;**access**&gt; element is optional, and if omitted,
presumably only the dataset submitter will be allowed access.

Example: access

TO DO: code block


> &lt;access authSystem="knb" order="allowFirst" scope="document"&gt;
>
> &lt;allow&gt;
>
> &lt;principal&gt;uid=FLS,o=lter,dc=ecoinformatics,dc=org&lt;/principal&gt;
>
> &lt;permission&gt;all&lt;/permission&gt;
>
> &lt;/allow&gt;
>
> &lt;allow&gt;
>
> &lt;principal&gt;public&lt;/principal&gt;
>
> &lt;permission&gt;read&lt;/permission&gt;
>
> &lt;/allow&gt;
>
> &lt;/access&gt;

[[[]{#_Toc297021932 .anchor}]{#_Toc297021695 .anchor}]{#_Toc271621592
.anchor}***dataset***

This element is found at these locations (XPath):

**/eml:eml/dataset**

Under &lt;**dataset**&gt;, the following elements are available. Some
are optional, but if they appear, this order is enforced by the schema.
Generally, the recommendations are presented here in this order, with
the exception of elements related to people and organizations which are
grouped together so that the distinctions between the uses of those
elements are clear. Elements that can appear at different levels within
an EML file are discussed at their first appearance, or highest level
(see also section I.1).

&lt;**alternateIdentifer**&gt;

&lt;**shortName**&gt;

&lt;**title**&gt;

&lt;**creator**&gt;

&lt;**metadataProvider**&gt;

&lt;**associatedParty**&gt;

&lt;**pubDate**&gt;

&lt;**language**&gt;

&lt;**series**&gt;

&lt;**abstract**&gt;

&lt;**keywordSet**&gt;

&lt;**additionalInfo**&gt;

&lt;**intellectualRights**&gt;

&lt;**distribution**&gt;

&lt;**coverage**&gt;

&lt;**purpose** &gt;

&lt;**maintenance**&gt;

&lt;**contact**&gt;

&lt;**publisher**&gt;

&lt;**pubPlace**&gt;

&lt;**project**&gt;

These elements are then followed by one or more elements for the data
entity (or entities), designated by choosing:

\[ **dataTable** | **spatialRaster** | **spatialVector** |
**storedProcedure** | **view** | **otherEntity** \]

### ***alternateIdentifier***

The dataset title element is found at this location (XPath):

**/eml:eml/ dataset/alternateIdentifier**

**/eml:eml/ dataset/\[entity\]/alternateIdentifier**

The site’s data set id should be listed as the EML
&lt;**alternateIdentifier**&gt;, particularly when it differs from the
“**packageId**” attribute in the &lt;**eml:eml**&gt; element. The
&lt;**alternateIdentifier**&gt; should also be used to denote that a
dataset belongs to more than one LTER site by including the each site’s
ID in a separate &lt;**alternateIdentifier**&gt; tag. At the entity
level, the &lt;**alternateIdentifier**&gt; should contain an alternate
name for the data table (or other entity) itself (see additional
comments under entities, below.)

### ***title (dataset)***

The dataset title element is found at this location (XPath):

**/eml:eml/ dataset/title**

**/eml:eml/method/methodStep/protocol/title**

**/eml:eml/project/title**

The dataset &lt;**title**&gt; should be descriptive and should mention
the data collected, geographic context, research site, and time frame
(what, where, and when).

Example: dataset, alternateIdentifier, shortName, title

TO DO: code block


> &lt;dataset id="FLS-1" system="FLS" scope = "system"&gt;
>
> &lt;alternateIdentifier&gt;FLS-1&lt;/alternateIdentifier&gt;
>
> &lt;shortName&gt;Arthropods&lt;/shortName&gt;
>
> &lt;title&gt;Long-term Ground Arthropod Monitoring Dataset at Ficity,
> USA from 1998 to 2003&lt;/title&gt;

### ***People and Organizations (Parties)***

People and organizations are all described using a “ResponsibleParty”
group of elements, which is found at these locations (XPath):

**/eml:eml/dataset/creator**

**/eml:eml/dataset/contact**

**/eml:eml/dataset/metadataProvider**

**/eml:eml/dataset/associatedParty**

**/eml:eml/dataset/publisher**

**/eml:eml/dataset/project/creator**

**/eml:eml/dataset/method/methodStep/protocol/creator**

*General recommendations*: When using &lt;**individualName**&gt;
elements anywhere within an EML document, names should be constructed
with English alphabetization in mind. Many sites have found that
maintaining full contact information for every creator is impractical,
however a few important contact information should be kept up to date
(see below). If a name includes a suffix, it should be included in the
&lt;**surName**&gt; element after the last name.

It is recommended to include complete contact information for a
permanent role that is independent of the person holding that position.
For example, for an information manager, site contact, pay careful
attention to phone number and use an e-mail alias that can be passed on.
(see below, under&lt;**contact**&gt;)

#### creator

This element is found at this location (XPath):

**/eml:eml/dataset/creator**

**&lt;creator&gt;** The creator is considered to be the author of the
dataset, i.e. the person(s) responsible for intellectual input into its
creation. &lt;**surName&gt;** and &lt;**givenName&gt;** elements are
used to build dataset citations, so these should be completed fully for
credit to be understandable. For long term data sets, include the name
of the LTER Site (using the &lt;**organizationName**&gt;) or role of
Site PI (using &lt;**postitionName**&gt;). It should be kept in mind
that different approaches taken by sites have lead to confusion over how
to best search for long term datasets, and searchers frequently default
to searches using PI’s last name. Therefore it is a reasonable practice
to include more creators rather than fewer, even if it blurs the credit
for long term datasets.

Example: creator

TO DO: code block

> &lt;creator id="org-1" system="FLS" scope="system"&gt;
>
> &lt;organizationName&gt;Fictitious LTER Site&lt;/organizationName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department for Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;phone phonetype="voice"&gt;(999) 999-9999&lt;/phone&gt;
>
> &lt;electronicMailAddress&gt;fsu.contact@fi.univ.edu&lt;/electronicMailAddress&gt;
>
> &lt;onlineUrl&gt;http://www.fsu.edu/&lt;/onlineUrl&gt;
>
> &lt;/creator&gt;
>
> &lt;creator id="pos-1" system="FLS" scope="system"&gt;
>
> &lt;positionName&gt;FLS Lead PI&lt;/positionName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department for Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;phone phonetype="voice"&gt;(999) 999-9999&lt;/phone&gt;
>
> &lt;electronicMailAddress&gt;fsu.leadPI@fi.univ.edu&lt;/electronicMailAddress&gt;
>
> &lt;onlineUrl&gt;http://www.fsu.edu/&lt;/onlineUrl&gt;
>
> &lt;/creator&gt;
>
> &lt;creator id="pers-1" system="FLS" scope="system"&gt;
>
> &lt;individualName&gt;
>
> &lt;salutation&gt;Dr.&lt;/salutation&gt;
>
> &lt;givenName&gt;Joe&lt;/givenName&gt;
>
> &lt;givenName&gt;T.&lt;/givenName&gt;
>
> &lt;surName&gt;Ecologist Jr.&lt;/surName&gt;
>
> &lt;/individualName&gt;
>
> &lt;organizationName&gt;FSL LTER&lt;/organizationName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department for Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;phone phonetype="voice"&gt;(999) 999-9999&lt;/phone&gt;
>
> &lt;electronicMailAddress&gt;jecologist@fi.univ.edu&lt;/electronicMailAddress&gt;
>
> &lt;onlineUrl&gt;http://www.fsu.edu/\~jecologist&lt;/onlineUrl&gt;
>
> &lt;/creator&gt;

#### ***metadataProvider***

This element is found at this location (XPath):

**/eml:eml/dataset/metadataProvider**

The &lt;**metadataProvider**&gt; element lists the person or
organization responsible for producing or providing the metadata
content. For primary data sets generated by LTER sites, the LTER site
should typically be listed under &lt;**metadataProvider**&gt; using the
&lt;**organizationName**&gt; element. For acquired data sets, where the
&lt;**creator**&gt; or &lt;**associatedParty**&gt; are not the same
people who produced the metadata content, the actual metadata content
provider should be listed instead (see Example below). Complete the
&lt;**address**&gt;, &lt;**phone**&gt;,
&lt;**electronicMailAddress**&gt;, and &lt;**onlineURL**&gt; elements
for each &lt;**metadataProvider**&gt; element.

Example: metadataProvider

> &lt;metadataProvider&gt;
>
> &lt;organizationName&gt;Fictitious LTER Site&lt;/organizationName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department of Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;phone phonetype="voice"&gt;(999) 999-9999&lt;/phone&gt;
>
> &lt;electronicMailAddress&gt;fsu@fi.univ.edu&lt;/electronicMailAddress&gt;
>
> &lt;onlineUrl&gt;http://www.fsu.edu/&lt;/onlineUrl&gt;
>
> &lt;/metadataProvider&gt;

#### ***associatedParty***

This element is found at this location (XPath):

**/eml:eml/dataset/associatedParty**

List other people who were involved with the data in some way (field
technicians, students assistants, etc.) as &lt;**associatedParty**&gt;.
All **&lt;associatedParty&gt;** trees require a &lt;**role**&gt;
element. The parent university, institution, or agency could also be
listed as an &lt;**associatedParty**&gt; using &lt;**role**&gt; of
“owner” when appropriate.

Example: associatedParty

> &lt;associatedParty id="12010" system="FLS" scope="system"&gt;
>
> &lt;individualName&gt;
>
> &lt;givenName&gt;Ima&lt;/givenName&gt;
>
> &lt;surName&gt;Testuser&lt;/surName&gt;
>
> &lt;/individualName&gt;
>
> &lt;organizationName&gt;FSL LTER&lt;/organizationName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department for Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;phone phonetype="voice"&gt;(999) 999-9999&lt;/phone&gt;
>
> &lt;electronicMailAddress&gt;itestuser@lternet.edu&lt;/electronicMailAddress&gt;
>
> &lt;onlineUrl&gt;http://search.lternet.edu/directory\_view.php?personid=12010&amp;query=itestuser&lt;/onlineUrl&gt;
>
> &lt;role&gt;Technician&lt;/role&gt;
>
> &lt;/associatedParty&gt;

#### ***contact***

This element is found at this location (XPath):

**/eml:eml/dataset/contact**

A &lt;**contact**&gt; element is required in all EML datasets. Full
contact information should be included for the position of data manager
or other designated site contact, and should be kept current and
independent of personnel changes. If several contacts are listed (e.g.
both a data and site manager) all should be kept current. Technicians
who performed the work belong under &lt;**associatedParty**&gt; rather
than &lt;**contact**&gt;. Complete the &lt;**address**&gt;,
&lt;**phone**&gt;, &lt;**electronicMailAddress**&gt;, and
&lt;**onlineURL**&gt; elements for the &lt;**contact**&gt; element.

Example: contact

> &lt;contact&gt;
>
> &lt;positionName id=”pos-4”&gt;Information
> Manager&lt;/positionName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department for Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;phone phonetype="voice"&gt;(999) 999-9999&lt;/phone&gt;
>
> &lt;electronicMailAddress&gt;fsu.data@fi.univ.edu&lt;/electronicMailAddress&gt;
>
> &lt;onlineUrl&gt;http://www.fsu.edu/&lt;/onlineUrl&gt;
>
> &lt;/contact&gt;

#### ***publisher***

This element is found at this location (XPath):

**/eml:eml/dataset/publisher**

The LTER site should be listed as the &lt;**publisher**&gt; of the data
set. List the LTER site name, fully spelled out, in the
&lt;**organizationName**&gt; element. Complete the &lt;**address**&gt;,
&lt;**phone**&gt;, &lt;**electronicMailAddress**&gt;, and
&lt;**onlineURL**&gt; elements for each publisher element.

*Recommendation for web display of LTER-EML: use &lt;**publisher**&gt;
for the organization information *

Example: publisher using a reference to a creator from above

> &lt;publisher&gt;
>
> &lt;references system=”FLS”&gt;org-1&lt;/references&gt;
>
> &lt;/publisher&gt;

### ***pubDate***

This element is found at this location (XPath):

**/eml:eml/dataset/pubDate**

The year of public release of data online should be listed as the
&lt;**pubDate**&gt; element .

### ***abstract***

This element is found at these locations (XPath):

**/eml:eml/dataset/abstract**

**/eml:eml/dataset/project/abstract**

In datasets, the abstract element can appear at the resource level or
the project level. The &lt;**abstract**&gt; element will be used for
full-text searches, and it should be rich with descriptive text.
Extensive description should include what, when, and where information,
some taxonomic information, as well as whether the dataset is ongoing or
completed. Some general methods description is appropriate, and the
measured parameters should also be included. For a large number of
parameters, use categories instead of listing all parameters (e.g. use
the term “nutrients” instead of nitrate, phosphate, calcium, etc.), in
combination with the parameters that seem most relevant for searches.

### ***keywordSet and keyword***

This element is found at these locations (XPath):

**/eml:eml/dataset/keywordSet**

**/eml:eml/dataset/project/keywordSet**

It is recommended that meaningful sets of keywords each be contained
within &lt;**keywordSet**&gt; tags. For example, use one
&lt;**keywordSet**&gt; for a keyword identifying the LTER site, one for
keywords from the LTER controlled vocabulary, one for the LTER core area
keywords, etc.. Currently each &lt;**keywordSet**&gt; can include the
name of a specific thesaurus (in the optional tag
&lt;**keywordThesaurus**&gt;). Keywords that should be included are as
many as possible from the LTER controlled vocabulary, at least one LTER
core area, the three letter site acronym, core research area(s), some
meaningful geographic place names (e.g. state, city, county), network
acronym (LTER, ILTER, etc.), organizational affiliation, funding source
(i.e. co-funded with other sources, non-LTER funding etc.). In addition
to specific keywords, relevant conceptual keywords should also be
included.

Example: pubDate, abstract,keywordSet, keyword

> &lt;pubDate&gt;2000&lt;/pubDate&gt;
>
> &lt;abstract&gt;
>
> &lt;para&gt;Ground arthropods communities are monitored in different
> habitats in a rapidly changing environment. The arthropods are
> collected in traps four times a year in ten locations and determined
> as far as possible to family, genus or species.&lt;/para&gt;
>
> &lt;/abstract&gt;
>
> &lt;keywordSet&gt;
>
> &lt;keyword keywordType="place"&gt;City&lt;/keyword&gt;
>
> &lt;keyword keywordType="place"&gt;State&lt;/keyword&gt;
>
> &lt;keyword keywordType="place"&gt;Region&lt;/keyword&gt;
>
> &lt;keyword keywordType="place"&gt;County&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;FLS&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;Fictitious LTER
> Site&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;LTER&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;Arthropods&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;Richness&lt;/keyword&gt;
>
> &lt;keywordThesaurus&gt;FLS site thesaurus&lt;/keywordThesaurus&gt;
>
> &lt;/keywordSet&gt;
>
> &lt;keywordSet&gt;
>
> &lt;keyword keywordType="theme"&gt;ecology&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;biodiversity&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;population dynamics&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;terrestrial&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;arthropods&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;pitfall trap&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;monitoring&lt;/keyword&gt;
>
> &lt;keyword keywordType="theme"&gt;abundance&lt;/keyword&gt;
>
> &lt;keywordThesaurus&gt;LTER controlled
> vocabulary&lt;/keywordThesaurus&gt;
>
> &lt;/keywordSet&gt;
>
> &lt;keywordSet&gt;
>
> &lt;keyword keywordType="theme"&gt;populations&lt;/keyword&gt;
>
> &lt;keywordThesaurus&gt;LTER core research
> areas&lt;/keywordThesaurus&gt;
>
> &lt;/keywordSet&gt;

### ***intellectualRights***

This element is found at this location (XPath):

**/eml:eml/dataset/intellectualRights **

**&lt;intellectualRights&gt;** should contain site data access policy,
plus a description of any deviation from the general access policy
specific for this particular dataset (e.g. restricted-access datasets).
The timeframe for release should be included as well. For example, LTER
Network-wide data should be released on-line within 2-3 years, and if
not, the reason needs to be documented in the metadata. (See also LTER
Network Data Access Policy:
<http://www.lternet.edu/data/netpolicy.html>)

Example: intellectualRights

> &lt;intellectualRights&gt;
>
> &lt;section&gt;
>
> &lt;title&gt;Copyright Notice&lt;/title&gt;
>
> &lt;para&gt; Copyright Board of Regents, Fictitious State University.
> This dataset is released to the public and may be used for academic,
> educational, or commercial purposes subject to the following
> restrictions:&lt;/para&gt;
>
> &lt;para&gt;
>
> &lt;itemizedlist&gt;
>
> &lt;listitem&gt;
>
> &lt;para&gt;While FLS LTER will make every effort possible to control
> and document the quality of the data it publishes, the data are made
> available "as is".&lt;/para&gt;
>
> &lt;/listitem&gt;
>
> &lt;listitem&gt;
>
> &lt;para&gt;FLS LTER cannot assume responsibility for damages
> resulting from mis-use or mis-interpretation of datasets or from
> errors or omissions that may exist in the data.&lt;/para&gt;
>
> &lt;/listitem&gt;
>
> &lt;listitem&gt;
>
> &lt;para&gt;It is considered a matter of professional ethics to
> acknowledge the work of other scientists that has resulted in data
> used in subsequent research.&lt;/para&gt;
>
> &lt;/listitem&gt;
>
> &lt;listitem&gt;
>
> &lt;para&gt;FLS LTER expects that any use of data from this server
> will be accompanied with the appropriate citations and
> acknowledgments. &lt;/para&gt;
>
> &lt;/listitem&gt;
>
> &lt;listitem&gt;
>
> &lt;para&gt;FLS LTER encourages users to contact the original
> investigator responsible for the data that they are accessing. Where
> appropriate, researchers whose projects are integrally dependent on
> FLS LTER data are encouraged to consider collaboration and/or
> co-authorship with original investigators. &lt;/para&gt;
>
> &lt;/listitem&gt;
>
> &lt;listitem&gt;
>
> &lt;para&gt;FLS LTER requests that users submit to FLS LTER one copy
> of any publication resulting from the use of data obtained from this
> site. &lt;/para&gt;
>
> &lt;/listitem&gt;
>
> &lt;listitem&gt;
>
> &lt;para&gt;FLS LTER requests that users not redistribute data
> obtained from this site. However, links or references to this site may
> be freely posted.&lt;/para&gt;
>
> &lt;/listitem&gt;
>
> &lt;/itemizedlist&gt;
>
> &lt;/para&gt;
>
> &lt;/section&gt;
>
> &lt;/intellectualRights&gt;

### ***distribution***

This element is found at these locations (XPath):

**/eml:eml/dataset/distribution**

**/eml:eml/dataset/\[entity\]/physical/distribution**

The &lt;**distribution**&gt; element appears at the dataset and entity
levels and contains information on how the data described in the EML
document can be accessed. The &lt;**distribution**&gt; element has one
of three children for describing the location of the resource:
&lt;**online**&gt;, &lt;**offline**&gt;, and &lt;**inline**&gt;.

*Offline Data*: Use the &lt;**offline&gt;** element to describe
restricted access data or data that is not available online. The minimum
that should be included is the &lt;**mediumName**&gt; tag, if using the
&lt;**offline**&gt; element.

*Inline Data*: The &lt;**inline**&gt; element contains data that is
stored directly within the EML document. Data included as text or string
will be parsed. If data are not to be parsed, encode them as “CDATA
sections,” by surrounding them with “&lt;!\[CDATA\[“ and “\]\]&gt;”
tags.

*Online Data*: The &lt;**online&gt;** element has two sub elements,
&lt;url&gt;, and &lt;onlineDescription&gt; (optional). &lt;url&gt; tags
may have an optional attribute named **function**, which may be set to
either “download” or “information”. If the URL provides only information
about downloading the object but does not directly return the data
stream, then the "function" attribute should be set to "information". If
accessing the URL directly returns the data stream, then the "function"
attribute should be set to "download". If the "function" attribute is
omitted, then "download" is implied

An EML dataset should include at least one URL; at a minimum, this
should be at the &lt;**dataset**&gt; level (XPath:
/eml:eml/dataset/distribution/url), and may point to an application or
website. This &lt;url&gt; function attribute can be set to either
“information” or “download”. However, a URL at the entity level (e.g, a
dataTable at /eml:eml/dataset/dataTable/physical/distribution/url)
should stream data to the requesting application and should include an
attribute “function” with the value “download”. In other words, at the
entity level, the URL should lead directly to the data and not to a data
catalog or intended-use page. For more information about describing a
URL connection, see the EML documentation online.

When used at the entity level, an alternative tag is available to
&lt;**url**&gt;, &lt;**connection**&gt;. This element is discussed under
data entities, below.

As of EML 2.1, there is also an optional &lt;**access**&gt; element in a
&lt;distribution&gt; tree at the data entity level
(/eml:eml/dataset/\[entity\]/physical/distribution/access). This element
is intended specifically for controlling access to the data entity
itself. For more information on the &lt;**access**&gt; tree, see above,
under the general access discussion.

Data access logging can be implemented by using the Data Access Server
(DAS) and its URL-proxy system. For more information about the DAS and
how to use it, read the online documentation:
<http://im.lternet.edu/im_practices/metadata/das>

Example: distribution

> &lt;distribution&gt;
>
> &lt;online&gt;
>
> &lt;onlineDescription&gt;f1s-1 Data Web Page&lt;/onlineDescription&gt;
>
> &lt;url
> function=”information”&gt;http://www.fsu.edu/lter/data/fls-1.htm&lt;/url&gt;
>
> &lt;/online&gt;
>
> &lt;/distribution&gt;
>
> &lt;dataTable&gt;
>
> &lt;physical&gt;
>
> …
>
> &lt;distribution&gt;
>
> &lt;online&gt;
>
> &lt;onlineDescription&gt;f1s-1 Data Web Page&lt;/onlineDescription&gt;
>
> &lt;url
> function=”download”&gt;http://www.fsu.edu/lter/data/fls-1.csv&lt;/url&gt;
>
> &lt;/online&gt;
>
> &lt;/distribution&gt;
>
> &lt;/physical&gt;
>
> &lt;/dataTable&gt;

### ***coverage***

This element is found at these locations (XPath):

**/eml:eml/dataset/coverage**

**/eml:eml/dataset/methods/sampling/studyExtent/coverage**

**/eml:eml/dataset/methods/sampling/spatialSamplingUnits/coverage**

**/eml:eml/dataset/\[entity\]/coverage**

**/eml:eml/dataset/\[entity\]/methods/sampling/studyExtent/coverage**

**/eml:eml/dataset/\[entity\]/methods/sampling/spatialSamplingUnits/coverage**

**/eml:eml/dataset/\[entity\]/attributeList/attribute/coverage**

**/eml:eml/dataset/\[entity\]/attributeList/attribute/methods/sampling/studyExtent/coverage**

**/eml:eml/dataset/\[entity\]/attributeList/attribute/methods/sampling/spatialSamplingUnits/coverage**

**/eml:eml/dataset/project/studyAreaDescription/coverage**

The &lt;**coverage**&gt; element can appear at the dataset, methods,
entity and attribute levels, and contains three elements for describing
the coverage of a dataset in terms of space, taxonomy, and time,
&lt;**geographicCoverage**&gt;, &lt;**taxanomicCoverage**&gt;, and
&lt;**temporalCoverage**&gt;. Poplulating these elements as recommended
allows for more advanced uses.

#### **geographicCoverage **

*General Information*: The &lt;**geographicCoverage**&gt; element is
used to describe geographic locations of research sites and areas
related to the dataset. It is recommended to use the element at
different levels for different types of information. Clearly there are
many ways this element can be used and this document recommends one
approach to make EML within LTER more consistent and easier to use in
applications like the LTERMapS.

At the dataset level (eml:eml/dataset/coverage) one
&lt;**geographicCoverage**&gt; element should be included, whose
&lt;**boundingCoordinates**&gt; describe the extent of the data. As a
default, the bounding box could describe the entire LTER site as stored
in SiteDB. However, it is strongly recommended that a more accurate
extent of observations be provided, i.e., the maximum extent of the
data, for each of east, west, north and south. Additional
&lt;**geographicCoverage**&gt; elements may be entered at the dataset
level if there are significant distances between study sites and it
would be confusing if they were grouped into one bounding box, For
example, cross site studies where a bounding box would represent North
American or more should have two bounding boxes, one for each site.

Example: geographicCoverage at the dataset level

> &lt;coverage&gt;
>
> &lt;geographicCoverage&gt;
>
> &lt;geographicDescription&gt;Ficity, FI metropolitan area,
> USA&lt;/geographicDescription&gt;
>
> &lt;boundingCoordinates&gt;
>
> &lt;westBoundingCoordinate&gt;-112.373614&lt;/westBoundingCoordinate&gt;
>
> &lt;eastBoundingCoordinate&gt;-111.612936&lt;/eastBoundingCoordinate&gt;
>
> &lt;northBoundingCoordinate&gt;33.708829&lt;/northBoundingCoordinate&gt;
>
> &lt;southBoundingCoordinate&gt;33.298975&lt;/southBoundingCoordinate&gt;
>
> &lt;boundingAltitudes&gt;
>
> &lt;altitudeMinimum&gt;300&lt;/altitudeMinimum&gt;
>
> &lt;altitudeMaximum&gt;600&lt;/altitudeMaximum&gt;
>
> &lt;altitudeUnits&gt;meter&lt;/altitudeUnits&gt;
>
> &lt;/boundingAltitudes&gt;
>
> &lt;/boundingCoordinates&gt;
>
> &lt;/geographicCoverage&gt;
>
> &lt;/coverage&gt;

If sampling took place in discrete point location, those sites should
appear at
eml:eml/dataset/methods/sampling/spatialSamplingUnits/coverage. A list
of individual sampling sites should be entered under
&lt;**spatialSamplingUnits**&gt;, each site in a separate coverage
element. More information about sampling sites can be found under
&lt;**methods**&gt;,

Example: geographicCoverage for single sampling point locations

> &lt;spatialSamplingUnits&gt;
>
> &lt;coverage&gt;
>
> &lt;geographicDescription&gt;sitenumber
> 1&lt;/geographicDescription&gt;
>
> &lt;boundingCoordinates&gt;
>
> &lt;westBoundingCoordinate&gt;-112.2&lt;/westBoundingCoordinate&gt;
>
> &lt;eastBoundingCoordinate&gt;-112.2&lt;/eastBoundingCoordinate&gt;
>
> &lt;northBoundingCoordinate&gt;33.5&lt;/northBoundingCoordinate&gt;
>
> &lt;southBoundingCoordinate&gt;33.5&lt;/southBoundingCoordinate&gt;
>
> &lt;/boundingCoordinates&gt;
>
> &lt;/coverage&gt;
>
> &lt;coverage&gt;
>
> &lt;geographicDescription&gt;sitenumber
> 2&lt;/geographicDescription&gt;
>
> &lt;boundingCoordinates&gt;
>
> &lt;westBoundingCoordinate&gt;-111.7&lt;/westBoundingCoordinate&gt;
>
> &lt;eastBoundingCoordinate&gt;-111.7&lt;/eastBoundingCoordinate&gt;
>
> &lt;northBoundingCoordinate&gt;33.6&lt;/northBoundingCoordinate&gt;
>
> &lt;southBoundingCoordinate&gt;33.6&lt;/southBoundingCoordinate&gt;
>
> &lt;/boundingCoordinates&gt;
>
> &lt;/coverage&gt;
>
> &lt;coverage&gt;
>
> &lt;geographicDescription&gt;sitenumber
> 3&lt;/geographicDescription&gt;
>
> &lt;boundingCoordinates&gt;
>
> &lt;westBoundingCoordinate&gt;-112.1&lt;/westBoundingCoordinate&gt;
>
> &lt;eastBoundingCoordinate&gt;-112.1&lt;/eastBoundingCoordinate&gt;
>
> &lt;northBoundingCoordinate&gt;33.7&lt;/northBoundingCoordinate&gt;
>
> &lt;southBoundingCoordinate&gt;33.7&lt;/southBoundingCoordinate&gt;
>
> &lt;/boundingCoordinates&gt;
>
> &lt;/coverage&gt;
>
> &lt;/spatialSamplingUnits&gt;

Latitudes and longitudes should be in the same commonly used datum
(i.e., all values in WGS84 or NAD83) and expressed to at least six
decimal places (the EML2.1 schema enforces decimal content).
International convention dictates that longitudes east of the prime
meridian and latitudes north of the equator be prefixed with a plus sign
(+), or by the absence of a minus sign (-), and that west longitudes and
south latitudes be prefixed with minus sign (-). See Example below. See
the EML specification for more information and other examples.

&lt;**geographicDescription**&gt; The description is a string. It should
be comprehensive and include the country, state, county or province,
city, general topography, landmarks, rivers, and other relevant
information. The method for determining &lt;**boundingCoordinates**&gt;,
&lt;**boundingAltitudes**&gt;, coordinates, datums, etc., should be
included with the &lt;**geographicDescription**&gt;, since those
elements do not encode this information.

The &lt;**datasetGPolygon**&gt; element may be included when the
bounding box does not adequately describe the study location, for
example, if irregular polygon is necessary to describe the study area,
or there is an area within the bounding box that is excluded. This
element is optional, and has two subelements.

&lt;**datasetGPolygonOuterGRing**&gt;: This is the outer part of the
polygon shape that encompasses the broadest area of coverage. It can be
created either by a gRing (list of points) or 4 or more gRingPoints.
Documentation for an FGDC G-Ring states that 4 points are required to
define a polygon, and the first and last should be identical. However
this is not enforceable in XML Schema, and so in EML a minimum of three
&lt;**gRingPoint**&gt;s is required to define the polygon, and it can be
assumed that a polygon is closed by joining the last point to the first.

The &lt;**datasetGPolygonExclusionGRing** &gt; is the closed,
nonintersecting boundary of a void area (or hole in an interior area).
This could be the center of the doughnut shape created by the
datasetGPolygon. It can be created either by a gRing (list of points) or
one or more gRingPoints. This is used if there is an internal polygon to
be excluded from the outer polygon, e.g, a lake which is excluded from
the broader geographic coverage.

There are alternative methods for including location information with
EML, especially when it is intended for use in an external application.
These include GIS shapefiles, Keyhole Markup Language (KML or KMZ), or
EML spatial modules. For more information, see Section III,
Recommendations for Compatibility with External Applications.

#### **temporalCoverage**

The &lt;**temporalCoverage**&gt; element of a dataset represents the
period of time the data were collected, not the year the study was put
together if it uses retrospective or historical data. Most commonly,
&lt;**singleDate**&gt; or &lt;**rangeOfDates**&gt; elements are used.
Sometimes an &lt;**alternativeTimeScale**&gt; is more appropriate, such
as the use of “years before present”, e.g., for long-term tree ring
chronology dating back hundreds of years. Two formats are allowed,
either a 4-digit year, or a date in ISO format: YYYY-MM-DD.

In some cases, a dataset may be considered "ongoing", i.e., data are
added continuously. It is not currently valid to leave an empty
&lt;**endDate**&gt; tag in EML. For this type of dataset, the simplest
solution is to populate the &lt;**endDate**&gt; element with the end of
the current year and update the metadata annually. Ideally, however, the
&lt;**endDate**&gt; tag should reflect only the data that have already
been included. It is better to state an end date that guarantees that
data are present up to that date with more data possibly being
available, than an end date in the future that includes a period of time
for which no data are yet available. Use the &lt;**maintanence**&gt; tag
(below) to describe the update frequency. The methods/sampling tree
should be used to describe the ongoing nature of the data collection.

Example: temporalCoverage

> &lt;temporalCoverage&gt;
>
> &lt;rangeOfDates&gt;
>
> &lt;beginDate&gt;
>
> &lt;calendarDate&gt;1998-11-12&lt;/calendarDate&gt;
>
> &lt;/beginDate&gt;
>
> &lt;endDate&gt;
>
> &lt;calendarDate&gt;2003-12-31&lt;/calendarDate&gt;
>
> &lt;/endDate&gt;
>
> &lt;/rangeOfDates&gt;
>
> &lt;/temporalCoverage&gt;

#### **taxonomicCoverage**

The &lt;**taxonomicCoverage**&gt; element should be used to document
taxonomic information for all organisms relevant to the study. The
lowest available level, preferably the species binomial and common name
should always be included, but higher level taxa should also be included
whenever possible to support broader taxonomic searches. Blocks of
&lt;**taxonomicClassification**&gt; elements should be hierarchically
nested within a single &lt;**taxonomicCoverage**&gt; element rather than
repeated at the same level. The &lt;**generalTaxonomicCoverage**&gt;
element could include a) descriptions of the general procedure of how
the taxonomy was determined (keys used, etc.), b) general textual
description of all flora/fauna in the study (scope), and c) denote how
finely grained the taxonomy is – for example to “family” or “genus and
species.”

Note that it is allowable to combine elements in the hierarchy under
like &lt;**taxonRankName**&gt; entries to create a taxonomic “tree” (not
illustrated), but this practice may impede combining and re-using
&lt;**taxonomicClassification**&gt; information from multiple documents
and is not generally recommended for data set documentation.

The optional **taxonomicCoverage/taxonomicSystem** trees may be used to
detail the use of taxonomic identification resources as well as provide
information on the identification process.
&lt;**classificationSystem**&gt; should be used to list authoritative
taxonomic databases (such as ITIS, IPNI, NCBI, Index Fungorum, or USDA
Plants) or classification systems used for taxonomic identification.
Documentation and relevant literature regarding, used authoritative
sources, including URL’s pointing to these sources, should be listed in
&lt;**classificationSystemCitation**&gt;. Exceptions to, or deviation
from, used authoritative sources should be explained in
&lt;**classificationSystemModification**&gt;.

Methods and protocols used for taxonomic classification should be
detailed using the &lt;**identifierName**&gt; and
&lt;**taxonomicProcedures**&gt; tags. Examples of methods which should
be listed in &lt;**taxonomicProcedures**&gt; are details of specimen
processing, keys, and chemical or genetic analyses.
&lt;**taxonomicCompleteness**&gt; may be used to document the status,
estimated importance, and reason for incomplete identifications.

Example: taxonomicCoverage

> &lt;taxonomicCoverage&gt;
>
> &lt;taxonomicSystem&gt;
>
> &lt;classificationSystem&gt;
>
> &lt;classificationSystemCitation&gt;
>
> &lt;title&gt;Integrated Taxonomic Information System
> (ITIS)&lt;/title&gt;
>
> &lt;creator&gt;
>
> &lt;organizationName&gt;Integrated Taxonomic Information
> System&lt;/organizationName&gt;
>
> &lt;onlineUrl&gt;http://www.itis.gov/&lt;/onlineUrl&gt;
>
> &lt;/creator&gt;
>
> &lt;generic&gt;
>
> &lt;publisher&gt;
>
> &lt;organizationName&gt;Integrated Taxonomic Information
> System&lt;/organizationName&gt;
>
> &lt;onlineUrl&gt;http://www.itis.gov/&lt;/onlineUrl&gt;
>
> &lt;/publisher&gt;
>
> &lt;/generic&gt;
>
> &lt;/classificationSystemCitation&gt;
>
> &lt;/classificationSystem&gt;
>
> &lt;identifierName&gt;
>
> &lt;references&gt;pers-1&lt;/references&gt;
>
> &lt;/idnetifierName&gt;
>
> &lt;taxonomicProcedures&gt;All individuals where identified and stored
> in alcohol, except for one voucher specimen for each species which was
> tagged and pinned.&lt;/taxonomicProcedures&gt;
>
> &lt;/taxonomicSystem&gt;
>
> &lt;generalTaxonomicCoverage&gt;Orthopteran insects (grasshoppers)
> were
>
> identified to species&lt;/generalTaxonomicCoverage&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Kingdom&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Animalia&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Phylum&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Mollusca&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Class&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Gastropoda&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Order&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Basommatophora&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Genus&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Detracia&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Species&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Detracia floridana&lt;/taxonRankValue&gt;
>
> &lt;commonName&gt;Florida Melampus&lt;/commonName&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Kingdom&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Animalia&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Phylum&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Mollusca&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Class&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Bivalvia&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Order&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Filibranchia&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Genus&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Geukensia&lt;/taxonRankValue&gt;
>
> &lt;taxonomicClassification&gt;
>
> &lt;taxonRankName&gt;Species&lt;/taxonRankName&gt;
>
> &lt;taxonRankValue&gt;Geukensia demissa&lt;/taxonRankValue&gt;
>
> &lt;commonName&gt;Ribbed Mussel&lt;/commonName&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicClassification&gt;
>
> &lt;/taxonomicCoverage&gt;

### ***maintenance***

This element is found at these locations (XPath):

**eml:eml/dataset/maintenance**

The dataset/maintenance/description element should be used to document
changes to the data tables or metadata, including update frequency. The
change history can also be used to describe alterations in static
documents. The description element (TextType) can contain both formatted
and unformatted text blocks.

Example: maintenance

> &lt;maintenance&gt;
>
> &lt;description&gt;
>
> &lt;para&gt;Data are updated annually at the end of the calendar
> year.&lt;/para&gt;
>
> &lt;/description&gt;
>
> &lt;/maintenance&gt;

### ***methods***

This element is found at these locations (XPath):

**/eml:eml/dataset/methods**

**/eml:eml/dataset/\[entity\]/methods**

**/eml:eml/dataset/\[entity\]/attributeList/attribute/methods**

*Note: in earlier EML versions, both "&lt;**method**&gt;" and
"&lt;**methods**&gt;" elements were found, which caused confusion. The
elements have now been standardized to "&lt;**methods**&gt;".*

*General Information*: The &lt;**methods&gt;** tree appears at the
dataset, entity, and attribute levels, and content is generally regarded
as human readable, not machine readable. As a ‘rule of thumb’, methods
are *descriptive*, and protocols are *prescriptive*, i.e. the methods
describe what was done when collecting data, and protocols are a set of
procedures or prescribed actions. A method often includes or follows a
particular protocol. As a minimum, a reference to an external protocol
should be given at the dataset level. However, detailed methods at this
level are preferable. If further refinement is needed, methods can be
defined for individual data entities or even individual
&lt;**attribute**&gt;s if necessary. The scope of the method defined
should match the EML document level at which it is applied. For example,
methods at the &lt;**dataset**&gt; level describe the study, for a
&lt;**dataTable**&gt; methods might include pre-/post-processing steps,
and at the &lt;**attribute**&gt; level, quality control. The use of
methods refinement varies among sites and some users prefer to have all
methods in one place. Since they are mostly for human consumption, one
detailed description of all steps taken at the dataset level is
frequently sufficient and more user friendly.

A description of methods contains the elements &lt;**methodStep**&gt;,
&lt;**sampling**&gt;, and/or &lt;**qualityControl**&gt;.

#### methodStep

At least one &lt;**methodStep**&gt; is required under
&lt;**methods**&gt;, and each step is a logical portion of the methods,
for example, field, lab and statistical. All textual methods
descriptions belong here, using &lt;**description**&gt; and TextType
tags.

At a minimum, to describe an external document two tags can be used:
&lt;**citation**&gt; for a referral to a published document or paper, or
&lt;**protocol**&gt;. At a minimum, the &lt;**protocol**&gt; requires
&lt;**title**&gt;, &lt;**creator**&gt; and &lt;**distribution**&gt;
tags, where the &lt;**distribution**&gt; tree may be used to refer to an
online document; see the recommendations above for using that tree.
Alternatively, the entire protocol may be written into EML under
protocol/methodStep.

##### instrumentation 

**The** &lt;**instrumentation&gt;** tag should contain a full
description of the instruments used, including manufacturer, model,
calibration dates and accuracy. Changes in instrumentation and dates of
changes should be mentioned earlier under the **&lt;description&gt;**.

##### dataSource

**The** &lt;**dataSource&gt;** tag is for nesting an EML dataset which
may be an input to a &lt;**methodStep**&gt; of the data being described,
e.g., calibration information for an instrument or input parameters for
a model. This element will also be used by the PASTA provenance tracking
system for recording the source data when a derived product is created
and described with EML. For more information, see Section III,
Recommendations for Compatibility with External Applications.

#### sampling 

This optional tree can contain valuable and very specific information
about the study site, coverage and frequency in addition to that listed
at other levels.

&lt;**studyExtent**&gt; Provides specific information about the temporal
and geographic extent of the study such as domains of interest in
addition to geographic, temporal, and taxonomic coverage of the study
site. It can be a surrogate for the &lt;**studyAreaDescription**&gt;
under &lt;**project**&gt;. Descriptions can be either as a simple text
using **&lt;description&gt;** or by including detailed temporal or
geographic &lt;**coverage**&gt; elements describing discrete time
periods sampled or multiple sub-regions sampled within the overall
geographic bounding box that was described at the &lt;**dataset**&gt;
level. The example shows the location of three insect traps within the
LTER site’s overall sampling area, using the coverage tree. Note that
single sampling site locations should be listed under
&lt;**spatialSamplingUnits**&gt;.

&lt;**samplingDescription**&gt; a text based version, similar to the
sampling methods section in a journal article.

**&lt;spatialSamplingUnits&gt;** This tree should contain individual
study sites or point locations. In the example, stations within the city
are listed as content in the structured coverage elements of the
studyExtent tree. The LTERMapS project plans to use content or internal
references from this tree; please see Section III for when creating
metadata for that use.

#### qualityControl

Like other trees under &lt;**methods**&gt;, &lt;**qualityControl**&gt;
can be used at the dataset, entity or attribute level, whichever is
appropriate. At its most basic, use the &lt;**description**&gt; element.
Tags are also available for a &lt;**citation**&gt; or
&lt;**protocol**&gt;.

Example: methods

> &lt;methods&gt;
>
> &lt;methodStep&gt;
>
> &lt;description&gt;
>
> &lt;section&gt;
>
> &lt;title&gt;Pitfall trap sampling for ground arthropod biodiversity
> monitoring&lt;/title&gt;
>
> &lt;para&gt;Supplies used: pitfall traps (P-16 plastic Solo cups with
> lids) metal spades and large bulb planters (to dig holes in which to
> put traps) 70% ethanol (to preserve specimens) Qorpak glass jars with
> lids from the VWR Corporation, 120ml (4oz), cap size 58-400 (comes
> included), Qorpak no. 7743C, VWR catalog no. 16195-703.&lt;/para&gt;
>
> &lt;para&gt;Between 10 and 21 traps are placed at each site in
> siutable location. &lt;/para&gt;
>
> &lt;para&gt;All trapped taxa counted and measured (body length), most
> taxa identified to Family, ants to Genus&lt;/para&gt;
>
> &lt;/section&gt;
>
> &lt;/description&gt;
>
> &lt;instrumentation&gt;SBE MicroCAT 37-SM (S/N 1790); manufacturer:
> Sea-Bird Electronics (model: 37-SM MicroCAT); parameter: Conductivity
> (accuracy: 0.0003 S/m, readability: 0.00001 S/m, range: 0 to 7 S/m);
> last calibration: Feb 28, 2001&lt;/instrumentation&gt;
>
> &lt;instrumentation&gt;SBE MicroCAT 37-SM (S/N 1790); manufacturer:
> Sea-Bird Electronics (model: 37-SM MicroCAT); parameter: Pressure
> (water) (accuracy: 0.2m, readability: 0.0004m, range: 0 to 20m); last
> calibration: Feb 28, 2001&lt;/instrumentation&gt;
>
> &lt;instrumentation&gt;SBE MicroCAT 37-SM (S/N 1790); manufacturer:
> Sea-Bird Electronics (model: 37-SM MicroCAT); parameter: Temperature
> (water) (accuracy: 0.002°C, readability: 0.0001°C, range: -5 to 35°C);
> last calibration: Feb 28, 2001&lt;/instrumentation&gt;
>
> &lt;/methodStep&gt;
>
> &lt;sampling&gt;
>
> &lt;studyExtent&gt;
>
> &lt;description&gt;
>
> &lt;para&gt; Arthropod pit fall traps are placed in three different
> locations four times a year&lt;/para&gt;
>
> &lt;/description&gt;
>
> &lt;/studyExtent&gt;
>
> &lt;samplingDescription&gt;
>
> &lt;para&gt;Six traps were set in a transect at each
> location.&lt;/para&gt;
>
> &lt;/samplingDescription&gt;
>
> &lt;spatialSamplingUnits&gt;
>
> &lt;coverage&gt;
>
> &lt;geographicDescription&gt;site number
> 1&lt;/geographicDescription&gt;
>
> &lt;boundingCoordinates&gt;
>
> &lt;westBoundingCoordinate&gt;-112.234566&lt;/westBoundingCoordinate&gt;
>
> &lt;eastBoundingCoordinate&gt;-112.234566&lt;/eastBoundingCoordinate&gt;
>
> &lt;northBoundingCoordinate&gt;33.534566&lt;/northBoundingCoordinate&gt;
>
> &lt;southBoundingCoordinate&gt;33.534566&lt;/southBoundingCoordinate&gt;
>
> &lt;/boundingCoordinates&gt;
>
> &lt;/coverage&gt;
>
> &lt;coverage&gt;
>
> &lt;geographicDescription&gt;site number
> 2&lt;/geographicDescription&gt;
>
> &lt;boundingCoordinates&gt;
>
> &lt;westBoundingCoordinate&gt;-111.745677&lt;/westBoundingCoordinate&gt;
>
> &lt;eastBoundingCoordinate&gt;-111.745677&lt;/eastBoundingCoordinate&gt;
>
> &lt;northBoundingCoordinate&gt;33.64577&lt;/northBoundingCoordinate&gt;
>
> &lt;southBoundingCoordinate&gt;33.64577&lt;/southBoundingCoordinate&gt;
>
> &lt;/boundingCoordinates&gt;
>
> &lt;/coverage&gt;
>
> &lt;coverage&gt;
>
> &lt;geographicDescription&gt;site number
> 3&lt;/geographicDescription&gt;
>
> &lt;boundingCoordinates&gt;
>
> &lt;westBoundingCoordinate&gt;-112.167899&lt;/westBoundingCoordinate&gt;
>
> &lt;eastBoundingCoordinate&gt;-112.16799&lt;/eastBoundingCoordinate&gt;
>
> &lt;northBoundingCoordinate&gt;33.76799&lt;/northBoundingCoordinate&gt;
>
> &lt;southBoundingCoordinate&gt;33.76799&lt;/southBoundingCoordinate&gt;
>
> &lt;/boundingCoordinates&gt;
>
> &lt;/coverage&gt;
>
> &lt;/spatialSamplingUnits&gt;
>
> &lt;/sampling&gt;
>
> &lt;qualityControl&gt;
>
> &lt;description&gt;
>
> &lt;para&gt;All specimens are archived for future reference. Quality
> control during data entry is achieved with standard database
> techniques of pulldowns that prevent typos and constraints. Scientists
> inspect standard data summary statistics after data
> entry.&lt;/para&gt;
>
> &lt;/description&gt;
>
> &lt;/qualityControl&gt;
>
> &lt;/methods&gt;

### ***project ***

This element is found at this location (XPath):

**/eml:eml/dataset/project**

Originally, it was recommended that a &lt;**project**&gt; tree be
included which held a very general descriptions of the project
sponsoring the data package, i.e., this LTER site. However, in practice
it has turned out that if every dataset EML contains the same project
description searches of the project tree become inefficient and bloated
with inappropriate results. Instead, the current recommendation is to
include trees for individual projects conducted at each LTER site, and
nested if smaller sub-projects using &lt;**relatedProject**&gt;.

*NOTE: Research project management may also be done using the
LTERProject schema. The supplementary XSL stylesheets for that schema
include export of EML2.1 &lt;**project**&gt; trees. For details see
online documentation:*
*[http://im.lternet.edu/project/LTERProjectDatabase](http://www.google.com/url?q=http%3A%2F%2Fintranet.lternet.edu%2Fim%2Fproject%2FLTERProjectDatabase&sa=D&sntz=1&usg=AFQjCNHZD0SrYPF5y0bseC02fmiaDji2MQ))*

Minimally, the description of an LTER site-level project should include
&lt;**title**&gt;, &lt;**personnel**&gt; and &lt;**abstract**&gt;, with
the study area description and mission statement. The
&lt;**distribution**&gt; tree should link to the project’s home page, or
alternatively could link to other publications describing the project.
These elements are all used at the dataset level; see their individual
sections for specific content recommendations.

Two elements are unique to the &lt;**project**&gt; tree:

&lt;**fundingSource**&gt; should contain the agency and grant number

&lt;**studyAreaDiscription**&gt; tree and its accompanying
&lt;**citation**&gt; tree are optional, and may be used to describe
non-coverage characteristics of the study area such as climate, geology
or disturbances or references to citable biological or geophysical
classification systems such as the Bailey Ecoregions or the Holdridge
Life Zones. The studyAreaDescirption tree also supports multiple
&lt;**coverage**&gt; elements which can be used to describe the
geographic boundaries of individual study sites within the larger area.
These can be referenced by the
studyExtent/spatialSamplingUnits/referencedEntityId. The sibling
&lt;**descriptor**&gt; tag can be used for text descriptions of the
site.

Example: project

> &lt;projec&gt;
>
> &lt;title&gt;FSL basic monitoring program&lt;/title&gt;
>
> &lt;personnel id="pers-30" system="FLS"&gt;
>
> &lt;individualName&gt;
>
> &lt;salutation&gt;Dr.&lt;/salutation&gt;
>
> &lt;givenName&gt;Eva&lt;/givenName&gt;
>
> &lt;givenName&gt;M.&lt;/givenName&gt;
>
> &lt;surName&gt;Scientist&lt;/surName&gt;
>
> &lt;/individualName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department of Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;role&gt;principalInvestigator&lt;/role&gt;
>
> &lt;/personnel&gt;
>
> &lt;personnel id="pers-130" system="FLS"&gt;
>
> &lt;individualName&gt;
>
> &lt;givenName&gt;Monica&lt;/givenName&gt;
>
> &lt;givenName&gt;D.&lt;/givenName&gt;
>
> &lt;surName&gt;Techy&lt;/surName&gt;
>
> &lt;/individualName&gt;
>
> &lt;address&gt;
>
> &lt;deliveryPoint&gt;Department for Ecology&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;Fictitious State University&lt;/deliveryPoint&gt;
>
> &lt;deliveryPoint&gt;PO Box 111111&lt;/deliveryPoint&gt;
>
> &lt;city&gt;Ficity&lt;/city&gt;
>
> &lt;administrativeArea&gt;FI&lt;/administrativeArea&gt;
>
> &lt;postalCode&gt;11111-1111&lt;/postalCode&gt;
>
> &lt;/address&gt;
>
> &lt;role&gt; principalInvestigator&lt;/role&gt;
>
> &lt;/personnel&gt;
>
> &lt;abstract&gt;
>
> &lt;para&gt;The FLS basic monitoring program consists of monitoring of
> arthropod populations, plant net primary productivity, and bird
> populations. Monitoring takes place at 3 locations, 4 times a year.
> Climate parameters a continuously measured at all
> stations.&lt;/para&gt;
>
> &lt;/abstract&gt;
>
> &lt;/project&gt;

###  ***\[entity\] = dataTable, spatialRaster, spatialVector, storedProcedure, view, otherEntity***

This element is found at this location (XPath):

**/eml:eml/dataset/dataTable**

**/eml:eml/dataset/spatialRaster**

**/eml:eml/dataset/spatialVector**

**/eml:eml/dataset/storedProcedure**

**/eml:eml/dataset/view**

**/eml:eml/dataset/otherEntity**

The entity types &lt;**dataTable**&gt;, &lt;**otherEntity**&gt; and
&lt;**view**&gt; cover many commonly encountered data structures such as
ascii data tables, KML, and images. The other choices for entity
(&lt;**spatialRaster**&gt;, &lt;**spatialVector**&gt;,
&lt;**storedProcedure**&gt;) will be addressed in more depth in a future
version of this document, however, the spatial data entities
(&lt;**spatialRaster**&gt;, &lt;**spatialVector**&gt;) can be created
via stylesheet conversions when there is ESRI or FGDC metadata available
(see section I.2.3) and examples are given below. Spatial datasets that
do not have FGDC or ESRI compliant metadata records will need to be
created by some other mechanism (e.g., manually). Vector data spatial
objects (lines, points, polygons) should use the
&lt;**spatialVector**&gt; tree and includes information about the
vector's geometry type, count and topology level. Grid or raster cell
data should be described with the &lt;**spatialRaster**&gt; tree and
include the spatial organization of the raster cells, the cell data
values, and if derived via imaging sensors, characteristics about the
image and its individual bands.

The &lt;**otherEntity**&gt; element should be used for images, and for
KML files. KML files can also be converted to &lt;**spatialVector**&gt;
types.

Every EML data entity has certain elements in common, called the
**EntityGroup** tree, which describe general information about any data
resource. Other elements are provided which are unique to each entity
type. The elements in the EntityGroup appear first, and are

&lt;**alternateIdentifier**&gt;

&lt;**entityName**&gt;

&lt;**entityDescription**&gt;

&lt;**physical**&gt; (including optional &lt;**access**&gt;)

&lt;**coverage**&gt;

&lt;**methods**&gt;

&lt;**additionalInfo**&gt;

&lt;**alternateIdentifier**&gt; (optional): The primary identifier
belongs in the id attribute of the entityName (e.g., &lt;**dataTable
id=”xxx”**&gt; , but this tag can accommodate additional identifiers
that might be used, possibly from different data management systems. It
is used similarly to the &lt;**alternateIdentifier**&gt; element at the
dataset level, above.

&lt;**entityName**&gt; (required): the name of the table, file, or
database table. Often this is the original ascii file name.

&lt;**entityDescription**&gt; This should be a longer, more descriptive
explanation of the data entity. It should describe the data contained
within the entity. Like all descriptions, it is human-readable, and
should have enough information for a user to determine if it is
appropriate for his/her use.

The **&lt;physical&gt;** tree (/eml:eml/dataset/\[entity\]/physical)
further describes the physical format of the data.

&lt;**objectName**&gt; should be the name of the file when downloaded,
or exported as text from a database. The &lt;**objectName**&gt; often is
the filename of a file in a file system or that is accessible on the
network, and might be the same as the &lt;**entityName**&gt;. However, a
physical object (file) can have several entities, e.g. an Excel workbook
with several sheets. If you are publishing Excel workbooks (not
recommended practice), put the worksheet name in the
&lt;**entityName**&gt;, and the filename in &lt;**objectName**&gt;.

&lt;**externallyDefinedFormat**&gt; For data entities in prescribed
formats (e.g., NetCDF, KML, Excel), name that format here. It is
recommended that where possible, formats follow mime type (e.g.,
“image/jpeg”). Descriptions that are software-specific should include
manufacturer, program, and version, e.g. “Microsoft Excel 2003”. A KML
file of sampling locations can be declared here as either “KML” or
“KMZ”.

*Important: Whenever possible, sites should not publish data in dated,
proprietary, binary formats such as MS-Excel workbooks.*

&lt;**distribution**&gt; provides information on how the resource is
distributed, and the contents of this tree was generally covered at the
&lt;**dataset**&gt; level. However, there are a few points which will be
reiterated here.

The content of a &lt;**url**&gt; element at the entity level should
deliver data, and not point to another application or use page. An
exception is that an LTER-NIS DAS proxy URL may be used here so that
data downloads may be logged by the Data Access Server. For more
information about the DAS and how to use it, read the online
documentation:
[http://im.lternet.edu/im\_practices/metadata/das](http://www.google.com/url?q=http%3A%2F%2Fintranet.lternet.edu%2Fim%2Fim_practices%2Fmetadata%2Fdas&sa=D&sntz=1&usg=AFQjCNF5qpXdlir91CpUJAK7phLSymWTrQ)

The &lt;**url**&gt;’s attribute, “function”, should have the value
“download”. This is implied if the “function” attribute is omitted.

As of EML 2.1, there is also an optional &lt;**access**&gt; element in a
&lt;**distribution**&gt; tree at the entity level. This element is
intended specifically for controlling access to the data entity
separately from the metadata. For more information on using the
&lt;**access**&gt; tree, refer to the general access discussion above.

*Recommendation: With the rare exception of sensitive information (for
example, data covered by the Human Subjects Act), read-access to data
entities should not be restricted.*

&lt;**coverage**&gt; provides information on the geographic, spatial and
temporal coverages used in this \[**entity**\]. See the discussion at
the dataset level for more information.

&lt;**methods**&gt; provides information on the specific methods used to
collect information in this \[**entity**\]. Please see the discussion at
the dataset level for more information.

&lt;**additionalInfo**&gt; is a text field for any material that cannot
be characterized by the other elements for the data type.

Example: The elements in the EntityGroup, showing the
&lt;**dataTable**&gt; entity.

> &lt;dataTable&gt;
>
> &lt;entityName&gt;arthro\_hab&lt;/entityName&gt;
>
> &lt;entityDescription&gt; habitat description for the sampling
>
> locations&lt;/entityDescription&gt;
>
> &lt;physical&gt;
>
> &lt;objectName&gt;fls-1.csv&lt;/objectName&gt;
>
> &lt;dataFormat&gt;
>
> &lt;textFormat&gt;
>
> &lt;numHeaderLines&gt;1&lt;/numHeaderLines&gt;
>
> &lt;numFooterLines&gt;0&lt;/numFooterLines&gt;
>
> &lt;recordDelimiter&gt;\\r&lt;/recordDelimiter&gt;
>
> &lt;numPhysicalLinesPerRecord&gt;1&lt;/numPhysicalLinesPerRecord&gt;
>
> &lt;recordDelimiter&gt;\#x0A&lt;/recordDelimiter&gt;
>
> &lt;attributeOrientation&gt;column&lt;/attributeOrientation&gt;
>
> &lt;simpleDelimited&gt;
>
> &lt;fieldDelimiter&gt;,&lt;/fieldDelimiter&gt;
>
> &lt;/simpleDelimited&gt;
>
> &lt;/textFormat&gt;
>
> &lt;/dataFormat&gt;
>
> &lt;distribution&gt;
>
> &lt;online&gt;
>
> &lt;onlineDescription&gt;f1s-1 Data File&lt;/onlineDescription&gt;
>
> &lt;url
> function=”download”&gt;http://www.fsu.edu/lter/data/fls-1.csv&lt;/url&gt;
>
> &lt;/online&gt;
>
> &lt;/distribution&gt;
>
> &lt;/physical&gt;

Each data type has a specific set of elements which follow the common
elements. Table 1 is a summary of the Entity types, with examples of
typical uses and the elements used for that type.

TO DO: there was a table here that did not reproduce. Decide if you still want it, reproduce in markdown.


### ***attributeList***

This element tree is found at (XPath):

**/eml:eml/dataset/dataTable/attributeList**

**/eml:eml/dataset/view/attributeList**

**/eml:eml/dataset/storedProcedure/attributeList**

**/eml:eml/dataset/spatialRaster/attributeList**

**/eml:eml/dataset/spatialVector/attributeList**

**/eml:eml/dataset/otherEntity/attributeList**

The &lt;**attributeList&gt;** tree is required for all data types except
for &lt;**otherEntity**&gt;. It describes all variables in a data entity
in individual &lt;**attribute**&gt; elements. The description includes
the name and definition of each attribute, its domain, definitions of
coded values, and other pertinent information.

&lt;**attributeName**&gt; is the official name of an attribute,
typically the name of a field in a data table. This is often short
and/or cryptic.

&lt;**attributeLabel**&gt; (optional): is used to provide a less
ambiguous or cryptic alternative identification than what is provided in
&lt;**attributeName**&gt;. This content may be used as a column or row
header in an HTML display.

&lt;**attributeDefinition**&gt; gives a precise and complete definition
of attribute being documented. It explains the contents of the attribute
fully so that a data user can interpret the attribute accurately.

&lt;**storageType**&gt; - may be system specific, as for a RDBMS, i.e.,
A Microsoft SQL varchar, or Oracle datetime. This field represents a
'hint' to processing systems as to how the attribute might be
represented in a system or language, but is distinct from the actual
expression of the domain of the attribute. Non system-specific values
include float, integer and string.

&lt;**measurementScale**&gt; indicates the type of scale from which
values are drawn for the attribute. One of the 5 scale types must be
used: nominal, ordinal, interval, ratio, or dateTime, as follows:

The &lt;**nominal**&gt; scale is used to represent named categories.
Values are assigned to distinguish them from other observations. This
would include a list of coded values (e.g. 1=male, 2=female), or plain
text descriptions. Columns that contain strings or simple text are
nominal. Example: plot1, plot2, plot3.

&lt;**ordinal**&gt; values are categories that have a logical or ordered
relationship to one another, but the magnitude of the differences
between the values is not defined or meaningful. Example: Low, Medium,
High.

*Note: Both the nominal and ordinal scales are considered
&lt;**nonNumericDomain**&gt; types, either text or an enumerated list.
The &lt;**enumeratedDomain**&gt; applies to coded values, and a
&lt;**codeDefinition**&gt; or a referenced entity containing the code
explanations. For &lt;**textDomain**&gt; an optional pattern may
describe the text, e.g., a US telephone number can be described by the
format “\\d\\d\\d-\\d\\d\\d-\\d\\d\\d\\d”.*

&lt;**interval**&gt; These measurements are ordinal, but in addition,
use equal-sized units on a scale between values. The starting point is
arbitrary, so a value of zero is not meaningful. Example: The Celsius
temperature scale uses degrees which are equally spaced, but where zero
does not represent “absolute zero” (i.e., the temperature at which
molecular motion stops), and 20 C is not “twice as hot” as 10 C.

&lt;**ratio**&gt; measurements have a meaningful zero point, and ratio
comparisons between values are legitimate. For example, the Kelvin scale
reflects the amount of kinetic energy of a substance (i.e., zero is the
point where a substance transmits no thermal energy), and so temperature
measured in kelvin units is a ratio measurement. Concentration is also a
ratio measurement because a solution at 10 micromolePerLiter has twice
as much substance as one at 5 micromolePerLiter.

*Note: The &lt;**interval**&gt; and &lt;**ratio**&gt; scales require
additional tags describing &lt;**unit&gt;**, the
&lt;**numericDomain&gt;**, and&lt;**precision&gt;**.*

**&lt;unit&gt;** Units should be described in correct physical units.
Terms which describe data but are not units should be used in
&lt;**attributeDefinition**&gt;. For example, for data describing
“milligrams of Carbon per square meter”, “Carbon” belongs in the
&lt;**attributeDefinition**&gt;, while the **&lt;unit&gt;** is
“milligramPerMeterSquared”.

&lt;**standardUnit**&gt; and &lt;**customUnit**&gt;: Unit names must be
either &lt;**standardUnit**&gt;, from the unit dictionary included with
EML
([http://knb.ecoinformatics.org/software/eml/eml-2.1.0/eml-unitTypeDefinitions.html\#StandardUnitDictionary](http://www.google.com/url?q=http%3A%2F%2Fknb.ecoinformatics.org%2Fsoftware%2Feml%2Feml-2.1.0%2Feml-unitTypeDefinitions.html%23StandardUnitDictionary&sa=D&sntz=1&usg=AFQjCNHWNNBs2ZW0wI-u2GrtUOs8QByDyw))
or &lt;**customUnit**&gt; and defined in the
&lt;**additionalMetadata**&gt;. For LTER EML documents, a registry and
database of units is available <http://unit.lternet.edu/unitregistry/>.
It is recommended that for LTER documents, the &lt;**customUnit**&gt;
element be used for all units with content pulled from the Unit
Registry, even in the case where a unit is listed in the standard unit
dictionary. Units in LTER documents should be added to the Unit
Registry.

For general purposes, the following guidelines (from ISO
recommendations) apply to &lt;**customUnits**&gt;: Units should be
written out, not abbreviated. Unit modifiers, such as “squared”, should
follow the unit being modified. For example, meterSquared is preferred,
while squareMeter is improper. Units should be singular, such as
“meter”, and not plural, such as “meters”.

&lt;**numericDomain**&gt; This tag includes elements specifying the
&lt;**numberType**&gt; and the minimum and maximum allowable values of a
numeric attribute. A measurement’s &lt;**numberType**&gt; should be
defined as real, natural, whole or integer as explained in EML handbook:
<http://im.lternet.edu/sites/im.lternet.edu/files/emlHandbook.pdf>. The
&lt;**bounds**&gt; are theoretical or allowable minimum and maximum
values (prescriptive), rather than the actual observed range in a data
set (descriptive). The &lt;**bounds**&gt; tree is optional.

**&lt;precision&gt;** describes the number of decimal places for the
attribute. Currently, EML does not allow more than one precision value
for a column. For example, a column containing lengths of fish may be
measured to a precision of .01 meter for one species of fish (e.g.,
large), and .001 meters for a different species, but all the data on
“fish length” are collected into one attribute and are measured using
their appropriate precision values. For these cases precision can be
omitted, but the variable precision information should be described in
detail in **method/methodStep**. Together, the information in
&lt;**numericDomain**&gt; and &lt;**precision**&gt; are sufficient to
decide upon an appropriate system-specific data type for representing a
particular attribute. For example, an attribute with a numeric domain
from 0-50,000 and a precision of 1 could be represented in the C
language using a 'long' value, but if the precision is changed to '0.5'
then a 'float' type would be needed.

The &lt;**measurementType**&gt; element , &lt;**dateTime**&gt;, is a
date-time value from the Gregorian calendar and it is recommended that
these be expressed in a format that conforms to the ISO 8601 standard.
An example of an allowable ISO date-time is “YYYY-MM-DD”, as in
2004-06-25, or, more fully, as “YYYY-MM-DDThh:mm:ssTZD” (eg
1997-07-16T19:20:30.45Z). The ISO standard is quite strict about the
structure of date components. Since legacy data often contain
non-standard dates, and existing equipment (e.g., sensors) may still be
producing non-standard dates, the EML authors have provided additional
allowable formats. See the EML documentation for a complete list. It is
important to note that the dateTime field should not be used for
recording time durations. In that case, use a &lt;**standardUnit**&gt;
such as seconds, nominalMinute or nominalDay, or a
&lt;**customUnit**&gt; that defines the unit in terms of its
relationship to SI second.

*Note: this measurement type was called &lt;**datetime**&gt; in previous
versions of EML. It was changed from all lower case
(&lt;**datetime**&gt;) to “camel case” (&lt;**dateTime**&gt;) for
internal consistency.*

The &lt;**missingValueCode**&gt; is optional, but should be included to
describe any missing value codes present in the data set (e.g. NaN, ND,
9999). The missing value code is a string, not a value, which means that
the content of this field must exactly match what appears in place of
data values for it to be correctly interpreted, For example, if data are
output with precision .01 and with missing values formatted to
“-9999.00”, then the content of the &lt;**missingValueCode**&gt; element
must be “-9999.00” not “-9999”.

The examples show two attribute trees. The first was generated from an
SQL system with a defined storage type. The second
&lt;**attributeList**&gt; includes tags for &lt;**customUnits&gt;**,
with the Unit defined in the &lt;**additionalMetadata**&gt; tree.

Example: attributeList/attribute dataTable

> &lt;attributeList&gt;
>
> &lt;attribute id="soil\_chemistry.site\_id"&gt;
>
> &lt;attributeName&gt;site\_id&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Site id as used in sites
> table&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.w3.org/2001/XMLSchema-datatypes"&gt;string&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;nominal&gt;
>
> &lt;nonNumericDomain&gt;
>
> &lt;textDomain&gt;
>
> &lt;definition&gt;Site id as used in sites table&lt;/definition&gt;
>
> &lt;/textDomain&gt;
>
> &lt;/nonNumericDomain&gt;
>
> &lt;/nominal&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="soil\_chemistry.pH"&gt;
>
> &lt;attributeName&gt;pH&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;ph of soil
> solution&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.w3.org/2001/XMLSchema-datatypes"&gt;float&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;ratio&gt;
>
> &lt;unit&gt;
>
> &lt;standardUnit&gt;dimensionless&lt;/standardUnit&gt;
>
> &lt;/unit&gt;
>
> &lt;precision&gt;0.01&lt;/precision&gt;
>
> &lt;numericDomain&gt;
>
> &lt;numberType&gt;real&lt;/numberType&gt;
>
> &lt;/numericDomain&gt;
>
> &lt;/ratio&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="pass2001.q110"&gt;
>
> &lt;attributeName&gt;q110&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Q110-Preference for front yard
> landscape&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.w3.org/2001/XMLSchema-datatypes"&gt;float&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;ordinal&gt;
>
> &lt;nonNumericDomain&gt;
>
> &lt;enumeratedDomain&gt;
>
> &lt;codeDefinition&gt;
>
> &lt;code&gt;1.00&lt;/code&gt;
>
> &lt;definition&gt;1-A desert landscape&lt;/definition&gt;
>
> &lt;/codeDefinition&gt;
>
> &lt;codeDefinition&gt;
>
> &lt;code&gt;2.00&lt;/code&gt;
>
> &lt;definition&gt;2-Mostly lawn&lt;/definition&gt;
>
> &lt;/codeDefinition&gt;
>
> &lt;codeDefinition&gt;
>
> &lt;code&gt;3.00&lt;/code&gt;
>
> &lt;definition&gt;3-Some lawn&lt;/definition&gt;
>
> &lt;/codeDefinition&gt;
>
> &lt;/enumeratedDomain&gt;
>
> &lt;/nonNumericDomain&gt;
>
> &lt;/ordinal&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="att.2"&gt;
>
> &lt;attributeName&gt;Year&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Calendar year of the observation from years
> 1990 - 2010&lt;/attributeDefinition&gt;
>
> &lt;storageType&gt;integer&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;dateTime&gt;
>
> &lt;formatString&gt;YYYY&lt;/formatString&gt;
>
> &lt;dateTimePrecision&gt;1&lt;/dateTimePrecision&gt;
>
> &lt;dateTimeDomain&gt;
>
> &lt;bounds&gt;
>
> &lt;minimum exclusive="false"&gt;1993&lt;/minimum&gt;
>
> &lt;maximum exclusive="false"&gt;2003&lt;/maximum&gt;
>
> &lt;/bounds&gt;
>
> &lt;/dateTimeDomain&gt;
>
> &lt;/dateTime&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="att.7"&gt;
>
> &lt;attributeName&gt;Count&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Number of individuals
> observed&lt;/attributeDefinition&gt;
>
> &lt;storageType&gt;integer&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;interval&gt;
>
> &lt;unit&gt;
>
> &lt;standardUnit&gt;number&lt;/standardUnit&gt;
>
> &lt;/unit&gt;
>
> &lt;precision&gt;1&lt;/precision&gt;
>
> &lt;numericDomain&gt;
>
> &lt;numberType&gt;whole&lt;/numberType&gt;
>
> &lt;bounds&gt;
>
> &lt;minimum exclusive="false"&gt;0&lt;/minimum&gt;
>
> &lt;/bounds&gt;
>
> &lt;/numericDomain&gt;
>
> &lt;/interval&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;missingValueCode&gt;
>
> &lt;code&gt;NaN&lt;/code&gt;
>
> &lt;codeExplanation&gt;value not recorded or
> invalid&lt;/codeExplanation&gt;
>
> &lt;/missingValueCode&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="att.7"&gt;
>
> &lt;attributeName&gt;cond&lt;/attributeName&gt;
>
> &lt;attributeLabel&gt;Conductivity&lt;/attributeLabel&gt;
>
> &lt;attributeDefinition&gt;measured with SeaBird Elecronics
>
> CTD-911&lt;/attributeDefinition&gt;
>
> &lt;storageType&gt;float&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;ratio&gt;
>
> &lt;unit&gt;
>
> &lt;customUnit&gt;siemensPerMeter&lt;/customUnit&gt;
>
> &lt;/unit&gt;
>
> &lt;precision&gt;0.0001&lt;/precision&gt;
>
> &lt;numericDomain&gt;
>
> &lt;numberType&gt;real&lt;/numberType&gt;
>
> &lt;bounds&gt;
>
> &lt;minimum exclusive="false"&gt;0&lt;/minimum&gt;
>
> &lt;maximum exclusive="false"&gt;40&lt;/maximum&gt;
>
> &lt;/bounds&gt;
>
> &lt;/numericDomain&gt;
>
> &lt;/ratio&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;/attributeList&gt;

The examples below show complete entity trees for
&lt;**spatialVector**&gt; and &lt;**spatialRaster**&gt; converted via
XSLT (stylesheet) from ESRI metadata format. For details see section
I.2.3.

Example: Entity and attribute information for spatialVector

> &lt;spatialVector id="Landuse for Ficity in 1955"&gt;
>
> &lt;entityName&gt;Landuse for Ficity in 1955&lt;/entityName&gt;
>
> &lt;entityDescription&gt;This GIS layer represents a reconstructed
> generalized landuse map for the area of current Ficity around the time
> period of 1955.&lt;/entityDescription&gt;
>
> &lt;physical&gt;
>
> &lt;objectName&gt;fls-20.zip&lt;/objectName&gt;
>
> &lt;dataFormat&gt;
>
> &lt;externallyDefinedFormat&gt;
>
> &lt;formatName&gt;Shapefile&lt;/formatName&gt;
>
> &lt;/externallyDefinedFormat&gt;
>
> &lt;/dataFormat&gt;
>
> &lt;distribution&gt;
>
> &lt;online&gt;
>
> &lt;onlineDescription&gt;f1s-20 Zipped Shapefile
> File&lt;/onlineDescription&gt;
>
> &lt;url function=”download”&gt;
> http://www.fsu.edu/lter/data/fls-20.zip&lt;/url&gt;
>
> &lt;/online&gt;
>
> &lt;/distribution&gt;
>
> &lt;/physical&gt;
>
> &lt;attributeList id="Landuse for Ficity in 1955.attributeList"&gt;
>
> &lt;attribute id="Landuse for Ficity in 1955.FID"&gt;
>
> &lt;attributeName&gt;FID&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Internal feature
> number.&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.esri.com/metadata/esriprof80.html"&gt;OID&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;nominal&gt;
>
> &lt;nonNumericDomain&gt;
>
> &lt;textDomain&gt;
>
> &lt;definition&gt;Sequential unique whole numbers that are
> automatically generated.&lt;/definition&gt;
>
> &lt;/textDomain&gt;
>
> &lt;/nonNumericDomain&gt;
>
> &lt;/nominal&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="Landuse for Ficity in 1955.Shape"&gt;
>
> &lt;attributeName&gt;Shape&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Feature
> geometry.&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem=http://www.esri.com/metadata/esriprof80.html&gt;Geometry&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;nominal&gt;
>
> &lt;nonNumericDomain&gt;
>
> &lt;textDomain&gt;
>
> &lt;definition&gt;Coordinates defining the
> features.&lt;/definition&gt;
>
> &lt;/textDomain&gt;
>
> &lt;/nonNumericDomain&gt;
>
> &lt;/nominal&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="Landuse for Ficity in 1955.Z955"&gt;
>
> &lt;attributeName&gt;Z955&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;This field signifies the landuse value for
> each polygon.&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.w3.org/2001/XMLSchema-datatypes"&gt;string&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;nominal&gt;
>
> &lt;nonNumericDomain&gt;
>
> &lt;enumeratedDomain&gt;
>
> &lt;codeDefinition&gt;
>
> &lt;code&gt;Agriculture&lt;/code&gt;
>
> &lt;definition&gt;Agricultural land use&lt;/definition&gt;
>
> &lt;/codeDefinition&gt;
>
> &lt;codeDefinition&gt;
>
> &lt;code&gt;Urban&lt;/code&gt;
>
> &lt;definition&gt;Urbanized area&lt;/definition&gt;
>
> &lt;/codeDefinition&gt;
>
> &lt;codeDefinition&gt;
>
> &lt;code&gt;Desert&lt;/code&gt;
>
> &lt;definition&gt;Unmodified area&lt;/definition&gt;
>
> &lt;/codeDefinition&gt;
>
> &lt;codeDefinition&gt;
>
> &lt;code&gt;Recreation&lt;/code&gt;
>
> &lt;definition&gt;Recreational land use&lt;/definition&gt;
>
> &lt;/codeDefinition&gt;
>
> &lt;/enumeratedDomain&gt;
>
> &lt;/nonNumericDomain&gt;
>
> &lt;/nominal&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;/attributeList&gt;
>
> &lt;geometry&gt;Polygon&lt;/geometry&gt;
>
> &lt;geometricObjectCount&gt;78&lt;/geometricObjectCount&gt;
>
> &lt;spatialReference&gt;
>
> &lt;horizCoordSysName&gt;NAD\_1927\_UTM\_Zone\_12N&lt;/horizCoordSysName&gt;
>
> &lt;/spatialReference&gt;
>
> &lt;/spatialVector&gt;

Example: Entity and attribute information for spatialRaster

> &lt;spatialRaster id="fi\_24k"&gt;
>
> &lt;entityName&gt;fi\_24k&lt;/entityName&gt;
>
> &lt;entityDefinition&gt;Ficiticiou State 7.5 Minute Digital Elevation
> Model&lt;/entityDefinition&gt;
>
> &lt;physical&gt;
>
> &lt;objectName&gt; fls-30.zip &lt;/objectName&gt;
>
> &lt;dataFormat&gt;
>
> &lt;externallyDefinedFormat&gt;
>
> &lt;formatName&gt;Esri Grid&lt;/formatName&gt;
>
> &lt;/externallyDefinedFormat&gt;
>
> &lt;/dataFormat&gt;
>
> &lt;distribution&gt;
>
> &lt;online&gt;
>
> &lt;onlineDescription&gt;f1s-30 zipped raster data
> File&lt;/onlineDescription&gt;
>
> &lt;url function=”download”&gt;
> http://www.fsu.edu/lter/data/fls-30.zip&lt;/url&gt;
>
> &lt;/online&gt;
>
> &lt;/distribution&gt;
>
> &lt;/physical&gt;
>
> &lt;attributeList id="fi\_24k.attributeList"&gt;
>
> &lt;attribute id="fi\_24k.ObjectID"&gt;
>
> &lt;attributeName&gt;ObjectID&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Internal feature
> number.&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.esri.com/metadata/esriprof80.html"&gt;OID&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;nominal&gt;
>
> &lt;nonNumericDomain&gt;
>
> &lt;textDomain&gt;
>
> &lt;definition&gt;Sequential unique whole numbers that are
> automatically generated.&lt;/definition&gt;
>
> &lt;/textDomain&gt;
>
> &lt;/nonNumericDomain&gt;
>
> &lt;/nominal&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="fi\_24k.Cell Value"&gt;
>
> &lt;attributeName&gt;Cell Value&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Elevation Value&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.esri.com/metadata/esriprof80.html"
>
> &gt;Integer&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;ratio&gt;
>
> &lt;unit&gt;
>
> &lt;standardUnit&gt;meter&lt;/standardUnit&gt;
>
> &lt;/unit&gt;
>
> &lt;precision/&gt;
>
> &lt;numericDomain&gt;
>
> &lt;numberType&gt;integer&lt;/numberType&gt;
>
> &lt;bounds&gt;
>
> &lt;minimum exclusive="true"&gt;-5193.000000&lt;/minimum&gt;
>
> &lt;maximum exclusive="true"&gt;14785.000000&lt;/maximum&gt;
>
> &lt;/bounds&gt;
>
> &lt;/numericDomain&gt;
>
> &lt;/ratio&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;attribute id="fi\_24k.Count"&gt;
>
> &lt;attributeName&gt;Count&lt;/attributeName&gt;
>
> &lt;attributeDefinition&gt;Count&lt;/attributeDefinition&gt;
>
> &lt;storageType
> typeSystem="http://www.esri.com/metadata/esriprof80.html"
>
> &gt;Integer&lt;/storageType&gt;
>
> &lt;measurementScale&gt;
>
> &lt;ratio&gt;
>
> &lt;unit&gt;
>
> &lt;standardUnit&gt;number&lt;/standardUnit&gt;
>
> &lt;/unit&gt;
>
> &lt;precision/&gt;
>
> &lt;numericDomain&gt;
>
> &lt;numberType&gt;whole&lt;/numberType&gt;
>
> &lt;/numericDomain&gt;
>
> &lt;/ratio&gt;
>
> &lt;/measurementScale&gt;
>
> &lt;/attribute&gt;
>
> &lt;/attributeList&gt;
>
> &lt;spatialReference&gt;
>
> &lt;horizCoordSysName&gt;NAD\_1927\_UTM\_Zone\_12N&lt;/horizCoordSysName&gt;
>
> &lt;/spatialReference&gt;
>
> &lt;horizontalAccuracy&gt;not available&lt;/horizontalAccuracy&gt;
>
> &lt;verticalAccuracy&gt;not available&lt;/verticalAccuracy&gt;
>
> &lt;cellSizeXDirection&gt;30.0&lt;/cellSizeXDirection&gt;
>
> &lt;cellSizeYDirection&gt;30.0&lt;/cellSizeYDirection&gt;
>
> &lt;numberOfBands&gt;1&lt;/numberOfBands&gt;
>
> &lt;rasterOrigin&gt;Upper Left&lt;/rasterOrigin&gt;
>
> &lt;rows&gt;21092&lt;/rows&gt;
>
> &lt;columns&gt;18136&lt;/columns&gt;
>
> &lt;verticals&gt;1&lt;/verticals&gt;
>
> &lt;cellGeometry&gt;matrix&lt;/cellGeometry&gt;
>
> &lt;/spatialRaster&gt;

### ***constraint***

This element tree is found at (XPath):

**/eml:eml/dataset/dataTable/constraint **

**/eml:eml/dataset/view/constraint **

**/eml:eml/dataset/spatialRaster/constraint **

**/eml:eml/dataset/spatialVector/constraint **

**/eml:eml/dataset/storedProcedure/constraint **

The &lt;**constraint&gt;** tree is for describing any integrity
constraints between entities (e.g. tables), as they would be maintained
in a relational management system. Use of the &lt;**constraint&gt;**
tree is encouraged when data elements contain integrity constraints from
a relational database. The example shows the constraints for the
&lt;**attributeList**&gt; described above. If there are constraints in
which several columns are involved, these should be described in
methods/qualityControl, since EML is not currently equipped to handle
keys defined by multiple columns.

&lt;**constraintType&gt;** describes the relational integrity
constraints of a relational database. This includes primary keys,
foreign keys, unique keys, etc. When the &lt;**constraint**&gt; tree is
used, all of the entities that may be referenced in the constraints
(foreignKey) should be accessible within that same package. One of the 6
constraint types must be used: primaryKey, uniqueKey, checkConstraint,
foreignKey, joinCondition, or nonNullConstraint as follows:

&lt;**primaryKey**&gt; is an element which declares the primary key in
the entity to which the defined constraint pertains.

&lt;**uniqueKey**&gt; is an element which represents a unique key within
the referenced entity. This is different from a primary key in that it
does not form any implicit foreign key relationships to other entities;
however it is required to be unique within the entity.

&lt;**nonNullConstraint**&gt; defines a constraint that indicates that
no null values should be present for an attribute in this entity.

*Note: the &lt;**primaryKey**&gt;, &lt;**uniqueKey**&gt;, &lt;
**nonNullConstraint**&gt; require an additional &lt;**key**&gt; tag
defining the set of attributes to which this constraint applies.*

&lt;**checkConstraint**&gt; defines a constraint which checks a
conditional clause within an entity.

&lt;**foreignKey**&gt; defines an SQL statement or other language
implementation of the condition for a check constraint. Generally this
provides a means for constraining the values within and among entities.
It also provides the means to meaningfully link table for explanation of
codes (de-normalization).

&lt;**joinCondition**&gt; defines a foreign key relationship among
entities which relates this entity to another's primary key.

&lt; **nonNullConstraint**&gt; defines a constraint that indicates that
no null values should be present for an attribute in this entity.

*Note: All &lt;**ConstraintType**&gt; entities require additional
&lt;**constraintName**&gt; and &lt;**attributeReference**&gt; tags. *

Example: constraint

> &lt;constraint id="soil\_chemistry.PRIMARY"&gt;
>
> &lt;primaryKey&gt;
>
> &lt;constraintName&gt;PRIMARY&lt;/constraintName&gt;
>
> &lt;key&gt;
>
> &lt;attributeReference&gt;soil\_chemistry.ID&lt;/attributeReference&gt;
>
> &lt;/key&gt;
>
> &lt;/primaryKey&gt;
>
> &lt;/constraint&gt;
>
> &lt;constraint id="soil\_chemistry.FK\_soil\_chemistry\_sites"&gt;
>
> &lt;foreignKey&gt;
>
> &lt;constraintName&gt;FK\_soil\_chemistry\_sites&lt;/constraintName&gt;
>
> &lt;key&gt;
>
> &lt;attributeReference&gt;soil\_chemistry.site\_id&lt;/attributeReference&gt;
>
> &lt;/key&gt;
>
> &lt;entityReference&gt;sites&lt;/entityReference&gt;
>
> &lt;/foreignKey&gt;
>
> &lt;/constraint&gt;

### ***additionalMetadata***

This element tree is found at (XPath):

**eml:eml/additionalMetadata**

**&lt;additionalMetadata&gt;** is a flexible field for including any
other relevant metadata that pertains to the resource being described.
Its content must be valid XML. A unit as a &lt;**customUnit**&gt; must
be described in this tree.

**&lt;describes&gt;** (optional) is a pointer to an “id” attribute on an
EML element (“id” described in another area). This pointer must be
identical to the attribute it is pointing at, so that automated
processes are able to associate &lt;**additionalMetadata**&gt; to the
described attribute. If the &lt;**describes**&gt; element is omitted, it
is assumed that the &lt;**additionalMetadata**&gt; content applies to
the entire EML document.

**&lt;metadata&gt;** contains the additional metadata to be included in
the document. The contents can be any valid XML. This element should be
used for extending EML to include metadata that is not already available
in another part of the EML specification, or to include site- or
system-specific extensions that are needed beyond the core metadata. The
additional metadata contained in this field describes the element
referenced in the 'describes' element preceding it. If
&lt;**describes**&gt; is not used, &lt;**metadata**&gt; must contain
sufficient information to define the association between
&lt;**additionalMetadata**&gt; and the attribute being described.

If the content is for definition of a &lt;customUnit&gt;, then it should
be contained in valid STMML markup, starting with &lt;unitList&gt;. The
&lt;unitList&gt; is the one exception to the use of a &lt;describes&gt;
tag for associating &lt;additionalMetadata&gt; with specific EML
elements. The EML Parser expects to find the description of a
&lt;customUnit&gt; in the id attribute of a &lt;unit&gt; element in a
&lt;unitList&gt;, i.e., at
/eml:eml/additionalMetadata/metadata/unitList/unit. For example,
“stmml:unit id="siemenPerMeter"”points at the &lt;**customUnit**&gt;
“simenPerMeter”. Content in STMML for the &lt;unit&gt; describing a
&lt;**customUnit**&gt; should be retrieved in STMML format from the Unit
Registry
([http://unit.lternet.edu/unitregistry/](http://www.google.com/url?q=http%3A%2F%2Funit.lternet.edu%2Funitregistry%2F&sa=D&sntz=1&usg=AFQjCNHww6CKpPuowRSQ114t45vDm0pm4Q)).

Example: additionalMetadata custom unit

> &lt;additionalMetadata&gt;
>
> &lt;metadata&gt;
>
> &lt;stmml:unitList&gt;
>
> &lt;stmml:unit id="siemensPerMeter" name="siemensPerMeter"
> abbreviation="S/m" unitType="conductance" parentSI="siemen"
> multiplierToSI="1" constantToSI="0"&gt;
>
> &lt;stmml:description&gt;conductivity unit&lt;/stmml:description&gt;
>
> &lt;/stmml:unit&gt;
>
> &lt;/stmml:unitList&gt;
>
> &lt;/metadata&gt;
>
> &lt;/additionalMetadata&gt;



III.3 Provenance Tracking in EML
--------------------------------

Wikitionary defines "provenance" as the "place or source of origin" of
an object (June 2010, http://en.wiktionary.org/wiki/provenance). EML has
the capacity to manage provenance of a derived object (e.g., datasets)
assuming that the source object(s) are also described by EML and can be
referenced via a network protocol (e.g.., through a metadata catalog
such as Metacat).

The EML document for the derived object consists of three significant
components:

1\) the metadata of the derived object,

2\) a description of any (if applicable) application process (e.g., unit
conversion) applied to the source object to create the derived object,
and

3\) the metadata of the source object(s).

The metadata of the derived object should follow the same “best
practices” provided here. The second two components (application
processing and source metadata), are specifically related to the
provenance of the derived object. The EML **&lt;methods&gt;** sub-tree
is an ideal container to capture provenance information since its
purpose is to document the descriptive information about the derivation.
Each derivation step will be contained in a &lt;**methodStep**&gt;
element.

The location of the &lt;**methods**&gt; tree in the new EML document
will depend on where the derived object is being described - for
example, the &lt;methods&gt; tree at the &lt;dataset&gt; level could be
used to describe the provenance information for the entire derived
object.

Example: provenance

> &lt;methods&gt;
>
> &lt;methodStep&gt;
>
> &lt;description&gt;
>
> &lt;section&gt;
>
> &lt;para&gt; We utilize NPP data collected from 1906 to 2006 from the
> ONL LTER site. The ONL NPP data unit definition is kg/m\^2/yr. This
> unit does not require conversion. &lt;/para&gt;
>
> &lt;/section&gt;
>
> &lt;/description&gt;
>
> &lt;dataSource&gt;
>
> &lt;title&gt; NPP data from ONL 1906 to 2006 &lt;/title&gt;
>
> &lt;creator&gt;
>
> &lt;organizationName&gt; ONL LTER &lt;/organizationName&gt;
>
> &lt;/creator&gt;
>
> &lt;distribution&gt;
>
> &lt;online&gt;
>
> &lt;url&gt; http://metacat.lternet.edu/knb/metacat/knb-lter-onl.23.1
> &lt;/url&gt;
>
> &lt;/online&gt;
>
> &lt;/distribution&gt;
>
> &lt;contact&gt;
>
> &lt;organizationName&gt; ONL LTER &lt;/organizationName&gt;
>
> &lt;positionName&gt; ONL Information Manager &lt;/positionName&gt;
>
> &lt;electronicMailAddress&gt; im@onl.lternet.edu
> &lt;/electronicMailAddress&gt;
>
> &lt;/contact&gt;
>
> &lt;/dataSource&gt;
>
> &lt;/methodStep&gt;
>
> &lt;/methods&gt;


IV. Descriptions of EML sample files provided with this document
================================================================

Example 1: Complete EML from which the examples in this document were
derived

Example 2: EML for the provenance example

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


