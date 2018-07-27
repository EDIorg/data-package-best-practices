# Long or Wide?
In a "wide", or matrix-style data model each variable has a separate column. 
In an attribute-value ("long", "narrow", or "key-value") data model there is one 
column containing the names of the variables and another column for the variables' values. 

The attribute-value model is often used when a matrix-type model would result in
many empty cells. This model treats each point observation as a single record, which contains
fields for location, time, the variable (attribute) name, and value. There may be other
multiple columns to context, or for flags, methods, etc.
For ecologists, this data model is useful for (1) biodiversity (the Darwin Core
Archive model used by GBIF is key-value) and (2) sensor data that if put in a 
matrix-format might require a very wide table, or would have many empty cells, for 
example when species are not regularly observed or sensors not deployed consistently.

The advantages of the key-value model are its flexibility and efficiency. However,
data tables in this format are not easily (or completely) described in of EML (Version 2.x). 
EML includes descriptors for type (numeric, string), unit, and precison which must apply 
by all values in that column. So generally, any data entity of the key-value model will
have both the key and value columns typed as "nominal text" to accomodate any content. When
values are numeric, text-typing will reduce 
data's understanding considerably, unless additional columns for attributes like 
unit or precision are included as context columns. The basic features of these two models 
are summarized below. 

## Features
|Feature  |Long  | Wide  | 
|--|--|--|---|
|size  |tend to be compact, with no empty cells |there may be many empty cells | 
|additions (ongoing datasets only)  |multiple rows are added for each time & location addition  |genenerally, one row per time & location addition  | 
|data model maintenance, e.g., for an ongoing dataset  |no columns will need to be added for new measurements; new measurements are simply new rows  |you may need to add columns over time, e.g., when new measurements are added  | 
|implications for EML ```<attribute>``` typing |"value" must be typed and described generally enough to fit all values, e.g., "string" |structured attribute descriptions can be very detailed |   
|implications for EML ```<attribute>``` enumeration |keys (variable names) should be enumerated; ie, the metadata explictly states what content is allowed in that column (you would update the enumerations if measurements are added)|variable names are in the ```<attributeName>``` element for each column. |   


## Manipulation
If you work in R, there are two fundamental verbs of data tidying:

- gather() takes multiple columns, and gathers them into key-value pairs: it makes “wide” data longer.
- spread(). takes two columns (key & value) and spreads in to multiple columns, it makes “long” data wider.

tidyr also provides separate() and extract() functions which makes it easier to pull 
apart a column that represents multiple variables. The complement to separate() is unite().

To get started, see the vignettes in the packages themselves, and the material at the
tidyverse website: https://tidyr.tidyverse.org/


## Recommendations
We recommend a middle of the road approach. Basic guidelines:

- For efficient maintenance, you should plan to add rows, not columns. For example,
 don't arrange annual data in colunms for each year; have one column for "date" and 
 add rows for a new year's data.
- Don't collapse (gather) context columns; e.g., keep date, location separate.
- It's OK to collapse (gather) columns that share a unit, precision, typing. 
  - **Example 1: Biodiversity data:**
may have all values in "percent cover" or "count"; if so, these could be represented in
an attribute-value arrangement and described accurately in EML. If they don't share a unit
use a matrix format. 
  - **Example 2: Sensor data:** 
variations of the key-value format have been developed in communities 
handling large volumes of sensor data (e.g., the Observation Data Model, or ODM from CUAHSI.)
For a single site this model is useful when senors are fequently chagted/redepolyed. For 
description in EML we recommend that each data table oncontain only the key-value formatted
values for a single sensor (or as separate entities in one data package). Most of these
data models describe the condept of a single "data stream:, which may be used to achieve this
dynamically