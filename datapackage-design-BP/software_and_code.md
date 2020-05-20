# Code in EDI

Contributors: An Nguyen, Tim Whiteaker

## Introduction

This document describes best practices for archiving software, code, or scripts, such as a simulation model, data visualization package, or data munging scripts. This document was written for the intended audience of a Long Term Ecological Research (LTER) information manager (IM), though it is applicable to anyone operating in the context of a larger ecological research program. We assume that the target archive is designed to handle ecological data, and that a given archive package will include metadata written in Ecological Metadata Language (EML) format. We refer to the Environmental Data Initiative (EDI) as an example archive, though the same practices could be applied to other similar repositories.


### Background

While software can be described in detail using the EML <**software**> tree, there exists a project called [CodeMeta](https://codemeta.github.io/index.html) which is designed with software metadata in mind. In fact, PASTA currently only accepts EML which have <**dataset**> as the child element beneath the root <**eml**> element. Therefore, one of the key recommendations in this document is to move away from the <**software**> node in favor of including a CodeMeta file when archiving software or code in EDI.

We recognize that there are other candidate archives for code. For example, [Zenodo](https://zenodo.org/), a popular DOI-minting all-purpose repository, can conveniently archive a specific version of [code in a GitHub repository](https://guides.github.com/activities/citable-code/). The best practices in this document cover both archiving code in EDI and referencing code archived elsewhere.

The intention of these recommendations is to make research based on modeling or software more transparent rather than achieve exact reproducibility, i.e., provide sufficient documentation so that a knowledgeable person can understand algorithms, programming decisions, and their ramifications for the results, rather than run the model and obtain the same results.  Of course, if software can be easily packaged with data so that an end user can easily run the code, all the better.

## Recommendations for data packages

### Software/code in EDI

When deciding whether to and how to archive software or code, consider the following:

* Is it a model and/or a model-based dataset? Also see the [best practices for archiving model-based datasets](./model-based-datasets.md). 
* How likely is it that the code will be well maintained into the future? E.g., code packages submitted to established code repositories may stay there only while they comply with all testing requirements. That is, they will need regular updates whenever dependencies are updated. E.g.: the R package repository CRAN might remove packages that are no longer actively maintained. If that commitment to code maintenance is unlikely, such a package should be archived.
* Should the code be archived as a separate package or with the data? 
  * If the code is used to generate several independent datasets it should be archived as a separate package.
  * The software authors wishing to place it under a different license from that of the associated data, or to obtain a DOI for only the code, may be reason to separate code and data packages.
  * If deciding to package code separately, it may be archived on EDI, or another repository such as Zenodo or Figshare (see section 2 on external software).
  * In most other cases, it is recommended to archive code and data together on EDI for context.
* Large community software packages may undergo significant updates and it may make sense to archive the code of a certain version with the data for transparency reasons. Consider whether prior versions of a software package are available wherever that model is distributed.

When archiving software, we strongly recommend including a user guide with installation and usage instructions if such would not already be apparent to the typical user. Take into account that the user might not have access to certain inputs that the software/scripts require. Include when feasible at least some example data, and configure the script so that it is ready to run with the example data.


### Documenting software/code

Include the code as an otherEntity. Although a well documented human readable text format of the code is preferred, in case of multiple scripts, and/or where directory structure is important, a zip or tarball may be used. For the formatName element in EML, we recommend using [MIME types](https://www.iana.org/assignments/media-types/media-types.xhtml.) if available for your code format.  You may not find a perfect fit for your file type, so just do the best you can. For the entityType element, use a simple name for the entity type such as "R markdown".  For more suggestions on formatName and entityType, see the [best practices for EML entity metadata](../EMLmetadata/entity-datatable-spatialraster-spatialvector-storedprocedure-view-otherentity.html).

Example 1: EML otherEntity snippet for a script file.

```xml
<otherEntity>
   <entityName>R script to process CTD data</entityName>
   <entityDescription>Annotated RMarkdown script to process, calibrate, and flag raw CTD data.</entityDescription>
   <physical>
      <objectName>BLE_LTER_CTD_QAQC.Rmd</objectName>
      <size unit="byte">9674</size>
      <authentication method="MD5">8547b7a63fcf6c1f0913a5bd7549d9d1</authentication>
      <dataFormat>
         <externallyDefinedFormat>
            <formatName>text/markdown</formatName>
         </externallyDefinedFormat>
      </dataFormat>
   </physical>
   <entityType>R markdown</entityType>
</otherEntity>
```


**CodeMeta**

Include a CodeMeta JSON file for all code that is archived in EDI. The CodeMeta file should be named “codemeta.json” and listed as an EML otherEntity. The formatName should be “application/json”, and the entityDescription should specify CodeMeta.

Do include some kind of license to limit your liability. Generally, this should match the license on the overall package; however, if the package has a mix of data and code, and they each fall under different licenses, then separating them might be advisable, but ultimately we leave that decision up to you.

For unnamed projects, e.g., one-off scripts for data processing, analysis, and/or visualisation, a CodeMeta might appear to be overkill; however, CodeMeta files are quick and simple to generate, and we recommend the below bare minimum. If there are multiple scripts each in their own otherEntity tag, we recommend aggregating information about them into one codemeta.json. 

Example 2: Minimum recommended codemeta.json example for unnamed projects. 

```json
{
   "@context": ["https://doi.org/10.5063/schema/codemeta-2.0",
      "http://schema.org"
   ],
   "@type": "SoftwareSourceCode",
   "description": "RMarkdown script to calibrate and flag raw CTD data.",
   "author": {
      "@type": "Person",
      "givenName": "Christina",
      "familyName": "Bonsell",
      "email": "cbonsell@utexas.edu",
      "@id": "https://orcid.org/0000-0002-8564-0618"
   },
   "keywords": ["calibration", "CTD", "RMarkdown"],
   "license": "https://unlicense.org/",
   "dateCreated": "2013-10-19",
   "programmingLanguage": {
      "@type": "ComputerLanguage",
      "name": "R",
      "version": "3.6.2",
      "url": "https://r-project.org"
   }
}
```

Example 3: sample otherEntity metadata for example 2's codemeta.json. 

```xml
<otherEntity>
   <entityName>CodeMeta file for BLE_LTER_CTD_QAQC.Rmd</entityName>
   <entityDescription>CodeMeta file for annotated RMarkdown script to process, calibrate, and flag raw CTD data.</entityDescription>
   <physical>
      <objectName>codemeta.json</objectName>
      <size unit="byte">702</size>
      <authentication method="MD5">8547b7a63abc6c1f0913a5bd7549d9d1</authentication>
      <dataFormat>
         <externallyDefinedFormat>
            <formatName>application/json</formatName>
         </externallyDefinedFormat>
      </dataFormat>
   </physical>
   <entityType>CodeMeta</entityType>
</otherEntity>
```

For named projects, also include the software name, and also the version if applicable. The example below shows some additional metadata you can include. See also the more complete [codemetar example](https://docs.ropensci.org/codemetar/articles/codemeta-intro.html) and the available [CodeMeta terms](https://codemeta.github.io/terms/).

Example 4: A more complete CodeMeta example for named projects. Example taken from the CodeMeta project Github with edits for brevity.

```json
{
   "@context": ["https://doi.org/10.5063/schema/codemeta-2.0",
      "http://schema.org"
   ],
   "@type": "SoftwareSourceCode",
   "name": "codemetar: Generate 'CodeMeta' Metadata for R Packages",
   "description": "A JSON-LD format for software metadata",
   "author": [{
         "@type": "Person",
         "givenName": "Carl",
         "familyName": "Boettiger",
         "email": "cboettig@gmail.com",
         "@id": "https://orcid.org/0000-0002-1642-628X"
      },
      {
         "@type": "Person",
         "givenName": "Maëlle",
         "familyName": "Salmon",
         "@id": "https://orcid.org/0000-0002-2815-0399"
      }
   ],
   "codeRepository": "https://github.com/ropensci/codemetar",
   "dateCreated": "2013-10-19",
   "license": "https://spdx.org/licenses/GPL-3.0",
   "version": "0.1.8",
   "programmingLanguage": {
      "@type": "ComputerLanguage",
      "name": "R",
      "version": "3.5.3",
      "url": "https://r-project.org"
   },
   "softwareRequirements": [{
         "@type": "SoftwareApplication",
         "identifier": "R",
         "name": "R",
         "version": ">= 3.0.0"
      },
      {
         "@type": "SoftwareApplication",
         "identifier": "git2r",
         "name": "git2r",
         "provider": {
            "@id": "https://cran.r-project.org",
            "@type": "Organization",
            "name": "Comprehensive R Archive Network (CRAN)",
            "url": "https://cran.r-project.org"
         }
      }
   ],
   "keywords": ["metadata", "codemeta", "ropensci"]
}
```

**Metadata to enable reproducibility**

Aside from the software/code itself and its dependencies, other pieces of information may be important should a user wish to reproduce results, such as the operating system and version and the system locale. Include this information in the data package’s methods/methodStep/description. For certain tools, there are ways to easily generate this information, e.g., a call to `sessionInfo()` in the R console. If the system outputs this information in a standardly formatted plain text file, that might be included as an otherEntity.

### Linking between code and data

There are a few solutions for providing explicit machine-readable linkages between different entities/packages (the distinction between code/data doesn’t matter too much here). For most cases we recommend the simplest approach, which is to use the methods/methodStep/description element of EML. More advanced users may wish to utilize the other solutions described herein.

**Descriptive approach**

In the dataset methods/methodStep/description element, include verbal descriptions such as “results.csv was derived from raw_data.csv using script.R” and repeat for all entities. If code and data reside in different packages, be sure to specify that.

**The EML dataSource element**

Nested under methods/methodStep, dataSource elements describe other data packages that serve as source for the current package. dataSource looks like a mini-EML tree describing the source data. Example: [ecocomDP packages](https://portal.edirepository.org/nis/simpleSearch) list the original packages under dataSource. dataSource does not describe relationships between entities in the same package, and as far as we know there is no explicit way in EML to do so. 

**ProvONE**

[ProvONE](http://jenkins-1.dataone.org/jenkins/view/Documentation%20Projects/job/ProvONE-Documentation-trunk/ws/provenance/ProvONE/v1/provone.html) is a model developed by DataONE affiliates for provenance or denoting relationships between data entities. Each package on DataONE is described by a science metadata document (e.g., EML, ISO, FGDC) and a resource map document following ProvONE. The resource map powers a nice display of data relationships (see [this package on the Arctic Data Center](https://arcticdata.io/catalog/view/doi%3A10.18739%2FA2556Q)). This handles both relationships between entities in the same package and entities residing in different packages. However, note that EDI currently does not utilize this model.

### External software

Large community-backed tools or proprietary software such as ArcGIS or Microsoft Excel do not need to be archived. However, if they have had any impact on the final data (e.g., ArcGIS was used to modify spatial rasters), the EML methods section should describe the routines performed. Within the data package, indicate linkage to external software as follows.

* Briefly describe the software/code and its relationship to the data in EML’s methods/methodStep/description element.
* Names of all software used. Include both the common acronym and the full spelling.
* The URL(s) to all models/software used. Stable, persistent URLs pointing to exact version(s) are preferable, rather than generic links, e.g. to a project homepage. If the archived model has a DOI, then include a full citation to the model in the methods/methodStep/description text. Only exception to this is tools such as Excel that have achieved global household name status.
* Broadly, the system setup used (see section 1.1.b). 
* Information on exact versions for all code used (including dependencies). This is important, e.g., ArcGIS Pro 2.4.1 is very different from ArcGIS for Desktop 10.7.1. Different systems have methods to easily generate this information, e.g. a call to `sessionInfo()` in the R console.
* Consider, if applicable, to archive the “runfile” as its own data entity within the data package, i.e., the script(s) that sets parameters and/or calls on functions imported from external software. 

Example 5: EML method description referring to external software.

```xml
<methods>
   <methodStep>
      <description>
         <para>           
            The seagrass coverage raster was created in ArcGIS Pro (version
            2.4.3, by Esri) using the IDW geoprocessing tool on
            sampling_points.csv with a power of 2 and the nearest
            12 points.
         </para>
         <para>
            The raster was then refined using the seagrass-refiner package
            with the auto-refine option checked (Smith, 2017).
         </para>
         <para>
            Smith, J. (2017). seagrass-refiner: a package that does the cool
            seagrass stuff. Version 1.2.  https://doi.org/this-is/a-fake-doi,
            2017.
         </para>
      </description>
   </methodStep>
</methods>
```

## Resources {#resources}

[CodeMeta](https://codemeta.github.io/) website

[CodeMeta crosswalks](https://codemeta.github.io/crosswalk/) for a number of popular software

[CodeMeta terms](https://codemeta.github.io/terms/) you can use for describing software

A description of some [software licenses](https://opensource.org/licenses)

[Best practices document to archiving model-based datasets](./model-based-datasets.html)
