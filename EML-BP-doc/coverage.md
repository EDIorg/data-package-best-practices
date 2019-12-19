
# coverage

This element is found at these locations (XPath):  
**/eml:eml/dataset/coverage**  
**/eml:eml/dataset/methods/sampling/studyExtent/coverage**  
**/eml:eml/dataset/methods/sampling/spatialSamplingUnits/coverage**  
**/eml:eml/dataset/[entity]/coverage**  
**/eml:eml/dataset/[entity]/methods/sampling/studyExtent/coverage**  
**/eml:eml/dataset/[entity]/methods/sampling/spatialSamplingUnits/coverage**  
**/eml:eml/dataset/[entity]/attributeList/attribute/coverage**  
**/eml:eml/dataset/[entity]/attributeList/attribute/methods/sampling/studyExtent/coverage**  
**/eml:eml/dataset/[entity]/attributeList/attribute/methods/sampling/spatialSamplingUnits/coverage**  
**/eml:eml/dataset/project/studyAreaDescription/coverage**

The <**coverage**> element can appear at the dataset, methods, entity
and attribute levels, and contains three elements for describing the
coverage in terms of space, taxonomy, and time,
<**geographicCoverage**>, <**taxanomicCoverage**>, and
<**temporalCoverage**>. Populating these elements as recommended
enables advanced searches and understanding. Because they appear at many
XPaths, there are many options for how coverage elements can be used.

## geographicCoverage

**General Information**: The <**geographicCoverage**>
element describes locations of research sites and areas related to the
data, and is intended for general placement of points on a map. It is
recommended to use the element at different levels for different types
of information. The cardinality of the <**geographicCoverage**>
element is one-to-many. The miminum requirement under
<**geographicCoverage**> is two elements, a
<**geographicDescription**> and <**boundingCoordinates**> with a
bounding box containing N, S, E, W limits.

At the dataset level (**eml:eml/dataset/coverage**) one
<**geographicCoverage**> element should be included, whose
<**boundingCoordinates**> describe the extent of the data. As a
default, this could be the nominal boundaries of a sampling area. A more
accurate extent (recommended) would be the maximum extent of the data,
for each of east, west, north and south.

Additional <**geographicCoverage**> elements should be included if
there are significant distances between study sites and grouping them in
one bounding box would be misleading or confusing. For example, a
cross-site study should have bounding boxes for each site.



Example 12: geographicCoverage at the dataset level
```xml
<coverage>
   <geographicCoverage>
      <geographicDescription>
         Ficity, FI metropolitan area, USA
      </geographicDescription>
      <boundingCoordinates>
         <westBoundingCoordinate>-112.373614</westBoundingCoordinate>
         <eastBoundingCoordinate>-111.612936</eastBoundingCoordinate>
         <northBoundingCoordinate>33.708829</northBoundingCoordinate>
         <southBoundingCoordinate>33.298975</southBoundingCoordinate>
         <boundingAltitudes>
            <altitudeMinimum>300</altitudeMinimum>
            <altitudeMaximum>600</altitudeMaximum>
            <altitudeUnits>meter</altitudeUnits>
         </boundingAltitudes>
      </boundingCoordinates>
   </geographicCoverage>
</coverage>
```


If sampling took place in discrete point location, those sites should
also appear with or without a bounding box. Individual sampling sites
may also be be entered under <**spatialSamplingUnits**>, each site in
a separate coverage element (see below).



Example 13: geographicCoverage under spatialSamplingUnits
```xml
<spatialSamplingUnits>
   <coverage>
      <geographicDescription>sitenumber 1</geographicDescription>
      <boundingCoordinates>
         <westBoundingCoordinate>-112.2</westBoundingCoordinate>
         <eastBoundingCoordinate>-112.2</eastBoundingCoordinate>
         <northBoundingCoordinate>33.5</northBoundingCoordinate>
         <southBoundingCoordinate>33.5</southBoundingCoordinate>
      </boundingCoordinates>
   </coverage>
   <coverage>
      <geographicDescription>sitenumber 2</geographicDescription>
      <boundingCoordinates>
         <westBoundingCoordinate>-111.7</westBoundingCoordinate>
         <eastBoundingCoordinate>-111.7</eastBoundingCoordinate>
         <northBoundingCoordinate>33.6</northBoundingCoordinate>
         <southBoundingCoordinate>33.6</southBoundingCoordinate>
      </boundingCoordinates>
   </coverage>
   <coverage>
      <geographicDescription>sitenumber 3</geographicDescription>
      <boundingCoordinates>
         <westBoundingCoordinate>-112.1</westBoundingCoordinate>
         <eastBoundingCoordinate>-112.1</eastBoundingCoordinate>
         <northBoundingCoordinate>33.7</northBoundingCoordinate>
         <southBoundingCoordinate>33.7</southBoundingCoordinate>
      </boundingCoordinates>
   </coverage>
</spatialSamplingUnits>
```


