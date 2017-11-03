# 1. Organize and assemble your data and metadata

*Data*: To get started, organize your data into the fewest logical units. Ideally, many tables of the same structure and content should be compiled into a single table. Spatial data files (e.g. shape files) of a common theme or scope should be zipped up in their respective folders.

*Metadata*: Essential metadata is the who, what, when, where, why and how - which will be placed in structured metadata. "Who, what, when, where" are essential data documentation. "Why and how" aid in understanding the data and are generally described in text.

You will be producing a "data package" -- the published unit of data and metadata together. Data repositories that are designed for both archive and delivery (like EDI) have these features, which you should keep in mind:
- **assign DOIs**, for data citation
- **metadata and data immutability**, so that cited data can be reliably returned to (and an analysis repeated)
- **data package versioning**, with earlier versions still available via their DOI.

Below are guidelines for grouping data into packages. The main features to consider are 
- similarity and relatedness of methods and observations, and
- temporal nature, i.e., whether sampling is completed or planned to be ongoing

- *Groups of data units with fixed start/end dates*: Often these are packaged together with one metadata file. A primary data table could be accompanied by a table of sampling sites or taxonomic information that contains more material than can be fit into structured metadata.
    + *Large sampling campaign where many parameters are measured* (and possibly independent): These may benefit from  being broken into several packages, all accompanied by some of the same metadata and each with some unique metadata. 
Both patterns (one package or several) are valid. In addition to considering your own mangagement constraints and circumstances, be aware of your data's potential future uses, and whether certain data entities naturally belong together.
- *ongoing time-series observations* (instrumented or not): Remember that all data packages have static data entities, and so in the case of ongoing time-series, these are "snapshots" at points in time.
    + continuous: all observations are groupled into a single unit (table), with plans to add data by revising the same package and updating metadata. 
    + non-continuous: a new packages is created for each logical unit (e.g., a summer sampling season), regardless of similarities or differences in methods.
There are advantages and disadvantages to both approaches. Long-term time series are some of the most valuable data there is. [LINK HERE TO A TIME SERIES PAGE? OR IS THAT BELOW?]



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
