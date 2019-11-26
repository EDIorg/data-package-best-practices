--- 
title: "Data Package Best Practices"
author: "Environmental Data Initiative"
description: "Best practice recommendations for data packages, described by Ecological Metadata Language (EML)."
favicon: "favicon.ico"
github-repo: "EDIorg/data-package-best-practices"
---

## Overview
This website contains current \"Best Practice\" recommendations for ecological and environmental science data packages. These recommendations are directed towards the following goals:

- Provide guidance and clarification on
  - the use of Ecological Metadata Language (EML)
  - arrangement of tables or other data entities within different types of data packages
- Minimize heterogeneity of EML-described data packages to simplify development and re-use of software
- Maximize interoperability to facilitate data synthesis

To participate in the "Best Practices for Data Packages" project, see "About this site".


## EML Metadata concepts
The recommendations for EML metadata apply to all data packages. This section subsumes V3 of the static document "Best Practices for Dataset Metadata in Ecological Metadata Language (EML)". Presentation as a website allows for bookmarking and cross-links. The entire most recent (versioned, citable) release is also available as a PDF. 


 **[Best Practices for Dataset Metadata in Ecological Metadata Language (EML)](EMLmetadata/index.html)**
  
## Scientific domains
This section contains recommendations for data from certain scientific domains. Many of these topics have extensive, related code bases, which some of these recommendations take into account and link to. 

Examples:

- ecological community survey data
- meteorology and/or hydrology data
- genomics and metagenomics
- soil carbon cycling
- ocean acidification 
  
**[Recommendations for data from specific scientific domains](scientific_domain/index.html)**
  
## Non-tabular data and other packaging challenges
Certain data have special handling based on their acquisition method or platform. Some are raw data that should be preserved because they have uses beyond their original purpose. Many are not exclusive to a single scientific domain. 

Examples:

- key-value pair tables 
  - and the choice of long vs. wide
- model output
- drone-collected
- photo imagery
  - quadrat photos
  - series of still images from fixed cameras
  - digital microscopy
  - video
- audio
- telemetry
- GIS data
- flow cytometry output

**[Recommendations for non-tabular and other packaging challenges](non_tabular/index.html)**

## Application-specific recommendations
Recommendations for data intended for specific handling or intended for certain applications. In most cases these are mediated by EDI.

TBD: decide if this goes here. if not, then where?

Examples:

- offline data 
  - sometimes necessary if size prevents efficient delivery over HTTP)
- Specific features DataONE handles or indexes (or does not handle)
- Data that are to be replicated to another repository 
- 

**TBD: link (if it even goes here...)** 



