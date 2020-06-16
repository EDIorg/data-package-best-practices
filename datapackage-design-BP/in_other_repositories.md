Data in Other Repositories
==========================

Contributors: Greg Maurer, Margaret O'Brien, Corinna Gries, Tim Whiteaker, Sarah Elmendorf

Introduction
------------

A wide variety of data repositories are available to ecologists for publishing their data. The choice of where to publish a dataset is determined by many factors. The funding agency or a journal may require a certain repository (e.g., NSF BCO-DMO, NSF ADC, USDA ADC, DOE ESS-DIVE); the research subject may be best supported by a very specialized repository (e.g., AmeriFlux, GenBank); or the data were originally submitted to a general purpose repository with minimal metadata requirements (e.g., DRYAD, Figshare, Zenodo). To enhance data discoverability and interoperability, users and data managers may find it helpful to create additional repository records that are linked to these published datasets.

These concepts must be understood to clarify this best practices document:

-   A **dataset** consists of a data file, or files, containing named variables ("Soil\_T\_10cm" for example) with assigned values (the temperature numbers themselves) AND any accompanying metadata.

-   A **data package** refers to a dataset in which complete metadata describing the attributes of the data and other necessary information for data discovery and re-use is included. Datasets in the EDI repository are always referred to as data packages because complete, validated EML metadata documents are required for publication.

-   A **duplicate dataset or data package** contains data and/or metadata that are identical to those in another public data repository.

-   A **linked dataset or data package** contains metadata, but the only data present are links to the unique identifier(s) of data held in another repository.

For the purposes of this document, all four dataset types above are published as records in online research data repositories and are assigned unique digital identifiers (DOIs). **Data users should always cite the DOI (or other identifier) that resolves to the repository holding the original data.**

This document discusses reasons for creating additional repository records for a published dataset, i.e., linked datasets pointing to other repositories, and provides recommendations on how to develop such records. It was written for the intended audience of a Long Term Ecological Research (LTER) information manager (IM), though it is applicable to anyone handling data in the context of a larger ecological research program. EDI is used as the representative data repository in this document. The same practices could be applied to other similar repositories.

Considerations for creating linked datasets
-------------------------------------------

Data managers and users have several reasons to consider creating linked datasets, i.e. additional repository records linked to a published dataset. For the LTER IM, this practice involves creating a new data package in the EDI repository that links to a dataset already published in another (non-EDI) repository. However, care should be taken to **avoid duplicating the same data in multiple repositories**. The practice of duplicating research data in multiple repositories is discouraged because a) this creates a burden of maintaining multiple datasets to avoid divergence between them, and b) it creates confusion for data re-users who may be led to download or cite the same data multiple times.

There are clear cases in which creating linked datasets offers benefits to data managers and users. There are also cases in which this practice should be avoided. Both types of cases are described in the sections below, but there are situations in which the pros and cons of this practice will need to be weighed. Experience with data user behavior and support is paramount for such decisions and may be made differently by different research groups.

### Cases supporting linked datasets

-   **Requirements dictate multiple repositories:** Large research projects or sites are frequently funded by different agencies and programs. Data collection may be supported by several such funding streams and, hence, fall in the purview of more than one requirement to archive data in a particular repository. In some cases, data repositories already accommodate such requirements by linking or replicating data appropriately. Examples of this are LTER data in EDI, NSF BCO-DMO and NSF ADC.

-   **Improved discoverability:** Data from a large research project or site become better discoverable when published and, hence, discoverable within the same repository. This practice also puts the data into the larger context of all research and ancillary data at that location aiding in interpretation and analysis. It, furthermore, allows the site to easily build a more complete data catalog for reporting or other administrative purposes without having to pull data citations from different sources. By the same token, the same type of data from disparate projects or sites may be more discoverable and easier to integrate when stored in a specialized repository focused on a particular type of data. For instance, specialized data repositories can enforce data formatting or quality standards and require metadata elements that enhance search, discovery and reuse of particular types of data across projects in a way that is not possible using a generalized metadata form (EML) and repository (EDI).

-   **Adding important metadata**: If data were originally submitted to a general purpose repository with minimal metadata requirements (e.g., Dublin core) additional metadata (e.g., EML) may be needed for discoverability, reusability and integration. By creating a new repository record linked to the published dataset, richer and more useful metadata can be added and utilized.

