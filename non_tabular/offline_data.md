# Offline Data

## Introduction

Data entities are kept offline when they are too large to be handled easily by the HTTP protocol,  are expected to be rarely requested, and can be mailed on an external drive. The limit for “too large” is somewhat subjective; our current working limit for datasets that are “too large for HTTP” is 100 gb (total size). If you suspect your data fall into this category, contact EDI for advice (support@environmentaldatainitiative.org).

### Authors
Margaret O’Brien, Corinna Gries


### Background
paragraph, more specific background if needed.

## Recommendations for data packages


### Physical Storage

*   Add data to external drive in native (non-compressed, non-tarred, non-zipped) format, deliver to EDI (mail).
*   EDI will store three copies, one external hard drive each in New Mexico and in Wisconsin, one copy in general EDI backup cloud storage


### #Data package

*   The hard drive should contain at least two entities: the data (which will be offline) and an inventory of holdings of that entity.
*   Content of the manifest (inventory of holdings) would be dictated by the type of data entity. Suggested columns are:
    *   Filename(s)
    *   Format (netCDF, tabular csv, etc.)
    *   Start_datetime
    *   End_datetime
    *   Location_lat
    *   Location_lon
    *   (other params the PIs may feel are essential)
    *   Checksum


### Package Metadata 

(in EDI metadata template and converted to EML - generally, as for any data package)


*   Abstract: describe the collection generally. If individual files require specific software to read, provide the name of that software.
*   Creators
*   Contact (will be responsible for sending out copies as requested.) positionName: EDI Repository Manager Email: support@environmentaldatainitiative.org
*   Methods - detailed collection/generation methods for the offline data entities. Detailed information for re-using the data. (May instead be included in the manifest table if different for different offline files.)
*   Offline Entity Description: Describe as you would for an online resource. Restate the software needed to read the individual files if this is important to a user.
*   Regular column descriptions for the manifest (inventory of holdings).


### EML

At least two entities should be described:


*   Manifest (inventory) should be a tableEntity: will be the online entity and described as all 
*   Offline entity: 
    *   Fill out high-level fields as for an online resource. Restate the software needed to read the individual files if this is important to a user. 
    *   Distribution node will be `offline (See Table 1, code block)

Table 1. Three required fields for an offline distribution  


<table>
  <tr>
   <td>physical/objectName
   </td>
   <td>As for any entity, this is the name of the file or data object
   </td>
  </tr>
  <tr>
   <td>dataFormat/ExternallyDefinedFormat/formatName
   </td>
   <td>The name of the format the data object is in. If there is a special compression applied, list it here.
   </td>
  </tr>
  <tr>
   <td>distribution/offline/mediumName
   </td>
   <td>Instead of a data URL, you will have an offline distribution node. The name of almost all offline media is “external drive”, because that is how you will deliver the data to a requestor.
   </td>
  </tr>
</table>


Sample XML:

```xml

<physical>
  <objectName>mainl_2005acc.zip</objectName>
  <dataFormat>
    <externallyDefinedFormat>
      <formatName>netCDF file</formatName>
    </externallyDefinedFormat>
  </dataFormat>
  <distribution>
    <offline>
      <mediumName>External drive</mediumName>
    </offline>
  </distribution>
</physical>

```


##  References


### EML documentation

[https://eml.ecoinformatics.org/schema/index.html](https://eml.ecoinformatics.org/schema/index.html)

Look for the PhysicalDistributionType

## Potential Issues

- ssd formatting (eventually, whatever we use, it will become unusable).

- Even with cloud storage, eventually a binary format will become unusable






