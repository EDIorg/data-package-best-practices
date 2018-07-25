# Getting organized
Regardless of the data arrangement, you will be producing a "data package", i.e., the 
published unit of data and metadata together. Data repositories that are designed for 
both archive and delivery (like EDI's) have these features, which you should keep in mind

- *metadata and data immutability*, so that data are trustworthy (e.g., to repeat an analysis),
- *data package versioning*, with earlier revisions still available,
- *DOI assigned* for each new package or revision, so that data can be cited exactly


# Guidelines for data packages

There are several facets to think about when organizing your data, and each is discussed
here in more detail.

- **Collection status:** is data collection finished or will there be more added? continuous 
instrument data is only one kind of "ongoing" data. Human-observed datasets (like
ecological or biogeochemical surveys) may also be expecting updates, albeit less regularly. 
- **Coherence:** a group of tables that are linked or closely related should stay together to 
enhance understanding.
- **Presentation:** should your data be organized "long" or "wide"? In a "wide" table, each variable 
has a separate column. A "long" (or narrow) table will have one column for all the values 
and another column for the variable's name, or multiple columns for context. There are pros and cons to 
each.
- **Scientific domain:** some communities have preferred formats to simplify integegration. 
it is a good idea to be aware of these so that your data can be easily converted 
if necessary. 


## Grouping data
Organize your data into the fewest logical units, e.g., data tables. 
As much as possible, many tables with the same structure and type of content 
should be compiled into a single table. The main features to consider are 

- similarity and relatedness of methods and observations
- simplifying potential future use or synthesis
- your local management constraints and circumstances.



## 1. Collection status

### Data collection is finished
The data package(s) may be being created to go with a published paper or a 
student's thesis. These datasets are not expected to have data values added later on. 
Very often, these data packages will be archived only once. Sometimes metadata might be
enhanced later, but it is less likely that the data entities themselves will be changed. 

### Data collection is ongoing 
Many data collection projects are ongoing, e.g., an LTER site has many 
ongoing data collections from several scientific domains. LTREB sites also generally 
have ongoing funding, and so data additions are expected. Field stations may have
an ongoing meterological station or a regularly collected survey (e.g., for birds). 
For ongoing data collection the submitter expects to be revisiting the data package 
and adding new data in the future.

Remember that all data packages have static data entities, and so in the case of 
ongoing data collections, a data package is a "snapshot" at a point in time, with a 
static beginning and ending date. Subsequent additions will be revisions of the 
original package.

More specific guidelines for ongoing datasets are here: [ongoing_data.md]


## 2. Coherence
If several data units are closely related they are best packaged together 
with one metadata file. A primary table of observations could be accompanied by a table of 
sampling sites or taxonomic information that each contains more material than can be fit 
into structured metadata, or is likely to be joined to the main observation table. 
Group data entities together if they share high-level metadata (like
people and sites) and methods. 

In a large sampling campaign where many parameters are measured, methods vary, or data 
units may be independent, it is often best to break data into several packages, all
accompanied by some of the same metadata and each with some unique metadata. 
This is especially true of ongoing campaigns, because packages composed of discrete units 
can be managed or updated independently. Some metadata is repeated across all packages when
first created (such as locations or owners), but subsequent updates will be streamlined.
 

## 3. "Long" vs. "Wide"
something about the tidyverse
[long_wide.md]()

## 4. Scientific domain
### Geographically focused 
Spatial data (e.g. shape files) of a common theme or scope should be zipped 
up in their respective folders. In EML, these should be typed as "otherEntity"
[page TBD, later?]()

### Community survey data
Recommend datasets that can be easily converted to common models, eg 
the ecocomDP model [community_survey.md]()

### Meteorology
EDI working through this, cognizant of existing work (e.g., the LTER) and with 
national data centers advising [page TBD]()

### Streaming data (e.g., instruments) 
try the GCE Data Toolbox for Matlab? [link here to EXISTING? page]()


