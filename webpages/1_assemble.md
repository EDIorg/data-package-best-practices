A "data package" is the published unit of data and metadata together. Several approaches to designing data packages have emerged
and are all valid. Data repositories that are designed both for archive and delivery (like EDI) have these features, which are advantageous to both contributors and users:
- *assign DOIs*, for data citation
- *metadata and data immutability*, so that cited data can be reliably revisited (and analyses repeated)
- *support data package versioning*, with earlier versions still available via their DOI.

In general then, all data packages are static, and in the case of ongoing time-series, are "snapshots" over time. Following are several examples of how data packages are constructed:
1. Data collected with defined beginning and end dates are published together 
in logical units, and described together with one EML file. For instance, a 
data table could be accompanied by a table of sampling sites or taxonomic information 
that contains more material than can be fit into EML metadata. 
1. Data from a large sampling campaign where many somewhat independent parameters are measured could 
be combined into one EML dataset with multiple data entities, or could be broken up into several packages, 
all accompanied by some of the same metadata, and each with other unique metadata. 
Both patterns are valid, and it is left up to the designers to decide which style works best for 
their particular data and circumstances. It is wise to keep potential future uses in mind, 
and whether certain data entitles naturally belong together. 
1. For time-series observations (instrumented or not), some designers choose to 
add data to a data entity and update existing EML 
metadata when methods or other ancillary material remains constant. 
Others may choose to create new datasets for each logical unit (e.g., a summer sampling season), regardless of
similarities or differences in methods. 
There are advantages and disadvantages to both approaches. [LINK HERE TO A TIME SERIES PAGE? OR IS THAT BELOW?]
1. The dataset designer will need a reasonable approach to deciding which information
 is encoded directly in EML metadata and which is better left in ancillary files (or tables). 
For example, codes used in a column of the data table may either be encoded directly in EML 
or stored in a "look-up table" (described in EML as another entity) and linked.



- either links here, or in above, or unite the two sections.
- - [Considerable amount of stuff from LTER can go here - mob
- - Dataset design - (Type-specific recommendations)
- - Small tables and static datasets (possibly related to publication)
- - Ongoing time series
- - Streaming data 
- - - with the GCE Data Toolbox for Matlab
- - Community survey data - BPs
- - - Using the ecocomDP model - mob
- - Spatial data
- Do you have access to data mgt expertise/help? Can you write R code?
- - EDIs Software registry - how to use and/or contribute - kristin
