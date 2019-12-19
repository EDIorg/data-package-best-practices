# The root element: \<eml:eml> {#Root_element}

This element is the root element in all EML documents. The XPath
notation is:
**/eml:eml**

The root element holds two important parts, both of which are optional,
but recommended.

## \@schemaLocation (XML attribute)

This attribute is this location (XPath):  
**/eml:eml/\@schemaLocation**

The schemaLocation attribute tells a processor the name of the schema to
which the EML document belongs and where to find it. Most repositories
check schema compliance when data packages are deposited, but it is
highly recommended that data managers know how and where to specify the
schema that their metadata document should adhere to. This way, they can
validate their own work in progress, e.g., through an XML editor like
OxygenXML.

## \@packageId (XML attribute)

This attribute is found at this location (XPath):  
**/eml:eml/\@packageId**

As outlined elsewhere, EML preparers should manage unique identifiers
and versioning at the local level (see **\@system** discussion below).
The **packageId** attribute can be used to contain the same identifier
as is used by the repository.

_Context Note: The packageID attribute is required in all EML documents
submitted to the EDI repository. It is entered into the repository software, 
and theformat is standardized to three parts: scope, package-number, revision.
The scope should be "edi" unless another scope is justified by prior
arrangement. See Example 1._


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

