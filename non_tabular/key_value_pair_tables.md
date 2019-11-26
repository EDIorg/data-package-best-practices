# Key-Value Pair Tables


## Introduction

The Key-Value data model - also known as Attribute-Value or “string of pearls” data model - is widely used for certain kinds of observational data where the more conventional matrix type model would cause many empty cells. This data model treats each point observation as a single record. Typically for environmental science data, each record contains fields for location, time, variable name (or attribute name, the "key") and value, plus various flags for methods, data quality etc. For ecologists, this data model is especially useful for (1) biodiversity and (2) sensor data that may otherwise require very wide tables in a matrix format, and/or have many empty cells e.g., when species are not regularly observed or sensors are not employed consistently.

The advantages of the Attribute - Value data model are its flexibility and efficiency. However datasets in this format are not easily described in the current version of EML. The basic problem is that the values in the value field do not necessarily share the same descriptions (e.g. data type, collection methods, unit, and precision). The only way you can constrain the typing and precision with the EML attribute model is if all values in a column share these.


## Recommendations for data packages

### Biodiversity data
If all of the values in a given table share the same units (e.g., presence/absence, count, percent abundance), then the table should be represented in this Attribute – Value format and described accurately in EML. If not, then the data should be represented in matrix format, or possibly several matrices if the table is unreasonably wide.

The ecocomDP model developed by EDI for harmonizing ecological community survey data is a key-value style table. For more information on that model, see [Recommendations for ecological community surveys](../scientific_domain/ecological-community-surveys.html).


## Sensor data
The Attribute - Value format is especially efficient for sensor data and variations of this data model have been developed in communities handling large volumes of sensor data (e.g., ODM or Observation Data Model from CUAHSI).  For more information for using that model in EML data packages, see [Recommendations for meteorology and hydrology data.html](../scientific_domain/meteorology-and-hydrology-data.html).

For a single site, this data model is useful when sensors are frequently changed or redeployed or when several different sets of sensor deployments exist. To accurately describe in EML (e.g., typing, precision), it is recommended that each data table contain only the Attribute – Value formatted values for a single sensor. A single data package with data from multiple sensors, can have values for each sensor in separate entities (data tables). Most of these data models describe the concept of a single “data stream,” which may be used to achieve the here recommended approach dynamically.



