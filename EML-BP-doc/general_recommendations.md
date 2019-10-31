# General Recommendations

Following are general best practices for handling EML dataset metadata:

## Metadata Distribution

Do not publicly distribute EML documents containing elements with incorrect information, e.g., as a workaround for missing metadata or to meet validation requirements. Pre-publication drafts, or EML produced for demonstration or testing purposes should be clearly identified as such and not contributed to public archives, because these are passed on to large-scale clearinghouses. For previews of drafts or handling test and demonstration data packages, consult your repository to learn about options.

## Data Package Identifiers

Metadata and data set versioning are controlled by the contributor, and so identifiers are tied to local systems. Many repository systems that accept EML-described data support principles of immutable metadata and data entity versioning. EML has elements to contain package identifiers, although these may also be assigned externally. It is the responsibility of the submitters to understand the practices of their intended repository when using identifiers.

## High-priority Elements

- To support locating data by time, geographic location, and   taxonomically, metadata should provide as much information as   possible for the data package, in the three <**coverage**>;   elements:
  - <**temporalCoverage**>; (when),
  - <**geographicCoverage**>; (where) and 
  - <**taxonomicCoverage**> (what).
- For a potential user to evaluate the relevance and usability of the   data package for their research study or synthesis projects,   metadata should include detailed descriptions in the   
  - <**project**>,
  - <**methods**>,
  - <**protocols**>, and
  - <**intellectualRights**> elements.

