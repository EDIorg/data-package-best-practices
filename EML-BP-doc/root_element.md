# The root element: \<eml:eml> {#Root_element}

This element is the root element in all EML documents. The XPath
notation is:
**/eml:eml**

The root element holds two important parts, both of which are optional,
but recommended.

### @schemaLocation (XML attribute)

This attribute is this location (XPath):  
**/eml:eml/@schemaLocation**

The schemaLocation attribute tells a processor the name of the schema to
which the EML document belongs and where to find it. Most repositories
check schema compliance when data packages are deposited, but it is
highly recommended that data managers know how and where to specify the
schema that their metadata document should adhere to. This way, they can
validate their own work in progress, e.g., through an XML editor like
OxygenXML.

### @packageId (XML attribute)

This attribute is found at this location (XPath):  
**/eml:eml/@packageId**

As outlined elsewhere, EML preparers should manage unique identifiers
and versioning at the local level (see **@system** discussion below).
The **packageId** attribute can be used to contain the same identifier
as is used by the repository.

See Section III for other information about EML documents in Metacat.

_Context Note: The packageID attribute is required in all EML documents
submitted to EDI. It is entered into the repository software, and the
format is standardized to three parts: scope, package-number, revision.
The scope should be "edi" unless another scope is justified by prior
arrangement. See Example 1._

### Top Level Elements

An EML **dataset** is composed of up to three elements under the root
element (<**eml:eml**>):

<**access**>  
<**dataset**>  
<**additionalMetadata**>

### id, system and scope (XML attribute-group)

This attribute group can be used on these EML elements:  
<**access**>  
<**dataset**>  
<**creator**>  
<**associatedParty**>  
<**contact**>  
<**metadataProvider**>  
<**publisher**>  
<**coverage**>  
<**geographicCoverage**>  
<**temporalCoverage**,>  
<**taxonomicCoverage**>  
<**distribution**>  
<**software**>  
<**citation**>  
<**protocol**>  
<**project**>  
<**dataTable**>  
<**otherEntity**>  
<**spatialRaster**>  
<**spatialReference**>  
<**spatialVector**>  
<**storedProcedure**>  
<**view**>  
<**attribute**>  
<**constraint**>

These three attributes are found as a group and are usually optional.
The primary use of the id attribute is as an internal reference, hence
each id must be unique within one EML document. E.g.,. a <**creator**>
must have a different id than a <**dataTable**>. And if the same
person appears in seberal places (at **dataset/creator**,
**protocol/creator** or **project/creator**, the same id cannot be
repeated, so either the content of the id must be changed or a reference
used for repeated instances.

This restriction can cause problems when content is drawn from a system
with IDs (e.g. a personnel database), and is under consideration by the
EML developers. Ideally the three attributes would work together. The
**scope** attribute can have one of two values, "system" or "document".
It is preferred that when the scope is set to "system", that the
**system** attribute defines the ID-system, the **id** attribute content
is (presumably) from that system.

Currently, a reasonable general practice should be to define a
**system** on the <**eml:eml**> element and set it to the site (but
not set the system attribute at any other level), and to set
**scope**="document" on elements other than <**eml:eml**>.

---

Example 1: attributes packageId, id, system, and scope
```xml
<?xml version="1.0" encoding="UTF-8"?>
<eml:eml xmlns:ds="eml://ecoinformatics.org/dataset-2.1.0"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:eml="eml://ecoinformatics.org/eml-2.1.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xmlns:stmml="http://www.xml-cml.org/schema/stmml"
   xsi:schemaLocation="eml://ecoinformatics.org/eml-2.1.0
      https://nis.lternet.edu/eml-2.1.0/eml.xsd"
   packageId="knb-lter-fls.21.3"
   system="FLS"
   scope="system">
```
---

