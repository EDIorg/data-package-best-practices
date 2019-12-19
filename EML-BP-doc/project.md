
# project

This element is found at this location (XPath):  
**/eml:eml/dataset/project**

**General information**: EML is one of the few specifications
with a detailed tree dedicated to projects, and which can be nested,
using <**relatedProject**> At its simplest, a <**project**> tree can
hold a general descriptions of the project sponsoring the data package
and nested if smaller sub-projects. A related project Minimally, the
description of a project should include <**title**>, <**personnel**>
and <**abstract**>, with the study area description and mission
statement. The <**distribution**> tree should link to the project's
home page, or alternatively could link to a publication describing the
project. As stated earlier, the description of elements that are reused
(e.g., XML types) are discussed where they first appear, so the
descriptions for these three elements (<**title**>, <**personnel**>
and <**abstract**>) can be found above, under <**dataset**>, above.
Two elements are unique to the <**project**> tree,
<**fundingSource**> and <**studyAreaDiscription**>.

<**fundingSource**> should contain the agency and grant number. It is
not optional.

<**studyAreaDiscription**> tree and its accompanying <**citation**>
tree are optional, and may be used to describe non-coverage
characteristics of the study area such as climate, geology or
disturbances or references to citable biological or geophysical
classification systems such as the Bailey Ecoregions or the Holdridge
Life Zones. The **studyAreaDiscription** tree also supports multiple
<**coverage**> elements that can be used to describe the geographic
boundaries of individual study sites within the larger area. These can
be referenced by the
**studyExtent/spatialSamplingUnits/referencedEntityId**. The sibling
<**descriptor**> tag can be used for text descriptions of the site.


Example 19: project
```xml
<project>
   <title>FSL basic monitoring program</title>
   <personnel id="pers-30" system="FLS">
      <individualName>
         <salutation>Dr.</salutation>
         <givenName>Eva</givenName>
         <givenName>M.</givenName>
         <surName>Scientist</surName>
      </individualName>
      <address>
         <deliveryPoint>Department of Ecology</deliveryPoint>
         <deliveryPoint>Fictitious State University</deliveryPoint>
         <deliveryPoint>PO Box 111111</deliveryPoint>
         <city>Ficity</city>
         <administrativeArea>FI</administrativeArea>
         <postalCode>11111-1111</postalCode>
      </address>
      <role>principalInvestigator</role>
   </personnel>
   <personnel id="pers-130" system="FLS">
      <individualName>
         <givenName>Monica</givenName>
         <givenName>D.</givenName>
         <surName>Techy</surName>
      </individualName>
      <address>
         <deliveryPoint>Department for Ecology</deliveryPoint>
         <deliveryPoint>Fictitious State University</deliveryPoint>
         <deliveryPoint>PO Box 111111</deliveryPoint>
         <city>Ficity</city>
         <administrativeArea>FI</administrativeArea>
         <postalCode>11111-1111</postalCode>
      </address>
      <role>principalInvestigator</role>
   </personnel>
   <abstract>
      <para>The FLS basic monitoring program consists of monitoring of
         arthropod populations, plant net primary productivity, and bird
         populations. Monitoring takes place at 3 locations, 4 times a year.
         Climate parameters a continuously measured at all stations.</para>
   </abstract>
</project>
```
