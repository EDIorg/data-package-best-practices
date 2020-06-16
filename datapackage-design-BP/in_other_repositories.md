Data in Other Repositories
==========================

Contributors: Greg Maurer, Margaret O'Brien, Corinna Gries, Tim Whiteaker, Sarah Elmendorf

Introduction
------------

A wide variety of data repositories are available to ecologists for publishing their data. The choice of where to publish a dataset is determined by many factors. The funding agency or a journal may require a certain repository (e.g., NSF BCO-DMO, NSF ADC, USDA ADC, DOE ESS-DIVE); the research subject may be best supported by a very specialized repository (e.g., AmeriFlux, GenBank); or the data were originally submitted to a general purpose repository with minimal metadata requirements (e.g., DRYAD, Figshare, Zenodo). To enhance data discoverability and interoperability, users and data managers may find it helpful to create additional repository records that are linked to these published datasets.

These concepts must be understood to clarify this best practices document:

-   A **dataset** consists of a data file, or files, containing named variables (say "Soil\_T\_10cm") with assigned values (the temperature numbers themselves) AND the accompanying metadata describing attributes of the data and other information.

-   A **duplicate dataset** contains data and/or metadata that are identical to those in another public data repository.

-   A **linked dataset** contains metadata, but the only data present are links to the unique identifier(s) of data held in another repository.

For the purposes of this document, all three dataset types above are published in online research data repositories and are assigned unique digital identifiers (DOIs).

This document discusses reasons for creating additional repository records for a published dataset, i.e., linked datasets pointing to other repositories, and recommendations of how to develop such records. It was written for the intended audience of a Long Term Ecological Research (LTER) information manager (IM), though it is applicable to anyone handling data in the context of a larger ecological research program. EDI is used as the representative data repository in this document. The same practices could be applied to other similar repositories.

Considerations for creating linked repository records
-----------------------------------------------------

Data managers and users have several reasons to consider creating linked datasets, i.e. additional repository records linked to a published dataset. For the LTER IM, this practice involves creating a new data package in the EDI repository that links to data already published in another (non-EDI) repository. However, care should be taken to **avoid duplicating the same data in multiple repositories**. The practice of duplicating research data in multiple repositories is discouraged because a) this creates a burden of maintaining multiple datasets to avoid divergence between them, and b) it creates confusion for data re-users who may be led to download the same data multiple times.

There are clear cases in which creating linked datasets offers benefits to data managers and users. There are also cases in which this practice should be avoided. Both types of cases are described in the sections below, but there are situations in which the pros and cons of this practice will need to be weighed. Experience with data user behavior and support is paramount for such decisions and may be made differently by different research groups.

### Cases supporting linked datasets

-   **Requirements dictate multiple repositories:** Large research projects or sites are frequently funded by different agencies and programs. Data collection may be supported by several such funding streams and, hence, fall in the purview of more than one requirement for data being archived in a particular repository. In some cases, data repositories already accommodate such requirements by linking or replicating data appropriately. Best examples are LTER data in EDI, NSF BCO-DMO and NSF ADC.

-   **Improved discoverability:** Data from a large research project or sites become better discoverable when published and, hence, discoverable within the same repository. This practice also puts the data into the larger context of all research and ancillary data at that location aiding in interpretation and analysis. It, furthermore, allows the site to easily build a more complete data catalog for reporting or other administrative purposes without having to pull data citations from different sources. By the same token, the same type of data from disparate projects or sites may be more discoverable and easier to integrate when stored in a specialized repository focused on a particular type of data. For instance, specialized data repositories can enforce data formatting or quality standards and require metadata elements that enhance search, discovery and reuse of particular types of data across projects in a way that is not possible using a generalized metadata form (EML) and repository (EDI).

-   **Adding important metadata**: If data were originally submitted to a general purpose repository with minimal metadata requirements (e.g., Dublin core) additional metadata (e.g., EML) may be needed for discoverability, reusability and integration. By creating a new repository record linked to the published dataset, richer and more useful metadata can be added and utilized.