Latitudes and longitudes should be in the same datum, commonly used
(i.e., all values in WGS84 or NAD83) and expressed to at least six
decimal places (the EML2.1 schema enforces decimal content).
International convention dictates that longitudes east of the prime
meridian and latitudes north of the equator be prefixed with a plus sign
(+), or by the absence of a minus sign (-), and that west longitudes and
south latitudes be prefixed with minus sign (-). See Example below, and
the EML specification for more information and other examples.

<**geographicDescription**> The description is a string. It should be
comprehensive so that searches can be run against it, and include the
country, state, county or province, city, general topography, landmarks,
rivers and other relevant information. The method for determining
<**boundingCoordinates**>, <**boundingAltitudes**>, coordinates,
datums, etc., should be included with the <**geographicDescription**>,
since those elements do not encode this information.

The <**datasetGPolygon**> element may be included when the required
bounding box does not adequately describe the study location, for
example, if an irregular polygon is necessary to describe the study
area, or there is an area within the bounding box that is excluded. This
element is optional, and has two subelements.

<**datasetGPolygonOuterGRing**>: This is the outer part of the polygon
shape that encompasses the broadest area of coverage. It can be created
either by a gRing (list of points) or 4 or more <**gRingPoint**>s.
Documentation for an FGDC G-Ring states that four points are required to
define a polygon, and the first and last should be identical. However
this is not enforceable in XML Schema, and so in EML a minimum of three
<**gRingPoint**>s is required to define the polygon, and it can be
assumed that a since a polygon is closed, the last point can be joined
to the first.

The <**datasetGPolygonExclusionGRing**> is the closed, nonintersecting
boundary of a void area (or hole in an interior area). This could be the
center of the doughnut shape created by the <**datasetGPolygon**>. It
can be created either by a gRing (list of points) or one or more
<**gRingPoint**>s. This is used if there is an internal polygon to be
excluded from the outer polygon, e.g, a lake to be excluded from the
broader geographic coverage.

There are alternative methods for including location information with
EML, especially when it is intended for use in an external application.
GIS shape files, Keyhole Markup Language (KML or KMZ), or EML spatial
modules can be included as data entities (see additional resources for
different data file types at EDI).

## temporalCoverage

The <**temporalCoverage**> element represents the period of time the
data were collected, not the year the study was conducted if it uses
retrospective or historical data. Most commonly, <**singleDate**> or
<**rangeOfDates**> elements are used. Sometimes an
<**alternativeTimeScale**> is more appropriate, such as the use of
"years before present", e.g., for long-term tree ring chronology dating
back hundreds of years. Two formats are allowed, either a 4-digit year,
or a date in ISO format: YYYY-MM-DD.

In some cases, a package may be considered "ongoing", i.e., data are
planned to be added at intervals. It is not currently valid to leave an
empty <**endDate**> tag in EML. Further, EML is intended to house
"snapshots" of data which can be immutable (if the repository supports).
So for a package which is planned to be ongoing, the best solution is to
populate the <**endDate**> element with the end of the current data
range and to update this metadata field along with data updates, so that
the <**endDate**> tag reflects only the data that have already been
included. It is better to state an end date that guarantees that data
are present up to that date with more data possibly being available,
than an end date in the future that includes a period of time for which
no data are yet available. Use the <**maintanence**> tag (below) to
describe the update frequency. The methods/sampling tree should be used
to describe the ongoing nature of the data collection.



Example 14: temporalCoverage
```xml
<temporalCoverage>
   <rangeOfDates>
      <beginDate>
         <calendarDate>1998-11-12</calendarDate>
      </beginDate>
      <endDate>
         <calendarDate>2003-12-31</calendarDate>
      </endDate>
   </rangeOfDates>
</temporalCoverage>
```


## taxonomicCoverage

The <**taxonomicCoverage**> element should be used to document
taxonomic information for all organisms relevant to the study. The
lowest available level, preferably the species binomial and common name
should always be included, but higher-level taxa should also be included
to support broader taxonomic searches. Blocks of
<**taxonomicClassification**> elements should be hierarchically nested
within a single <**taxonomicCoverage**> element rather than repeated
at the same level. The <**generalTaxonomicCoverage**> element could
include a) descriptions of the general procedure of how the taxonomy was
determined (keys used, etc.), b) general textual description of all
flora/fauna in the study (scope), and c) denote how finely grained the
taxonomy is -- for example to "family" or "genus and species."

