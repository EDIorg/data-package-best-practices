# Ecological community surveys

DRAFT DRAFT DRAFT

## Introduction
Community survey data can be highly complex, often with location-specific methods. That complexity generally means that prescribed formats cannot be imposed on research studies. However, some general principles can be obtained from 
- synthesis scientists working with this type of data
- lessons learned from harmonization of primary data, e.g., EDI's `ecocomDP` project.

This document summarizes those principles.

## Anticipated use cases

### Harmonization
EDI is harmonizing this data type. For more information, see: 
- https://github.com/EDIorg/ecocomDP
- https://environmentaldatainitiative.org/dataset-design/data-package-design-for-community-survey-data/

### Synthesis
We know from experience that primary research data sets cannot be easily combined or synthesized until all data are completely understood and converted to a similar format. When input data are in a similar format, aggregations and reuse can be greatly accelerated. EDI has examined the needs of synthesis scientists using community survey data, and a major goal of harmonization is to assist synthesis efforts.

### External applications
Community survey data are of great interest to the broader biodiversity community, particularly through their support for portals such as GBIF, and the use of the Darwin Core Vocabulary. Harmonization is the first step in this process.


## Recommendations for datasets
### Methods

* should explain the sampling strategy. 
* should inlcude diagrams of sampling plots and their spatial relationships

### Dates
Temporal sampling regime is consistent 
*   **Best**: consistent dateTime format throughout 
    *   [https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-mcr.6.56](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-mcr.6.56) 
*   **OK**: sampling regime changes over time (yyyy, vs yyyy-mm-dd)
        *   YYYY, vs YYYY-MM-DD
*   **Not useable**: date and time columns are not typed in EML as dateTimes (i.e, typed as strings, as below) 

![alt_text](images/DPBP-community-surveys0.png "image_tooltip")



### Locations 
Should be complete, with latitude and longitude

*   **Best**: digital lat/lon
    *   example:    [https://portal.edirepository.org/nis/metadataviewer?packageid=edi.5.3](https://portal.edirepository.org/nis/metadataviewer?packageid=edi.5.3) 
*   **OK** (need processing):
    *   In metadata only:
        * example: [https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-sbc.17.33](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-sbc.17.33) 
    *   Deg-min-sec (strings)
    *   Locations in second table
*   **Not useable**: sites codes without lat/lon


### Site nesting
Sampling site nesting can be understood: 
*   **Best**: subsites labeled
    *  example: [https://portal.edirepository.org/nis/metadataviewer?packageid=edi.5.3](https://portal.edirepository.org/nis/metadataviewer?packageid=edi.5.3) 
*   **OK**: 
*   **Not useable**:


### Taxa
Taxa can be resolved 

*   **Best**: Taxon codes are assigned at source 
    *  example: [https://portal.edirepository.org/nis/metadataviewer?packageid=edi.3.5](https://portal.edirepository.org/nis/metadataviewer?packageid=edi.3.5) 
*   **OK**: species binomials
    *  example: [https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-sbc.17.33](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-sbc.17.33) 
    *   **Not useable**: local codes only
        * example (*if all they had included was the column called “sp_code”):  [https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-sbc.17.33](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-sbc.17.33)      


###  Table column names

Metadata can be matched to entity column

*   **Best**: attributeName exactly matches column header  
    *  example [https://portal.edirepository.org/nis/metadataviewer?packageid=edi.3.5](https://portal.edirepository.org/nis/metadataviewer?packageid=edi.3.5) 
*   **OK**: can be matched by manual examination
    * example  [https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-mcr.1039.9](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-mcr.1039.9)
*   **Marginal**: no header
    *   example

This feature has come up in other discussions. Its true that the EML does assert what the content of a column is. However, there is no explicit “key” into that column except for the column header. If these do not match (or are absent), then there is nothing to go on but trust. That’s fine if data are shared only within a tightly knit community, but is less likely to happen when data are reused. 

*the ECC currently checks that number of columns and typing match. For for attributeNames, It shows you the first line of the table for manual comparison (an info check). Should this be a warn-check if strings in the csv do not match attributeNames?*


### Table linkages
Foreign Key linkages are clear 

*   **Best**: EML constraint included, with referential integrity 
    *  example [https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-mcr.6.56](https://portal.edirepository.org/nis/metadataviewer?packageid=knb-lter-mcr.6.56) 
*   **OK**: FK detected manually, has referential integrity
    *   url
*   **Not useable**: FK detected manually, but no referential integrity
    *   url 