-   **Derived data products:** In many cases raw data are best handled in a specialized repository, but derived data products based on those raw data are, or should be, published in a different repository. For example, genomics data such as raw sequencing data are best archived in a specialized repository like [[NCBI GenBank]{.underline}](https://www.ncbi.nlm.nih.gov/), but derived products such as trait data or diversity metrics would be most useful in EDI (see [[the Genomics best practices document]{.underline}](https://ediorg.github.io/data-package-best-practices/datapackage-design/genomic-and-metagenomic-data.html) for more). The same principles apply whenever a project or researcher has developed specialized procedures to process raw data or compute aggregations that are more appropriate for most users. In these cases it is important to maintain links between the derived data and the raw data when they are in separate repositories.

### When to avoid linked datasets

-   **Site- or Project-relevant data from outside research groups or agencies:** Although it may help with some aspects of data discovery it is generally not recommended to create linked datasets (or duplicates) for data collected and managed by entirely different research groups or agencies. ***In these cases, however, it is recommended to place a pointer to such repositories on a project website.***

-   **Linking between repositories that are DataONE member nodes**: The DataONE aggregator provides access to earth data held in numerous repositories through a unified interface. It is not recommended to duplicate this functionality by creating additional links between repositories.

Recommendations for Data Packages
---------------------------------

When the decision is made that a dataset needs to be accessible in more than one repository the following considerations should guide the process:

-   The metadata need to clearly state the original location of the data

-   Assigning more than one unique identifier (e.g., DOI) to the same data can create confusion when data is cited. Thus, the DOI of the data itself should be clearly stated in the linked data package.

-   The original repository should receive appropriate credit

-   To improve discoverability of single datasets, do not create one data package that functions as an inventory of all data in other repositories for a site. Instead create separate packages for each remotely linked dataset, or for groups of remotely linked datasets that would logically be used together (i.e. as datasets are normally grouped into a single package).

In EDI, the linked data package can be assembled using standard practices and EML metadata elements, but the included data entities must clearly lead the data user to files held in outside repositories. In addition, the package metadata should communicate the essential elements needed for data discovery (subject matter, authors, location, time-frame, etc.) and a brief description of how the data may be accessed and re-used via the outside repository. Metadata elements to be created in EML, and contents of the included data entities are described below.

### Package Metadata 

The EML metadata that will accompany the data package in EDI must contain the essential information for users to discover and use the data at the outside data repositories.

-   **Abstract:** Describe the collection generally. Since the actual data are held elsewhere, be sure to describe the location of the data being linked to. Also provide sufficient information for users to find and re-use the data entities at the outside data repository.

-   **Creators**

-   **Contacts**

-   **Methods:** Collection/generation methods for the data entities at the linked repository. If the methods are well-described at the outside repository being linked to, this element can simply refer users there. In addition, instructions for data access at the linked data repository should be provided.

-   **Geographic description** and **coordinates**: At a minimum these elements should define a bounding box that will make the data package discoverable through EDI, DataOne, or other geographic search interfaces. Additional coordinates can be given in the manifest entity below.

-   **Keywords:** Since linked datasets serve as an inventory of data held at a different repository, include the keyword \"data inventory\" and thematic keywords that describe the data entities in the other repository.

-   **Data Entity:** This is most likely a simple tabular manifest (inventory of holdings) that describes the data entities held in another data repository (or repositories). This should be a [[dataTable]{.underline}](https://eml.ecoinformatics.org/schema/eml-dataTable_xsd.html#eml-dataTable.xsd) entity, described as you would for any dataTable with regular column descriptions. In rare cases the data themselves may be duplicated, though this is only recommended if additional metadata must be added to interpret or enrich the data.

### Contents of the manifest dataTable entity

-   Any data package that links to data held in an outside repository should contain at least one data entity: a manifest (inventory) of data holdings at a linked repository(ies). The manifest should be written in a tabular data format (such as a .csv) that can be described as a dataTable entity in EML. For the specific case of genomics data see [[here]{.underline}](https://ediorg.github.io/data-package-best-practices/datapackage-design/genomic-and-metagenomic-data.html).

-   For each outside data holding, the manifest (dataTable entity) should have a row that includes persistent links such as DOIs to any data entities at the linked repository, relevant package identifiers, and descriptors for the data entity. The complete content of the manifest (inventory of holdings) would be dictated by the structure of the linked repository and the type of data entities there. Suggested columns are:

**Table 1:** Required columns in the manifest entity.

  Column name                  Description
---------------------------- ------------------------------------------------------------
  Filename(s)                  Filename at the repository being linked to
  Format                       File format of above
  Title/description            Title and/or brief description of the data resource
  External package/entity ID   Unique identifier at the repository being linked to.
  Publication\_DOI             DOI of of data published at the repository being linked to
  Repository\_URL              URL of the repository being linked to

**Table 2:** Optional columns in the manifest entity. These may be included in the manifest when needed to describe multiple data entities.

  Column name       Description
----------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  Latitude          Latitude in decimal degrees, WGS84 datum, associated with the data resource. For bounding boxes, use North\_latitude and South\_latitude columns.
  Longitude         Longitude in decimal degrees, WGS84 datum, associated with the data resource. For bounding boxes, use East\_longitude and West\_longitude columns.
  Start\_datetime   Starting datetime of the linked data file
  End\_datetime     Ending datetime of the linked data file (NA if data collection is ongoing)

Example data packages
---------------------

Each of the EDI packages below contain dataTable entities with links to outside repositories. These dataTables serve as the manifests (inventory) for the externally-held data described in the rest of the metadata.

**Table 3.** Linked-repository packages at EDI

  Title                                                                                                                                                        Description                                                                                                                                                                                                  EDI packageID
------------------------------------------------------------------------------------------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------
  Mass and energy fluxes from the US-Jo2 AmeriFlux eddy covariance tower in Tromble Weir experimental watershed at the Jornada Basin LTER site, 2010-ongoing   This data package links to eddy covariance data from a Jornada Basin LTER tower. The data are held at the AmeriFlux data repository ([[https://ameriflux.lbl.gov]{.underline}](https://ameriflux.lbl.gov))   [[knb-lter-jrn.210338005]{.underline}](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-jrn&identifier=210338005)
                                                                                                                                                                                                                                                                                                                                                                            
