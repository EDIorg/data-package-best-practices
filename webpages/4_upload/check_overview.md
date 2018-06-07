## Check overview
### Categorization 
Checks are categorizes several different ways. Some typologies simply facilitate organization or communication (e.g., justification, priority). Specific, granular definitions forces check creators to focus on their most salient features and facilitates coding. 
- **Justification**: data package checking should not cause undue burden for submitters, and so the value of each check must be justified. 
  - Discovery: justification applies to those elements used by search tools or during human evaluation.
  - Workflow: was applied to checks for data package features essential to workflow software and automated ingestion. 
  - PASTA: refers to data package features specifically required by core software components
  - Good practice: was gleaned from EML Best Practices documents
- **System**: Because communities are expected to employ different criteria for data package acceptance, each check can be categorized with a ‘system’ (or 'scope'), to indicate the community applying it
- **Packaging aspect**: reflects the part of a data package where a check operates. 
  - Metadata: checks are concerned purely with metadata presence or content, e.g., a check for the presence of an XML element, such as
`<methods>` or `<geographicCoverage>`. 
  - Data: checks are concerned only with the data entity, e.g., a check that simply returns a row of data or examines a data record for possible delimiters. 
  - Congruence: checks examine the agreement between metadata and data, e.g., to compare the number of attributes listed in metadata to the number of columns in a data table
- **Priority**: Each check was given one of three priority levels (high, medium, low) depending on its importance to user communities. Priority levels may help guide the implementation, but are not the only factor used to determine the schedule
### Response behavior
Of particular interest to data managers is a check's response behavior because some checks affect whether a package can be accepted. There are a total of four possible responses in two major classes. Checks designated as “info” do not have pass/fail criteria and do not affect the acceptance of the data package in any way. An “info” check is for informational purposes only. The second class of check can affect insertion of a package. Their responses will be either “valid”, or one of “warn” or “error”.  With two levels of non-valid response, code behavior can be customized.
#### Summary
- **info**: check is for informational purposes only; for example, the check to display a few lines of content of a URL.
- **valid**: all criteria of the check were met.
- **warn**: the criteria of the check were not met and that there may be some problem needing attention, but the data package is still acceptable. 
- **error**: the entire data package will be rejected.

Understandably, checks classified with the “valid/error” response behavior were of greatest importance to classify correctly, because
these would deny upload to PASTA. Only checks whose failure would mean that a data package is unusable should generate an “error”

### Types of checks whose failure means a data package is unusable
- **XML documents that do not comply with the EML schema** because these cannot be transformed to HTML or their XPaths interpreted
- **Package identifiers outside the controlled formatting scheme**, as these cannot be entered into Network catalogs
- **Metadata URLs for data entities that are broken links**, because data cannot be accessed by any means
- **Non-unique entity names in metadata (within one package)**, because individual data entities cannot be distinguished
- **The count of entity attributes (e.g., columns) in metadata does not match the count of columns** in data entities, because incongruity generally means (at best) jagged rows, which is unacceptable to analysis environments like R or Matlab; or (at worst) the metadata does not belong with this data entity, which renders the package unusable.
- **Integrity checksum of a downloaded data entity does not match the stated checksum**. As with a count of columns, a mismatch may mean that the metadata does not belong with this data entity, and should be confirmed before continuing.
