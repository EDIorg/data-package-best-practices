
# methods

This element is found at these locations (XPath):  
**/eml:eml/dataset/methods**  
**/eml:eml/dataset/[entity]/methods**  
**/eml:eml/dataset/[entity]/attributeList/attribute/methods**

**General Information**: In early EML versions, both
"<**method**>" and "<**methods**>" elements were found, which
caused confusion. In EML 2.1.0, the elements were standardized to
"<**methods**>".

The <**methods>** tree appears at the dataset, entity, and attribute
levels, and content is generally regarded as human readable, not
machine-readable. As a 'rule of thumb', methods are _descriptive_, and
protocols are _prescriptive_, i.e. the methods describe what was done
when collecting data, and protocols are a set of procedures or
prescribed actions. A method often includes or follows a particular
protocol. As a minimum, a reference to an external protocol should be
given at the dataset level. However, detailed, text methods at this are
preferable so that their content can be perused in a browser or indexed
for searching. If further refinement is needed, methods can be defined
for individual data entities or even individual <**attribute**>,
although these may not be not indexed. The scope of the method defined
can be tailored to match the EML document level where it is applied. For
example, methods at the dataset level describe the study, for a
<**dataTable**> methods might include pre-/post-processing steps, and
at the attribute level, quality control. The use of methods refinement
varies and keeping all methods in one place and at one level (dataset)
is simpler to manage. Since they are mostly for human consumption, one
detailed description of all steps taken at the dataset level is
frequently sufficient and more user friendly.

A description of methods contains the elements <**methodStep**>,
<**sampling**>, and/or <**qualityControl**>.

## methodStep

At least one <**methodStep**> is required under <**methods**>, and
each step is a logical portion of the methods, for example, field, lab
and statistical. All textual methods descriptions belong here, using
<**description**> and TextType tags.

At a minimum, to describe an external document two tags can be used:
<**citation**> for a referral to a published document or paper, or
<**protocol**>. At a minimum, the <**protocol**> requires
<**title**>, <**creator**> and <**distribution**> tags, where the
<**distribution**> tree may be used to refer to an online document;
see the recommendations above for using that tree. Alternatively, the
entire protocol may be written into EML under protocol/methodStep.

### instrumentation

**The** <**instrumentation>** tag should contain a full description of
the instruments used, including manufacturer, model, calibration dates
and accuracy. Changes in instrumentation and dates of changes should be
mentioned earlier under the <**description**>.

### dataSource

The optional <**dataSource**> tag is for nesting an EML dataset that
is input to a <**methodStep**> of the data being described, e.g.,
calibration information for an instrument or input parameters for a
model. It also may hold the source (provenance) data when describing a
derived dataset.

_Context Note: The_ <**dataSource**> _element is used by the EDI
repository's provenance tracking system for linking between derived and
source data packages. For more information, see additional data
repository resources from EDI._

## sampling

This optional tree can contain valuable and very specific information
about the study site, coverage and frequency in addition to that listed
at other levels.

<**studyExtent**> provides specific information about the temporal and
geographic extent of the study such as domains of interest in addition
to geographic, temporal, and taxonomic coverage of the study site.
<**studyExtent**> can be a surrogate for the
<**studyAreaDescription**> under <**project**>. Descriptions can be
either as a simple text using <**description**> or by including
detailed temporal or geographic <**coverage**> elements describing
discrete time periods sampled or multiple sub-regions sampled within the
overall geographic bounding box that was described at the dataset level.

_Context Note: In the past, LTER requested that individual sampling
locations be listed here (under **studyExtent/spatialSamplingUnits**),
and some LTER sites may have applications that specifically use that
XPath. However, in general use, the dataset-level geographicCoverage
elements are more practical. See EDI "Other Resources", for more
information about how indexers typically handle EML._

<**samplingDescription**> a text based version, similar to the
sampling methods section in a journal article.

## qualityControl

Like other trees under <**methods**>, <**qualityControl**> can be
used at the dataset, entity or attribute level, whichever is
appropriate. At its most basic, use the <**description**> element.
Tags are also available for a <**citation**> or <**protocol**>.

---

