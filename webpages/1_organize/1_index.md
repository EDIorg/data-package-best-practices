# Examples of data package design patterns

Here are two basic patterns for thinking about your data organization:

## Data collection is finished
The data package(s) may be being created to go with a published paper or a 
student's thesis. These datasets are not expected to have data values added later on. 
Very often, these data packages will be archived only once. Sometimes metadata might be
enhanced later, but it is less likely that the data entities themselves will be changed. 

## Data collection is ongoing 
Many data collection projects are ongoing, e.g., an LTER site has many 
ongoing data collections from several scientific domains. LTREB sites also generally 
have ongoing funding, and so data additions are expected. Field stations may have
an ongoing meterological station or a regularly collected survey (e.g., for birds). 
For ongoing data collection the submitter expects to be revisiting the data package 
and adding new data in the future.

Remember that all data packages have static data entities, and so in the case of 
ongoing data collections, a data package is a "snapshot" at a point in time, with a 
static begin and end date..

More specific guidelines for ongoing datasets are here: [ongoing_data.md]



## General guidelines for grouping data

Organize your data into the fewest logical units, e.g., data tables. 
As much as possible, many tables with the same structure and type of content 
should be compiled into a single table. Below are guidelines for grouping data into 
packages (either for ongoing or completed collections). 
The main features to consider are 

- similarity and relatedness of methods and observations
- simplifying potential future use or synthesis
- your local management constraints and circumstances.

**Groups of data units that are closely related**: Often these are packaged together 
with one metadata file. A primary table of observations could be accompanied by a table of 
sampling sites or taxonomic information that contains more material than can be fit 
into structured metadata. Group data entities together if they share high-level metadata (like
people and sites) and methods. 

**Large sampling campaign where many parameters are measured** 
A collection with any data units that are independent hese may benefit from  being 
broken into several packages, all accompanied by some of the same metadata and each with 
some unique metadata. 
This is especially true of ongoing campaigns, because packages composed of smaller units 
can be managed or updated independently. Some metadata may be repeated, but this happens only 
when the dataset is first created. Subsequent updates will be streamlined.
 
## Datasets of particular types or scientific domains
###Spatial data 
Spatial data (e.g. shape files) of a common theme or scope should be zipped 
up in their respective folders. In EML, these should be typed as "otherEntity"

###Streaming data 
- with the GCE Data Toolbox for Matlab [link here to EXISTING page]()

###Community survey data
- Using the ecocomDP model [link here to EXISTING page]()

###Meteorology
- LTER climdb-overhaul 