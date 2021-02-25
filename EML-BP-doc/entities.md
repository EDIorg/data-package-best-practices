
# [entity] = dataTable, spatialRaster, spatialVector, storedProcedure, view, otherEntity

This element is found at this location (XPath):  
**/eml:eml/dataset/dataTable**  
**/eml:eml/dataset/spatialRaster**  
**/eml:eml/dataset/spatialVector**  
**/eml:eml/dataset/storedProcedure**  
**/eml:eml/dataset/view**  
**/eml:eml/dataset/otherEntity**

**General information**: If at all possible, do not publish
data in dated, proprietary, binary formats such as MS-Excel, and
instead, export to plain text representations such as csv. The entity
types <**dataTable**>, <**otherEntity**> and <**view**> cover many
commonly encountered data structures and are covered here.
<**spatialRaster**>, <**spatialVector**>, <**storedProcedure**>)
will be addressed in more depth in a future version of this document.
Table 1 gives the general features of EML's six entity types, to assist
in selection.

Table 1. Summary of the six entities in EML 2, including the type of
data entity typically described with that element, how they are created
and a brief description of its metadata.

<table>
  <tr>
    <th>Element name</th>
    <th>Used for</th>
    <th>Created from</th>
    <th>Metadata features</th>
  </tr>
  <tr>
    <td>dataTable</td>
    <td>Static ASCII tables</td>
    <td>export from code, RDBMS or spreadsheets</td>
    <td>columns/rows named and defined, e.g., measurement and storage typing</td>
  </tr>
  <tr>
    <td>otherEntity</td>
    <td>Binary files, images, maps, KML, KMZ, code</td>
    <td>applications</td>
    <td>type of entity</td>
  </tr>
  <tr>
    <td>spatialRaster</td>
    <td>grid, raster cell data, remote sensing data</td>
    <td>applications, stylesheet conversions. See "Other Resources"</td>
    <td>spatial organization of the raster cells, their data values, and if derived via imaging sensors, characteristics about the image and its individual bands</td>
  </tr>
  <tr>
    <td>spatialVector</td>
    <td>lines, points polygons, KML (if converted), ESRI shape files</td>
    <td>applications, stylesheet conversions. See "Other Resources"</td>
    <td>information about the vector's geometry type, count and topology level</td>
  </tr>
  <tr>
    <td>view</td>
    <td>Data returned from a database query</td>
    <td>RDBMS</td>
    <td>similar to dataTable, plus description of the query</td>
  </tr>
  <tr>
    <td>storedProcedure</td>
    <td>Data returned from a stored procedure in a database</td>
    <td>RDBMS</td>
    <td>similar to dataTable, plus procedure’s parameters</td>
  </tr>
</table>

Every EML data entity has a set of elements in common, called the
**EntityGroup** tree, which describe general information about any data
resource. Other elements are provided which are unique to each entity
type. The elements in the **EntityGroup** appear first, and are

<**alternateIdentifier**>  
<**entityName**>  
<**entityDescription**>  
<**physical**> (including optional <**access**>)  
<**coverage**>  
<**methods**>  
<**additionalInfo**>