-   **Derived data products:** In many cases raw data are best handled in a specialized repository, but derived data products based on those raw data are, or should be, published in a different repository. For example, genomics data such as raw sequencing data are best archived in a specialized repository like [[NCBI GenBank]{.underline}](https://www.ncbi.nlm.nih.gov/), but derived products such as trait data or diversity metrics would be most useful in EDI (see [[the Genomics best practices document]{.underline}](https://ediorg.github.io/data-package-best-practices/datapackage-design/genomic-and-metagenomic-data.html) for more). The same principles apply whenever a project or researcher has developed specialized procedures to process raw data or compute aggregations that are more appropriate for most users. In these cases it is important to maintain links between the derived data and the raw data when they are in separate repositories.

### When to avoid linked datasets

-   **Site- or Project-relevant data from outside research groups or agencies:** Although it may help with some aspects of data discovery it is generally not recommended to create linked datasets (or duplicates) for data collected and managed by entirely different research groups or agencies. ***In these cases, however, it is recommended to place a pointer to such repositories on a project website.***

-   **Linking between repositories that are DataONE member nodes**: The DataONE aggregator provides access to earth data held in numerous repositories through a unified interface. It is not recommended to duplicate this functionality by creating additional links between repositories.

Recommendations for creating linked datasets
--------------------------------------------

When the decision is made that a dataset needs to be accessible in more than one repository the following considerations should guide the process:

-   The metadata, preferably in the abstract or another obvious location, must clearly state the original location of the data, how to access it, and identify the correct data citation to use.

-   Assigning more than one unique identifier (e.g., DOI) to the same data can create confusion when data is cited. Thus, the DOI of the data itself should be clearly stated in the metadata of the linked dataset with instructions on which DOI to cite.

-   The original repository should receive appropriate credit.

-   To improve discoverability of single datasets, do not create linked datasets that function solely as an inventory of all data in other repositories for a site or project. Instead create a separate dataset linked to each remote dataset in the outside repository, or a dataset linked to a group of remote datasets that would logically be used together (i.e. as data entities are normally grouped into a single EDI data package).

In EDI, the linked data package can be assembled using standard practices and EML metadata elements, but the included data entities must clearly lead the data user to files held in outside repositories. In addition, the package metadata should communicate the essential elements needed for data discovery (subject matter, authors, location, time-frame, etc.) and a brief description of how the data may be accessed, re-used, and cited via the outside repository. Metadata elements to be created in EML, and contents of the included data entities are described below.

### EDI data package metadata 

The EML metadata that accompanies a linked EDI data package must contain the essential information for users to discover and use the data at the outside data repository. Suggested EML elements and their contents are described below.

-   **Abstract:** Describe the key features of the data package. For linked data packages, clearly state that the data are located in an outside repository and direct the user to the correct data citation. Describe the outside dataset in sufficient detail that users can determine whether this data is fit for their use, and instruct them on how to find, re-use, and cite the data held in another repository.

-   **Creators**

-   **Contacts**

-   **Methods:** Collection/generation methods for the data entities at the outside repository that is being linked to. If the methods are well-described at the outside repository, this element can simply refer users there. In addition, detailed instructions on how to access and cite the data entities at the outside repository should be provided if the briefer abstract is not sufficiently detailed.

-   **Geographic description** and **coordinates**: At a minimum these elements should define a bounding box that will make the data package discoverable through EDI, DataOne, or other geographic search interfaces. Additional coordinates can be given in the manifest entity below.

-   **Keywords:** Since linked data packages serve as an inventory of data held at a different repository, include the keyword \"data inventory\" and thematic keywords that describe the data entities in the other repository.

-   **Data Entity:** This is most likely a simple tabular manifest (inventory of holdings) that describes the dataset held in an outside data repository. This should be a [[dataTable]{.underline}](https://eml.ecoinformatics.org/schema/eml-dataTable_xsd.html#eml-dataTable.xsd) entity, described as you would for any dataTable with regular column descriptions. In rare cases the data themselves may be duplicated, though this is only recommended if additional metadata must be added to interpret or enrich the data.

### The manifest file (dataTable entity in EML)

Any dataset that links to data held in an outside repository should contain at least one data file: a manifest (inventory) of data holdings at an outside repository with appropriate links and unique identifiers. The manifest should be written in a tabular data format, such as a .csv, with the attributes of the table (the columns) described in the metadata. For an EDI data package the manifest will be described as a dataTable entity in EML. For the specific case of genomics data see [[here]{.underline}](https://ediorg.github.io/data-package-best-practices/datapackage-design/genomic-and-metagenomic-data.html).

The manifest table must have a row for each outside dataset (or file) being linked to, with columns that include persistent links such as DOIs, unique identifiers of the dataset at the outside repository, and relevant descriptors of the dataset. The complete content of the manifest (inventory of holdings) would be dictated by the structure of the outside repository and the types of data entities and metadata held there. Required and optional columns are presented in Tables 1 and 2.

**Table 1:** Required columns in the manifest table.

  Column name                  Description
---------------------------- -----------------------------------------------------
  Filename(s)                  Dataset or file name at the outside repository
  Format                       File format of above
  Title/description            Title and/or brief description of the data resource
  External dataset/entity ID   Unique identifier at the outside repository 
  Publication\_DOI             DOI of data published at the outside repository
  Repository\_URL              URL of the repository being linked to

**Table 2:** Optional columns in the manifest table. These may be included in the manifest when needed to describe one or more data entities.

  Column name       Description
----------------- ------------------------------------------------------------------------------------------------------------------------------------------------------
  Latitude          Latitude in decimal degrees, WGS84 datum, associated with the outside dataset. For bounding boxes, use North\_latitude and South\_latitude columns.
  Longitude         Longitude in decimal degrees, WGS84 datum, associated with the outside dataset. For bounding boxes, use East\_longitude and West\_longitude columns.
  Start\_datetime   Starting datetime of the outside dataset
  End\_datetime     Ending datetime of the outside dataset (NA if data collection is ongoing)

Example data packages
---------------------

Each of the EDI data packages below contain dataTable entities with links to data in outside repositories. These dataTables serve as the manifests (inventories) for the datasets held in outside repositories, as described in the rest of the metadata. The EML abstract and methods element give detailed access and citation instructions.

**Table 3.** Linked data packages at EDI that provide examples of the best practices in this document.

  Title                                                                                                                                                        Description                                                                                                                                                                                                  EDI packageID
------------------------------------------------------------------------------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------
  Mass and energy fluxes from the US-Jo2 AmeriFlux eddy covariance tower in Tromble Weir experimental watershed at the Jornada Basin LTER site, 2010-ongoing   This data package links to eddy covariance data from a Jornada Basin LTER tower. The data are held at the AmeriFlux data repository ([[https://ameriflux.lbl.gov]{.underline}](https://ameriflux.lbl.gov))   [[knb-lter-jrn.210338005]{.underline}](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-jrn&identifier=210338005)