Example 17: methods
```xml
<methods>
   <methodStep>
      <description>
         <section>
            <title>
               Pitfall trap sampling for ground arthropod biodiversity monitoring
            </title>
            <para>Supplies used: pitfall traps (P-16 plastic Solo cups with
               lids) metal spades and large bulb planters (to dig holes in which to
               put traps) 70% ethanol (to preserve specimens) Qorpak glass jars with
               lids from the VWR Corporation, 120ml (4oz), cap size 58-400 (comes
               included), Qorpak no. 7743C, VWR catalog no. 16195-703.</para>
            <para>Between 10 and 21 traps are placed at each site in siutable
               location.</para>
            <para>All trapped taxa counted and measured (body length), most taxa
               identified to Family, ants to Genus</para>
         </section>
      </description>
      <instrumentation>SBE MicroCAT 37-SM (S/N 1790); manufacturer:
         Sea-Bird Electronics (model: 37-SM MicroCAT); parameter: Conductivity
         (accuracy: 0.0003 S/m, readability: 0.00001 S/m, range: 0 to 7 S/m);
         last calibration: Feb 28, 2001</instrumentation>
      <instrumentation>SBE MicroCAT 37-SM (S/N 1790); manufacturer:
         Sea-Bird Electronics (model: 37-SM MicroCAT); parameter: Pressure
         (water) (accuracy: 0.2m, readability: 0.0004m, range: 0 to 20m); last
         calibration: Feb 28, 2001</instrumentation>
      <instrumentation>SBE MicroCAT 37-SM (S/N 1790); manufacturer:
         Sea-Bird Electronics (model: 37-SM MicroCAT); parameter: Temperature
         (water) (accuracy: 0.002°C, readability: 0.0001°C, range: -5 to 35°C);
         last calibration: Feb 28, 2001</instrumentation>
   </methodStep>
   <sampling>
      <studyExtent>
         <description>
            <para>Arthropod pit fall traps are placed in three different
               locations four times a year</para>
         </description>
      </studyExtent>
      <samplingDescription>
         <para>Six traps were set in a transect at each location.</para>
      </samplingDescription>
      <spatialSamplingUnits>
         <coverage>
            <geographicDescription>site number 1</geographicDescription>
            <boundingCoordinates>
               <westBoundingCoordinate>-112.234566</westBoundingCoordinate>
               <eastBoundingCoordinate>-112.234566</eastBoundingCoordinate>
               <northBoundingCoordinate>33.534566</northBoundingCoordinate>
               <southBoundingCoordinate>33.534566</southBoundingCoordinate>
            </boundingCoordinates>
         </coverage>
         <coverage>
            <geographicDescription>site number 2</geographicDescription>
            <boundingCoordinates>
               <westBoundingCoordinate>-111.745677</westBoundingCoordinate>
               <eastBoundingCoordinate>-111.745677</eastBoundingCoordinate>
               <northBoundingCoordinate>33.64577</northBoundingCoordinate>
               <southBoundingCoordinate>33.64577</southBoundingCoordinate>
            </boundingCoordinates>
         </coverage>
         <coverage>
            <geographicDescription>site number 3</geographicDescription>
            <boundingCoordinates>
               <westBoundingCoordinate>-112.167899</westBoundingCoordinate>
               <eastBoundingCoordinate>-112.16799</eastBoundingCoordinate>
               <northBoundingCoordinate>33.76799</northBoundingCoordinate>
               <southBoundingCoordinate>33.76799</southBoundingCoordinate>
            </boundingCoordinates>
         </coverage>
      </spatialSamplingUnits>
   </sampling>
   <qualityControl>
      <description>
         <para>All specimens are archived for future reference. Quality
            control during data entry is achieved with standard database
            techniques of pulldowns that prevent typos and constraints. Scientists
            inspect standard data summary statistics after data entry.</para>
      </description>
   </qualityControl>
</methods>
```
---

---

Example 18: methods, with dataSource
```xml
<methods>
   <methodStep>
      <description>
         <section>
            <para>We utilize NPP data collected from 1906 to 2006 from the ONL
               LTER site. The ONL NPP data unit definition is kg/m\^2/yr. This unit
               does not require conversion.</para>
         </section>
      </description>
      <dataSource>
         <title>NPP data from ONL 1906 to 2006</title>
         <creator>
            <organizationName>ONL LTER</organizationName>
         </creator>
         <distribution>
            <online>
               <url>http://metacat.lternet.edu/knb/metacat/knb-lter-onl.23.1</url>
            </online>
         </distribution>
         <contact>
            <organizationName>ONL LTER</organizationName>
            <positionName>ONL Information Manager</positionName>
            <electronicMailAddress>im@onl.lternet.edu</electronicMailAddress>
         </contact>
      </dataSource>
   </methodStep>
</methods>
```
---
