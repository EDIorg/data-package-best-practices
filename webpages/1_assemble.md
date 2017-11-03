A "data package" is the published unit of data and metadata together.Several approaches to designing data packages have emerged
and are all valid. Data repositories that are designed for both archive and delivery (like EDI) have these features:
- **assign DOIs**, for data citation
- **metadata and data immutability**, so that cited data can be reliably returned to (and an analysis repeated)
- **data package versioning**, with earlier versions still available via their DOI.

In general then, all data packages are static, and in the case of ongoing time-series, are "snapshots" over time. Below are several examples of how data packages are constructed. The main features to consider are 
- similarity and relatedness of methods and observations, and
- temporal nature, ie, whether sampling is completed or ongoing

1. *Data collected with defined beginning and end dates* are often organized
into units, and packaged together with one EML file. A primary data table could be accompanied by a table of sampling sites or taxonomic information that contains more material than can be fit into EML metadata.
     1. *Data from a large sampling campaign where many parameters are measured* (and possibly independent) could be combined into one EML dataset with multiple data entities as above, or
     2. broken up into several packages, all accompanied by some of the same metadata and each with some unique metadata. 
Both patterns are valid, and designers should choose a style which works best for their particular data and circumstances.
1. With *ongoing time-series observations* (instrumented or not), some designers choose to group all observations into a single entit, and add data to a data entity and update existing EML metadata when methods or other ancillary material remains constant. Others create new datasets for each logical unit (e.g., a summer sampling season), regardless of
similarities or differences in methods. There are advantages and disadvantages to both approaches. [LINK HERE TO A TIME SERIES PAGE? OR IS THAT BELOW?]

Regardless of packaging style, some metadata elements are essential for data discovery - e.g., the coverage elements for sampling sites, taxonomy and dates.


- either links here, or in above, or unite the two sections somehow. 
- - [Considerable amount of stuff from LTER can go here - mob
- - Dataset design - (Type-specific ? domain-specific? recommendations)
- - Small tables and static datasets (possibly related to publication)
- - Ongoing time series
- - Streaming data 
- - - with the GCE Data Toolbox for Matlab
- - Community survey data - BPs
- - - Using the ecocomDP model - mob
- - Spatial data
- Do you have access to data mgt expertise/help? Can you write R code?
- - EDIs Software registry - how to use and/or contribute - kristin
