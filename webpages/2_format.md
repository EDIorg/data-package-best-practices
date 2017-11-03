# 2. Format and QC data tables

Although we accept most file formats, we recommend that you use tabular data (comma or tab delimited ASCII text) and geospatial data types.  For multi-year observations, we strongly encourage you to compile your tabular data into a single file delimited by commas or tab spaces.  If you are having trouble with this, we will be here to help you out.  Your geospatial data files should be compressed into a single or multiple .zip directories.

<!-- 
<ul>
    <li>Data QC and QC - colin’s intro page</li>
    <li>Colin’s draft(?) pages here - see dir called Data OA/QC - colin</li>
</ul>
-->

Below are basic rules for scientists preparing data for archive:
1. Use consistent data organization.  You may be planning to submit your data manually to us in several tables (e.g., organized by year). If so, each table must have the same structure; that is, the attributes must have the same order and identical names in all the tables so we can write code to process your data.
1. "Consistent formatting" also means:
    - Columns with the same name across tables have the same
        - Unit
        - precision
        - date format
            - if one table has the 'date' column formatted as YYYY-MM-DD, then all should have this format
            - EDI recommends dates be in ISO 8601 format (as above), although other formats are allowed.
    - type (numeric or character)
        - e.g., do not enter a range of values in a column that contains numeric values (e.g., "< .02" for nitrate concentration). Your data will be entered into a database, and databases reject tables with columns having mixed data types. See below under "missing values".
1. Be careful of character formatting (e.g. superscript) or symbols (e.g. degree, accent marks, smart quotes) within the data table. Even in fields typed as "character" these may produce unintelligible characters during conversion, or when emailed.
1. Specify (in the metadata) the code you use for missing values in your tables. We recommend that missing fields (values) in data are NOT left blank.Software handles missing value code before ingesting the data table based on column's type.   Multiple missing values are allowed. Specify a definition for each missing value code, e.g.,
    - "NA" = not collected
    - "trace" = trace amount (e.g., instead of  "< .02" for a nitrate value)
    - "-99999" = not available (some researchers prefer to keep their missing values of the same type as the data)
1. Data tables exported as CSV from spreadsheet software like Excel should quote string fields or "escape" commas in string fields. we recommend exporting from MS excel using this menu choice:
    - Mac, MS Excel 2011: File > Export > TO DO
    - PC, MS Excel ____: File > Export > TO DO

 

NEXT: Create EML Metadata -> [LINK HERE TO step 3]

<!-- to be added:
- - EDIs Software registry - how to use and/or contribute - kristin
-->