<**alternateIdentifier**> (optional): The primary identifier belongs
in the id attribute of the entityName (e.g., <**dataTable id="xxx"**>
, but this tag can accommodate additional identifiers that might be
used, possibly from different data management systems. It is used
similarly to the <**alternateIdentifier**> element at the dataset
level, above.

<**entityName**> (required): the name of the table, file or database
table. In the early phases of EML adoption, this was often the original
ASCII file name. However, a better analogy is that the
<**entityName**> is a class, e.g., "FLS time series of air temperature
at field station", with its instantiation (filename) in the
<**objectName**> element (see below).

_Context: The EDI repository requires that <**entityName**>s be unique
within the entity._

<**entityDescription**> This should be a longer, more descriptive
explanation of the data in the entity. Like all descriptions, it is
human-readable, and should help determine if it is appropriate for a
particular use.

The <**physical**> tree (**/eml:eml/dataset/[entity]/physical**)
further describes the physical format of the data.

<**objectName**> should be the name of the file when downloaded, or
exported as text from a database. The <**objectName**> often is the
filename of a file in a file system or that is accessible on the
network.

<**externallyDefinedFormat**> For data entities in prescribed formats
(e.g., NetCDF, KML, Excel), name that format in **externallyDefinedFormat/formatName**.
It is recommended that where possible, formats are drawn from formatNames in
[DataONE's objectFormaList](https://cn.dataone.org/cn/v2/formats).
Descriptions that are software-specific should include manufacturer,
program, and version, e.g., "Microsoft Excel OpenXML".

<**distribution**> provides information on how the resource is
distributed, and the contents of this tree was generally covered at the
dataset level. However, there are a few points which will be reiterated
here.

The content of a <**url**> element at the entity level should deliver
data, and not point to another application or use page. The
<**url**>'s attribute, "function", should have the value "download".
This is implied if the "function" attribute is omitted.

As of EML 2.1, there is also an optional <**access**> element in a
<**distribution**> tree at the entity level. This element is intended
specifically for controlling access to the data entity separately from
the metadata. For more information on using the <**access**> tree,
refer to the general access discussion above.

<**coverage**> provides information on the geographic, spatial and
temporal coverages used in this [**entity**]. See the discussion at
the dataset level for more information.

<**methods**> provides information on the specific methods used to
collect information in this [**entity**]. Please see the discussion at
the dataset level for more information.

<**additionalInfo**> is a text field for any material that cannot be
characterized by the other elements for the data type.



Example 20: The elements in the EntityGroup, showing the <dataTable> entity.
```xml
<dataTable>
   <entityName>arthro_hab</entityName>
   <entityDescription>
      habitat description for the sampling locations
   </entityDescription>
   <physical>
      <objectName>fls-1.csv</objectName>
      <dataFormat>
         <textFormat>
            <numHeaderLines>1</numHeaderLines>
            <numFooterLines>0</numFooterLines>
            <recordDelimiter>\\r</recordDelimiter>
            <numPhysicalLinesPerRecord>1</numPhysicalLinesPerRecord>
            <recordDelimiter>\#x0A</recordDelimiter>
            <attributeOrientation>column</attributeOrientation>
            <simpleDelimited>
               <fieldDelimiter>,</fieldDelimiter>
            </simpleDelimited>
         </textFormat>
      </dataFormat>
      <distribution>
         <online>
            <onlineDescription>f1s-1 Data File</onlineDescription>
            <url function="download">http://www.fsu.edu/lter/data/fls-1.csv</url>
         </online>
      </distribution>
   </physical>
</dataTable>
```


Each data type has a specific set of elements that follow the common
elements. Table 2 shows the specific trees that are applied to each of
the data type.

Table 2. Elements specific to each of the six entity types.

<table>
  <tr>
    <th>Entity Type</th>
    <th>Typical Uses</th>
    <th>Elements following EntityGroup</th>
  </tr>
  <tr>
    <td>&lt;<strong>dataTable</strong>&gt;</td>
    <td>Static ASCII tables</td>
    <td>&lt;<strong>attributeList</strong>&gt;<br>
    &lt;<strong>constraint</strong>&gt;<br>
    &lt;<strong>caseSensitivity</strong>&gt;<br>
    &lt;<strong>numberOfRecords</strong>&gt;</td>
  </tr>
  <tr>
    <td>&lt;<strong>view</strong>&gt;</td>
    <td>Data returned from a database query</td>
    <td>&lt;<strong>attributeList</strong>&gt;<br>
    &lt;<strong>constraint</strong>&gt;<br>
    &lt;<strong>queryStatement</strong>&gt;</td>
  </tr>
  <tr>
    <td>&lt;<strong>storedProcedure</strong>&gt;</td>
    <td>Data returned from a stored procedure in a database</td>
    <td>&lt;<strong>attributeList</strong>&gt;<br>
    &lt;<strong>constraint</strong>&gt;<br>
    &lt;<strong>parameter</strong>&gt;</td>
  </tr>
  <tr>
    <td>&lt;<strong>otherEntity</strong>&gt;</td>
    <td></td>
    <td>&lt;<strong>attributeList</strong>&gt;<br>
    &lt;<strong>constraint</strong>&gt;<br>
    &lt;<strong>entityType</strong>&gt;</td>
  </tr>
  <tr>
    <td>&lt;<strong>spatialRaster</strong>&gt;</td>
    <td>Lines, points polygons, KML (if converted), ESRI shape files</td>
    <td>&lt;<strong>attributeList</strong>&gt;<br>
    &lt;<strong>constraint</strong>&gt;<br>
    &lt;<strong>spatialReference</strong>&gt;<br>
    &lt;<strong>georeferenceInfo</strong>&gt;<br>
    &lt;<strong>horizontalAccuracy</strong>&gt;<br>
    &lt;<strong>verticalAccuracy</strong>&gt;<br>
    &lt;<strong>cellSizeYDirection</strong>&gt;<br>
    &lt;<strong>numberOfBands</strong>&gt;<br>
    &lt;<strong>rasterOrigin</strong>&gt;<br>
    &lt;<strong>rows</strong>&gt;<br>
    &lt;<strong>columns</strong>&gt;<br>
    &lt;<strong>verticals</strong>&gt;<br>
    &lt;<strong>cellGeometry</strong>&gt;<br>
    &lt;<strong>toneGradation</strong>&gt;<br>
    &lt;<strong>scaleFactor</strong>&gt;<br>
    &lt;<strong>offset</strong>&gt;<br>
    &lt;<strong>imageDescription</strong>&gt;</td>
  </tr>
  <tr>
    <td>&lt;<strong>spatialVector</strong>&gt;</td>
    <td>Lines, points polygons, KML (if converted), ESRI shape files</td>
    <td>&lt;<strong>attributeList</strong>&gt;<br>
    &lt;<strong>constraint</strong>&gt;<br>
    &lt;<strong>geometry</strong>&gt;<br>
    &lt;<strong>geometricObjectCount</strong>&gt;<br>
    &lt;<strong>topolgyLevel</strong>&gt;<br>
    &lt;<strong>spatialReference</strong>&gt;<br>
    &lt;<strong>horizontalAccuracy</strong>&gt;<br>
    &lt;<strong>vericalAccuracy</strong>&gt;</td>
  </tr>
</table>

# attributeList

This element tree is found at (XPath):  
**/eml:eml/dataset/dataTable/attributeList**  
**/eml:eml/dataset/view/attributeList**  
**/eml:eml/dataset/storedProcedure/attributeList**  
**/eml:eml/dataset/spatialRaster/attributeList**  
**/eml:eml/dataset/spatialVector/attributeList**  
**/eml:eml/dataset/otherEntity/attributeList**

The <**attributeList**> tree is required for all data types except for
<**otherEntity**>. It describes all variables in a data entity in
individual <**attribute**> elements. The description includes the name
and definition of each attribute, its domain, definitions of coded
values, and other pertinent information.

<**attributeName**> is typically the name of a field in a data table.
This is often short and/or cryptic. It is recommended that
attributeNames be suitable for use as a variable, e.g., composed of
ASCII characters, and that the <**attributeName**>s match the column
headers of a CSV or other text table.

_Context: in the EDI repository,_ <**attributeName**>_s must be unique
within a data entity._

<**attributeLabel**> (optional): is used to provide a less ambiguous
or less cryptic alternative identification than what is provided in
<**attributeName**>. <**attributeLabel**> is likely to be used as a
column or row header in an HTML display.

<**attributeDefinition**> gives a precise and complete definition of
attribute being documented. It explains the contents of the attribute
fully so that a data user can interpret the attribute accurately.

<**storageType**> may be system specific, as for a RDBMS, i.e., A
Microsoft SQL varchar, or Oracle datetime. This field represents a
'hint' to processing systems as to how the attribute might be
represented in a system or language, but is distinct from the actual
expression of the domain of the attribute. Non system-specific values
include float, integer and string.

<**measurementScale**> indicates the type of scale from which values
are drawn for the attribute. EML's attribute-unit model is described in
detail; see "Other Resources". One of the 5 scale types must be used:
nominal, ordinal, interval, ratio, or dateTime, as follows:

#### Non-numeric types:

The <**nominal**> scale is used to represent named categories. Values are
assigned to distinguish them from other observations. This would include
a list of coded values (e.g. 1=male, 2=female), or plain text
descriptions. Columns that contain strings or simple text are nominal.
Example: plot1, plot2, plot3.

<**ordinal**> values are categories that have a logical or ordered
relationship to one another, but the magnitude of the differences
between the values is not defined or meaningful. Example: Low, Medium,
High.

Both the nominal and ordinal scales are <**nonNumericDomain**> types,
and can be either text or an enumerated list. The
<**enumeratedDomain**> applies to coded values, and requires a
<**codeDefinition**> or a referenced entity containing the code
explanations. For <**textDomain**> an optional pattern may describe
the text, e.g., a US telephone number can be described by the format
"\\d\\d\\d-\\d\\d\\d-\\d\\d\\d\\d".

#### Numeric types:

<**interval**> measurements are ordinal, but in addition, use
equal-sized units on a scale between values. Because the units are equal
sized, these measurements are numeric. However, the starting point is
arbitrary, so a value of zero is not meaningful. For example, the
Celsius temperature scale uses degrees which are equally spaced, but
where zero does not represent "absolute zero" (i.e., the temperature at
which molecular motion stops), and 20 C is not "twice as hot" as 10 C.

<**ratio**> measurements have a meaningful zero point, and ratio
comparisons between values are legitimate. For example, the Kelvin scale
reflects the amount of kinetic energy of a substance (i.e., zero is the
point where a substance transmits no thermal energy), and so temperature
measured in kelvin units is a ratio measurement. Concentration is also a
ratio measurement because a solution at 10 micromolePerLiter has twice
as much substance as one at 5 micromolePerLiter.

The numeric types <**interval**> and <**ratio**> scales require
additional tags describing the <**unit>**, <**numericDomain>**,
and<**precision>**.

<**unit**> Units should be described in correct physical units. Terms
which describe data but are not units should be used in
<**attributeDefinition**>. For example, for data describing
"milligrams of Carbon per square meter", "Carbon" belongs in the
<**attributeDefinition**>, while the <**unit**> is
"milligramPerMeterSquared".

<**standardUnit**> and <**customUnit**>: Unit names must be either
<**standardUnit**>, from the unit dictionary included with EML
([http://knb.ecoinformatics.org/software/eml/eml-2.1.0/eml-unitTypeDefinitions.html\#StandardUnitDictionary](http://knb.ecoinformatics.org/software/eml/eml-2.1.0/eml-unitTypeDefinitions.html\#StandardUnitDictionary))
or <**customUnit**> and defined in the <**additionalMetadata**>.

For general purposes, the following guidelines (from ISO
recommendations) apply to <**customUnits**>: Units should be written
out, not abbreviated. Unit modifiers, such as "squared", should follow
the unit being modified. For example, meterSquared is preferred, while
squareMeter is improper. Units should be singular, such as "meter", and
not plural, such as "meters".

_Context: EDI has adopted the LTER Unit Registry and recommends that
<**customUnit**> element be used for all units with content pulled
from the Unit Registry, even when the unit is already listed in the
standard unit dictionary._

<**numericDomain**> This tag includes elements specifying the
<**numberType**> and the minimum and maximum allowable values of a
numeric attribute. A measurement's <**numberType**> should be defined
as real, natural, whole or integer as explained in EML handbook: (see
"Other Resources"). The <**bounds**> are theoretical or allowable
minimum and maximum values (prescriptive), rather than the actual
observed range in a data set (descriptive). The <**bounds**> tree is
optional.

<**precision**> describes the number of decimal places for the
attribute. Currently, EML does not allow more than one precision value
for a column. For example, a column containing lengths of fish may be
measured to a precision of .01 meter for one species of fish (e.g.,
large), and .001 meters for a different species, but all the data on
"fish length" are collected into one attribute and are measured using
their appropriate precision values. For these cases precision can be
omitted, but the variable precision information should be described in
detail in **method/methodStep**. Together, the information in
<**numericDomain**> and <**precision**> are sufficient to decide
upon an appropriate system-specific data type for representing a
particular attribute. For example, an attribute with a numeric domain
from 0-50,000 and a precision of 1 could be represented in the C
language using a 'long' value, but if the precision is changed to
'0.5' then a 'float' type would be needed.

The <**measurementType**> element, <**dateTime**>, is a date-time
value from the Gregorian calendar and it is recommended that these be
expressed in a format that conforms to the ISO 8601 standard. An example
of an allowable ISO date-time is "YYYY-MM-DD", as in 2004-06-25, or,
more fully, as "YYYY-MM-DDThh:mm:ssTZD" (eg 1997-07-16T19:20:30.45Z).
The ISO standard is quite strict about the structure of date components.
Since legacy data often contain non-standard dates, and existing
equipment (e.g., sensors) may still be producing non-standard dates, the
EML authors have provided additional allowable formats. See the EML
documentation for a complete list. It is important to note that the
dateTime field should not be used for recording time durations. In that
case, use a unit such as seconds, nominalMinute or nominalDay, that
defines the duration in terms of its relationship to SI second.

The <**missingValueCode**> is optional, but should be included to
describe any missing value codes present in the data set (e.g. NA, NaN,
ND, 9999). The missing value code is a string, not a value, which means
that the content of this field must exactly match what appears in place
of data values for it to be correctly interpreted. For example, if data
are output with precision .01 and with missing values formatted to
"-9999.00", then the content of the <**missingValueCode**> element
must be "-9999.00" not "-9999".

The examples show two attribute trees. The first was generated from an
SQL system with a defined storage type. The second <**attributeList**>
includes tags for <**customUnits**>, with the Unit defined in the
<**additionalMetadata**> tree.



Example 21: attributeList/attribute dataTable
```xml
<attributeList>
   <attribute id="soil_chemistry.site_id">
      <attributeName>site_id</attributeName>
      <attributeDefinition>Site id as used in sites table</attributeDefinition>
      <storageType typeSystem="http://www.w3.org/2001/XMLSchema-datatypes">string</storageType>
      <measurementScale>
         <nominal>
            <nonNumericDomain>
               <textDomain>
                  <definition>Site id as used in sites table</definition>
               </textDomain>
            </nonNumericDomain>
         </nominal>
      </measurementScale>
   </attribute>
   <attribute id="soil_chemistry.pH">
      <attributeName>pH</attributeName>
      <attributeDefinition>ph of soil solution</attributeDefinition>
      <storageType typeSystem="http://www.w3.org/2001/XMLSchema-datatypes">float</storageType>
      <measurementScale>
         <ratio>
            <unit>
               <standardUnit>dimensionless</standardUnit>
            </unit>
            <precision>0.01</precision>
            <numericDomain>
               <numberType>real</numberType>
            </numericDomain>
         </ratio>
      </measurementScale>
   </attribute>
   <attribute id="pass2001.q110">
      <attributeName>q110</attributeName>
      <attributeDefinition>Q110-Preference for front yard landscape</attributeDefinition>
      <storageType typeSystem="http://www.w3.org/2001/XMLSchema-datatypes">float</storageType>
      <measurementScale>
         <ordinal>
            <nonNumericDomain>
               <enumeratedDomain>
                  <codeDefinition>
                     <code>1.00</code>
                     <definition>1-A desert landscape</definition>
                  </codeDefinition>
                  <codeDefinition>
                     <code>2.00</code>
                     <definition>2-Mostly lawn</definition>
                  </codeDefinition>
                  <codeDefinition>
                     <code>3.00</code>
                     <definition>3-Some lawn</definition>
                  </codeDefinition>
               </enumeratedDomain>
            </nonNumericDomain>
         </ordinal>
      </measurementScale>
   </attribute>
   <attribute id="att.2">
      <attributeName>Year</attributeName>
      <attributeDefinition>Calendar year of the observation from years 1990 - 2010</attributeDefinition>
      <storageType>integer</storageType>
      <measurementScale>
         <dateTime>
            <formatString>YYYY</formatString>
            <dateTimePrecision>1</dateTimePrecision>
            <dateTimeDomain>
               <bounds>
                  <minimum exclusive="false">1993</minimum>
                  <maximum exclusive="false">2003</maximum>
               </bounds>
            </dateTimeDomain>
         </dateTime>
      </measurementScale>
   </attribute>
   <attribute id="att.7">
      <attributeName>Count</attributeName>
      <attributeDefinition>Number of individuals observed</attributeDefinition>
      <storageType>integer</storageType>
      <measurementScale>
         <interval>
            <unit>
               <standardUnit>number</standardUnit>
            </unit>
            <precision>1</precision>
            <numericDomain>
               <numberType>whole</numberType>
               <bounds>
                  <minimum exclusive="false">0</minimum>
               </bounds>
            </numericDomain>
         </interval>
      </measurementScale>
      <missingValueCode>
         <code>NaN</code>
         <codeExplanation>value not recorded or invalid</codeExplanation>
      </missingValueCode>
   </attribute>
   <attribute id="att.7">
      <attributeName>cond</attributeName>
      <attributeLabel>Conductivity</attributeLabel>
      <attributeDefinition>measured with SeaBird Elecronics CTD-911</attributeDefinition>
      <storageType>float</storageType>
      <measurementScale>
         <ratio>
            <unit>
               <customUnit>siemensPerMeter</customUnit>
            </unit>
            <precision>0.0001</precision>
            <numericDomain>
               <numberType>real</numberType>
               <bounds>
                  <minimum exclusive="false">0</minimum>
                  <maximum exclusive="false">40</maximum>
               </bounds>
            </numericDomain>
         </ratio>
      </measurementScale>
   </attribute>
</attributeList>
```


The examples below show complete entity trees for <**spatialVector**>
and <**spatialRaster**> converted via XSLT (stylesheet) from Esri
metadata format. For details see "Other Resources".



Example 22: Entity and attribute information for spatialVector
```xml
<spatialVector id="Landuse for Ficity in 1955">
   <entityName>Landuse for Ficity in 1955</entityName>
   <entityDescription>This GIS layer represents a reconstructed
      generalized landuse map for the area of current Ficity around the time
      period of 1955.</entityDescription>
   <physical>
      <objectName>fls-20.zip</objectName>
      <dataFormat>
         <externallyDefinedFormat>
            <formatName>Esri Shapefile (zipped)</formatName>
         </externallyDefinedFormat>
      </dataFormat>
      <distribution>
         <online>
            <onlineDescription>f1s-20 Zipped Shapefile File</onlineDescription>
            <url function="download">http://www.fsu.edu/lter/data/fls-20.zip</url>
         </online>
      </distribution>
   </physical>
   <attributeList id="Landuse for Ficity in 1955.attributeList">
      <attribute id="Landuse for Ficity in 1955.FID">
         <attributeName>FID</attributeName>
         <attributeDefinition>Internal feature number.</attributeDefinition>
         <storageType typeSystem="http://www.esri.com/metadata/esriprof80.html">OID</storageType>
         <measurementScale>
            <nominal>
               <nonNumericDomain>
                  <textDomain>
                     <definition>
                        Sequential unique whole numbers that are automatically generated.
                     </definition>
                  </textDomain>
               </nonNumericDomain>
            </nominal>
         </measurementScale>
      </attribute>
      <attribute id="Landuse for Ficity in 1955.Shape">
         <attributeName>Shape</attributeName>
         <attributeDefinition>Feature geometry.</attributeDefinition>
         <storageType typeSystem="http://www.esri.com/metadata/esriprof80.html">Geometry</storageType>
         <measurementScale>
            <nominal>
               <nonNumericDomain>
                  <textDomain>
                     <definition>Coordinates defining the features.</definition>
                  </textDomain>
               </nonNumericDomain>
            </nominal>
         </measurementScale>
      </attribute>
      <attribute id="Landuse for Ficity in 1955.Z955">
         <attributeName>Z955</attributeName>
         <attributeDefinition>
            This field signifies the landuse value for each polygon.
         </attributeDefinition>
         <storageType typeSystem="http://www.w3.org/2001/XMLSchema-datatypes">string</storageType>
         <measurementScale>
            <nominal>
               <nonNumericDomain>
                  <enumeratedDomain>
                     <codeDefinition>
                        <code>Agriculture</code>
                        <definition>Agricultural land use</definition>
                     </codeDefinition>
                     <codeDefinition>
                        <code>Urban</code>
                        <definition>Urbanized area</definition>
                     </codeDefinition>
                     <codeDefinition>
                        <code>Desert</code>
                        <definition>Unmodified area</definition>
                     </codeDefinition>
                     <codeDefinition>
                        <code>Recreation</code>
                        <definition>Recreational land use</definition>
                     </codeDefinition>
                  </enumeratedDomain>
               </nonNumericDomain>
            </nominal>
         </measurementScale>
      </attribute>
   </attributeList>
   <geometry>Polygon</geometry>
   <geometricObjectCount>78</geometricObjectCount>
   <spatialReference>
      <horizCoordSysName>NAD_1927_UTM_Zone_12N</horizCoordSysName>
   </spatialReference>
</spatialVector>
```




Example 23: Entity and attribute information for spatialRaster
```xml
<spatialRaster id="fi_24k">
   <entityName>fi_24k</entityName>
   <entityDefinition>Ficiticiou State 7.5 Minute Digital Elevation Model</entityDefinition>
   <physical>
      <objectName>fls-30.zip</objectName>
      <dataFormat>
         <externallyDefinedFormat>
            <formatName>Esri binary grid</formatName>
         </externallyDefinedFormat>
      </dataFormat>
      <distribution>
         <online>
            <onlineDescription>f1s-30 zipped raster data File</onlineDescription>
            <url function="download">http://www.fsu.edu/lter/data/fls-30.zip</url>
         </online>
      </distribution>
   </physical>
   <attributeList id="fi_24k.attributeList">
      <attribute id="fi_24k.ObjectID">
         <attributeName>ObjectID</attributeName>
         <attributeDefinition>Internal feature number.</attributeDefinition>
         <storageType typeSystem="http://www.esri.com/metadata/esriprof80.html">OID</storageType>
         <measurementScale>
            <nominal>
               <nonNumericDomain>
                  <textDomain>
                     <definition>
                        Sequential unique whole numbers that are automatically generated.
                     </definition>
                  </textDomain>
               </nonNumericDomain>
            </nominal>
         </measurementScale>
      </attribute>
      <attribute id="fi_24k.Cell Value">
         <attributeName>Cell Value</attributeName>
         <attributeDefinition>Elevation Value</attributeDefinition>
         <storageType typeSystem="http://www.esri.com/metadata/esriprof80.html">Integer</storageType>
         <measurementScale>
            <ratio>
               <unit>
                  <standardUnit>meter</standardUnit>
               </unit>
               <precision />
               <numericDomain>
                  <numberType>integer</numberType>
                  <bounds>
                     <minimum exclusive="true">-5193.000000</minimum>
                     <maximum exclusive="true">14785.000000</maximum>
                  </bounds>
               </numericDomain>
            </ratio>
         </measurementScale>
      </attribute>
      <attribute id="fi_24k.Count">
         <attributeName>Count</attributeName>
         <attributeDefinition>Count</attributeDefinition>
         <storageType typeSystem="http://www.esri.com/metadata/esriprof80.html">Integer</storageType>
         <measurementScale>
            <ratio>
               <unit>
                  <standardUnit>number</standardUnit>
               </unit>
               <precision />
               <numericDomain>
                  <numberType>whole</numberType>
               </numericDomain>
            </ratio>
         </measurementScale>
      </attribute>
   </attributeList>
   <spatialReference>
      <horizCoordSysName>NAD_1927_UTM_Zone_12N</horizCoordSysName>
   </spatialReference>
   <horizontalAccuracy>not available</horizontalAccuracy>
   <verticalAccuracy>not available</verticalAccuracy>
   <cellSizeXDirection>30.0</cellSizeXDirection>
   <cellSizeYDirection>30.0</cellSizeYDirection>
   <numberOfBands>1</numberOfBands>
   <rasterOrigin>Upper Left</rasterOrigin>
   <rows>21092</rows>
   <columns>18136</columns>
   <verticals>1</verticals>
   <cellGeometry>matrix</cellGeometry>
</spatialRaster>
```

The <**otherEntity**> data type includes the free text <**entityType**> element for naming the type of the entity.
The **otherEntity/physical/dataFormat/externallyDefinedFormat/formatName** element stores the file format.
While there is no controlled vocabulary for the content of these elements, format names can be drawn from [DataONE's objectFormaList](https://cn.dataone.org/cn/v2/formats).  Table 3 provides suggestions for some common other entity formats.

Table 3. Entity types and format names for some <**otherEntity**> types.

<table>
  <tr>
    <th>Common Name</th>
    <th>Entity Type</th>
    <th>Format Name</th>
  </tr>
  <tr>
    <td>R script</td>
    <td>script</td>
    <td>R programming language script</td>
  </tr>
  <tr>
    <td>R markdown</td>
    <td>script</td>
    <td>R Markdown file</td>
  </tr>
  <tr>
    <td>PHP script</td>
    <td>script</td>
    <td>application/php</td>
  </tr>
  <tr>
    <td>JPEG image</td>
    <td>photograph</td>
    <td>JPEG</td>
  </tr>
  <tr>
    <td>PDF document</td>
    <td>document</td>
    <td>Portable Document Format</td>
  </tr>
</table>