# Long vs Wide
In a "wide", or matrix-style data model  each variable has a separate column. 
In an attribute-value ("long", or "narrow") data model there is one column for all 
the values and another column for the variable's name. 

The attribute-value model is often used when a matrix-type model would result in
many empty cells. This model treats each point observation as a single record, which contains
fields for location, time, the variable (attribute) name, and value. There may be other
multiple columns to context or for flags, methods, etc.
For ecologists, this data model is especially uesful for (1) biodiversity (the Darwin Core
Archive model used by GBIF is attribute-value) and (2) sensor data that in a matrix-format
might require a very wide table, or would have many empty cells, for example when species are
not regularly observed, or sensors not deployed consistently.

The advantages of the attribute-value model are its flexibility and efficiency. However,
data tables in thei format are not easily described in the current version of EML. 
EML includes descriptors for type (numeric, string), unit, and precison which must be shared 
by all values in that column. So generally, any data entity of the attribute-value model will
have all value columns typed as "text" (to accomodate any content). This will reduce 
data's understanding considerably, unless record attributes like unit or precision are included
in context columns. The features of these two models are summarized below. 




## Features
|Feature  |Long  | Wide  | 
|--|--|--|---|
|size  |tend to be compact, with no empty cells |there may be many empty cells | 
|additions, for ongoing datasets  |multiple rows are added for each time & location addition  |genenerally, one row per time & location addition  | 
|implications for EML ```<attribute>``` typing |"value" must be typed and described generally enough to fit all values, e.g., "string" |structured attribute descriptions can be very detailed |   
|implications for EML ```<attribute>``` enumeration |you can enumerate for variable names (ie, state in metadata the allowable content)|same |   
|data model maintenance, e.g., for a time series  |no columns will need to be added; new measurements are simply new rows (and possibly, additional enumerations)  |you may need to add columns over time, e.g., when new measurements are added  | 




## Manipulation
something about the tidyverse. and gather/spread

## Best choice
- middle of the road.
- generally, plan to add rows, not columns (ie, don't arrange data in individual colunms 
for each year; have one column for date and add rows for a new year's data.)
- dont collapse (gather) context columns; e.g., keep date, time separate.
- OK to collapse (gather) columns that share a unit, precision, typing