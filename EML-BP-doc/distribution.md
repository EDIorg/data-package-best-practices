
# distribution

This element is found at these locations (XPath):  
**/eml:eml/dataset/distribution**  
**/eml:eml/dataset/[entity]/physical/distribution**

The <**distribution**> element can appear at both the dataset and
entity levels. 

## Dataset level
At the dataset level, the `<distribution>` element should be used for information only, 
because it applies to the entire package, not only to one entity.

_Context: The EDI repository will ignore a `<distribution>` element
at the dataset level._

---
Example 11a: distribution at the dataset level
```xml
<distribution>
   <online>
      <onlineDescription>f1s-1 Data Web Page</onlineDescription>
      <url function="information">
         http://www.fsu.edu/lter/data/fls-1.htm
      </url>
   </online>
</distribution>
```
---

## Entity level
The entity-level `<distribution>` element contains information on how that
specific data entity (e.g., data table) can be accessed. The <**distribution**> element
has one of three children for describing the location of the resource:
<**online**>, <**offline**>, and <**inline**>.

**Offline Data**: Use the <**offline**> element to describe
restricted access data or data that is not available online. The minimum
that should be included is the <**mediumName**> tag, if using the
<**offline**> element.

**Inline Data**: The <**inline**> element contains data that
is stored directly within the EML document. Data included as text or
string will be parsed. If data are not to be parsed, encode them as
"CDATA sections," by surrounding them with "`<![CDATA[`" and "`]]>`"
tags.

**Online Data**: The <**online**> element has two sub
elements, <**url**>, and <**onlineDescription**> (optional).
<**url**> tags may have an optional attribute named **function**,
which may be set to either "download" or "information". If the
"function" attribute is omitted, then "download" is implied.

**\@function="download"**: accessing the URL directly returns the data
stream

**\@function="information"**: URL leads to a data catalog, intended-use
page, or other page that provides information about downloading the
object but does not directly return the data stream, then the
"function" attribute should be set to "information".

_Context: for am EML data package to be accepted into the EDI
repository, it must include at least one URL; at the entity level (e.g.,
a dataTable at /eml:eml/dataset/dataTable/physical/distribution/url).
The URL must include the function attribute with the value "download"
(or empty, i.e., defaults to "download")._

_Context: The EDI repository system has alternatives for uploading data
entities if you do not have a server which can deliver entities via a URL (http). 
Contact EDI for more information on these options._

When used at the entity level, an alternative tag is available to
<**url**>, called <**connection**>. This element is discussed under
data entities, below.

As of EML 2.1, there is also an optional <**access**> element in a
<**distribution**> tree at the data entity level
**(/eml:eml/dataset/[entity]/physical/distribution/access**). This
element is intended specifically for controlling access to the data
entity itself. For more information on the <**access**> tree, see
above, under the general access discussion.

---

Example 11b: distribution at the data entity level
```xml
<dataTable>
   <physical>
   ...
      <distribution>
         <online>
            <onlineDescription>f1s-1 Data Web Page</onlineDescription>
            <url function="download">
               http://www.fsu.edu/lter/data/fls-1.csv
            </url>
         </online>
      </distribution>
   </physical>
</dataTable>
```
---
