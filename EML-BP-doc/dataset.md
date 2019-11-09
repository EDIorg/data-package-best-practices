
## dataset {#dataset}

This element is found at these locations (XPath):  
**/eml:eml/dataset**

Under <**dataset**>, the following elements are available. Some are
optional, but if they appear, this order is enforced by the schema.
Generally, the recommendations are presented here in this order, with
the exception of elements related to people and organizations which are
grouped together so that the distinctions between the uses of those
elements are clear. Elements that can appear at different levels within
an EML file are discussed at their first appearance, or highest level.

<**alternateIdentifer**>  
<**shortName**>  
<**title**>  
<**creator**>  
<**metadataProvider**>  
<**associatedParty**>  
<**pubDate**>  
<**language**>  
<**series**>  
<**abstract**>  
<**keywordSet**>  
<**additionalInfo**>  
<**intellectualRights**>  
<**distribution**>  
<**coverage**>  
<**purpose** >  
<**maintenance**>  
<**contact**>  
<**publisher**>  
<**pubPlace**>  
<**project**>  

These elements are then followed by one or more elements for the data
entity (or entities), designated by choosing:

[ **dataTable** | **spatialRaster** | **spatialVector** |
**storedProcedure** | **view** | **otherEntity** ]

### alternateIdentifier

The alternateIdentifier element is found at this location (XPath):  
**/eml:eml/ dataset/alternateIdentifier**  
**/eml:eml/ dataset/[entity]/alternateIdentifier**

The contributing organization's local data set identifier should be
listed as the EML <**alternateIdentifier**>, particularly when it
differs from the "**packageId**" attribute in the <**eml:eml**>
element. The <**alternateIdentifier**> should also be used to denote
that a package belongs to more than contributing organization by
including each individual ID in a separate <**alternateIdentifier**>
tag. At the entity level, the <**alternateIdentifier**> should contain
an alternate name for the data table (or other entity) itself (see
additional comments under entities, below.)

### title (dataset)

The dataset title element is found at this location (XPath):  
**/eml:eml/ dataset/title**  
**/eml:eml/method/methodStep/protocol/title**  
**/eml:eml/project/title**

The dataset <**title**> should be descriptive and should mention the
data collected, geographic context, research site, and time frame (what,
where, and when).

---

Example 3: dataset, alternateIdentifier, shortName, title
```xml
<dataset id="FLS-1" system="FLS" scope = "system">
   <alternateIdentifier>FLS-1</alternateIdentifier>
   <shortName>Arthropods</shortName>
   <title>Long-term Ground Arthropod Monitoring Dataset at Ficity, USA
      from 1998 to 2003</title>
```
---