Note that it is allowable to combine elements in the hierarchy under
like <**taxonRankName**> entries to create a taxonomic "tree" (not
illustrated), but this practice may impede combining and re-using
<**taxonomicClassification**> information from multiple documents so
should be considered carefully.

The optional **taxonomicCoverage/taxonomicSystem** trees may be used to
detail the use of taxonomic identification resources and on the
identification process. <**classificationSystem**> should be used to
list authoritative taxonomic databases (such as ITIS, IPNI, NCBI, Index
Fungorum, or USDA Plants) or classification systems used for taxonomic
identification. Documentation and relevant literature regarding, used
authoritative sources, including URL's pointing to these sources, should
be listed in <**classificationSystemCitation**>. Exceptions to, or
deviation from, used authoritative sources should be explained in
<**classificationSystemModification**>.

Methods and protocols used for taxonomic classification should be
detailed using the <**identifierName**> and
<**taxonomicProcedures**> tags. Examples of methods that should be
listed in <**taxonomicProcedures**> are details of specimen
processing, keys, and chemical or genetic analyses.
<**taxonomicCompleteness**> may be used to document the status,
estimated importance, and reason for incomplete identifications.



Example 15: taxonomicCoverage
```xml
<taxonomicCoverage>
   <taxonomicSystem>
      <classificationSystem>
         <classificationSystemCitation>
            <title>Integrated Taxonomic Information System (ITIS)</title>
            <creator>
               <organizationName>
                  Integrated Taxonomic Information System
               </organizationName>
               <onlineUrl>http://www.itis.gov/</onlineUrl>
            </creator>
            <generic>
               <publisher>
                  <organizationName>
                     Integrated Taxonomic Information System
                  </organizationName>
                  <onlineUrl>http://www.itis.gov/</onlineUrl>
               </publisher>
            </generic>
         </classificationSystemCitation>
      </classificationSystem>
      <identifierName>
         <references>pers-1</references>
      </identifierName>
      <taxonomicProcedures>
         All individuals where identified and stored in alcohol, except 
         for one voucher specimen for each species which was tagged and 
         pinned.
      </taxonomicProcedures>
   </taxonomicSystem>
   <generalTaxonomicCoverage>
      Orthopteran insects (grasshoppers) were identified to species
   </generalTaxonomicCoverage>
   <taxonomicClassification>
      <taxonRankName>Kingdom</taxonRankName>
      <taxonRankValue>Animalia</taxonRankValue>
      <taxonomicClassification>
         <taxonRankName>Phylum</taxonRankName>
         <taxonRankValue>Mollusca</taxonRankValue>
         <taxonomicClassification>
            <taxonRankName>Class</taxonRankName>
            <taxonRankValue>Gastropoda</taxonRankValue>
            <taxonomicClassification>
               <taxonRankName>Order</taxonRankName>
               <taxonRankValue>Basommatophora</taxonRankValue>
               <taxonomicClassification>
                  <taxonRankName>Genus</taxonRankName>
                  <taxonRankValue>Detracia</taxonRankValue>
                  <taxonomicClassification>
                     <taxonRankName>Species</taxonRankName>
                     <taxonRankValue>Detracia floridana</taxonRankValue>
                     <commonName>Florida Melampus</commonName>
                  </taxonomicClassification>
               </taxonomicClassification>
            </taxonomicClassification>
         </taxonomicClassification>
      </taxonomicClassification>
   </taxonomicClassification>
   <taxonomicClassification>
      <taxonRankName>Kingdom</taxonRankName>
      <taxonRankValue>Animalia</taxonRankValue>
      <taxonomicClassification>
         <taxonRankName>Phylum</taxonRankName>
         <taxonRankValue>Mollusca</taxonRankValue>
         <taxonomicClassification>
            <taxonRankName>Class</taxonRankName>
            <taxonRankValue>Bivalvia</taxonRankValue>
            <taxonomicClassification>
               <taxonRankName>Order</taxonRankName>
               <taxonRankValue>Filibranchia</taxonRankValue>
               <taxonomicClassification>
                  <taxonRankName>Genus</taxonRankName>
                  <taxonRankValue>Geukensia</taxonRankValue>
                  <taxonomicClassification>
                     <taxonRankName>Species</taxonRankName>
                     <taxonRankValue>Geukensia demissa</taxonRankValue>
                     <commonName>Ribbed Mussel</commonName>
                  </taxonomicClassification>
               </taxonomicClassification>
            </taxonomicClassification>
         </taxonomicClassification>
      </taxonomicClassification>
   </taxonomicClassification>
</taxonomicCoverage>
```

