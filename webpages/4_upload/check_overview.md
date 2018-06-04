## Check overview
Checks are categorized in several ways. 
- priority: Each check was given one of three priority levels (high, medium, low) depending on its importance to LTER and to the IMC. Priority levels may help guide the implementation, but are not the only factor used to determine the schedule
- justification: The framers (LTER IMC) specified that data package checking should not cause undue burden for data package submitters, and so the value of each check must be justified. 
  - “Discovery” justification applies to those elements used by search tools or during human evaluation.
  - “Workflow” was applied to checks for data package features essential to workflow software and automated ingestion. 
  - “PASTA” refers to data package features specifically required by core NIS software components
  - “Good practice” was gleaned from EML Best Practices documents
- Scope: Because communities are expected to employ different criteria for data package acceptance, each check can be categorized with a ‘scope’, to indicate the community applying it - packaging aspect
- response behavior
- packaging aspect: reflects the part of a data package where a check operates. 
  - “Metadata” checks are concerned purely with metadata presence or content, e.g., a check for the presence of an XML element, such as
`<methods>` or `<geographicCoverage>`. 
  - “Data” checks are concerned only with the data entity, e.g., a check that simply returns a row of data or examines a data record for possible delimiters. 
  - “Congruence” checks examine the agreement between metadata and data, e.g., to compare the number of attributes listed in metadata to the number of columns in a data table

### Response behavior
Of particular interest to data managers is their Response behavior.
  - Check types
  - List of deal-breakers
