# Best Practices for Archiving Model Based Datasets

## Introduction

This document includes recommendations for archiving data packages comprised of model based datasets. These datasets may include the model code itself, input data, model parameter settings, and output data. This document was written for the intended audience of a Long Term Ecological Research (LTER) information manager (IM), though it is applicable to anyone handling model data in the context of a larger ecological research program.

### Authors

An Nguyen, Tim Whiteaker, Corinna Gries

## Background

The range of cases for model based datasets includes small one-off model code specific to one research question, through various code packages which are maintained in community repositories as long as they meet requirements (e.g., CRAN for R packages), to large community models maintained by groups of programmers and users. 

The intention of these recommendations is to make research based on modeling more transparent rather than achieve exact reproducibility, i.e., provide sufficient documentation so that a knowledgeable person can understand algorithms, programming decisions, and their ramifications for the results, rather than run the model and obtain the same results.

It is not always easy to determine who among project personnel (IMs, scientists, programmers) is responsible for the different components of a model based dataset. This is best decided on a case-by-case basis. A common division is that the code authors annotate the code, and the IM handles the archiving and linkage to data product(s); partially except in cases of large community models (see section 2.3). 

The Environmental Data Initiative (EDI) is used as the representative data repository, however, the same practices could be applied to other similar repositories. A distinction is made between primarily data-oriented repositories (e.g., EDI), and specialized code repositories. 

## Recommendations for data packages

### 1. Referencing models in EML

For data packages related to a model, whether the model is archived within the same data package or not, indicate linkage to the model in EML following [Best practices for archiving software/code](https://docs.google.com/document/d/1BcDgTtrcC6bt814xnJT_aAHf_6booU2nMI83PWc7ots/edit#) {NEED GITHUB LINK} (section 1.2 and 2 in that document). 

Example EML snippet relating data to models via the method description:

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
         The raster was then refined using the seagrass-refiner model
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

### 2. Model code

The model used to produce certain data needs to be well documented and linked from the resulting data product(s). However, it is not always easy to decide where and how to archive the code, and whether or not in conjunction with the data product(s). We outline in sections below three common code archiving options.

Note that these scenarios (model code archived with data, or standalone in EDI, or elsewhere) are not mutually exclusive. Any project that involves code might make use of both established and custom software hosted on many different platforms, and might use some or all archiving options.

To decide between archiving options, consider the questions listed in [best practices for publishing software/code](https://docs.google.com/document/d/1BcDgTtrcC6bt814xnJT_aAHf_6booU2nMI83PWc7ots/edit#) {NEED GITHUB LINK} (see section 1).

#### 2.1. Model code and data in the same package

The goal of this practice is to ensure complete transparency of the data, and it applies to one-off models developed for the associated data, or occasionally to larger code bases for the reasons outlined [best practices for publishing software/code](https://docs.google.com/document/d/1BcDgTtrcC6bt814xnJT_aAHf_6booU2nMI83PWc7ots/edit#) {NEED GITHUB LINK} (see section 1). Include the code as a dataset/otherEntity. Additionally, it is recommended to include a CodeMeta JSON-LD file, which can also be handled and documented in EML as dataset/otherEntity. CodeMeta is a metadata standard for software and code compatible with schema.org. Refer to [best practices for publishing software](https://docs.google.com/document/d/1BcDgTtrcC6bt814xnJT_aAHf_6booU2nMI83PWc7ots/edit#) {NEED GITHUB LINK} for how to document the code and create CodeMeta.

#### 2.2. Model code as standalone package

If the model has been used to generate several datasets, i.e., is more widely applicable, it can be archived as its own package in EDI and assigned a DOI. Include the code as a dataset/otherEntity. Additionally, it is recommended to include a CodeMeta JSON-LD file, which can also be handled and documented in EML as dataset/otherEntity. CodeMeta is a metadata standard for software and code compatible with schema.org. Refer to [best practices for publishing software](https://docs.google.com/document/d/1BcDgTtrcC6bt814xnJT_aAHf_6booU2nMI83PWc7ots/edit#) {NEED GITHUB LINK} for how to document the code and create CodeMeta.

Consider including a list of derived data product(s) and their DOIs, ideally in the abstract of the EDI model package. This might lead to a chicken-and-egg issue, in which case we recommend publishing the model first, then including its DOI in the associated data packages(s). Then the IM might choose to take an extra step and push a revision to the model package to include the data DOIs.

#### 2.3. Model code archived/maintained elsewhere

This might include complex community models/software maintained by many people, published and actively maintained R/Python packages, etc. It may sometimes be advisable to archive a copy of the model code with the data, even if it appears to be maintained elsewhere. Refer to section 1 above to establish linkage from/to data products. 

### 3. Model input and output data

These are considered data entities, which should be handled according to EML best practices for corresponding data types. However, if the resulting datasets are very large, one may consider if input/output from all individual model runs need to be archived. Are there specific model run results that are more useful for non-modelers? For example: results from model runs leading to a journal publication.

Very large model inputs/outputs may need to be archived offline. Refer to [best practices for offline data](https://github.com/EDIorg/data-package-best-practices/blob/master/non_tabular/offline_data.md).

If the model requires a specific folder structure, you can zip model input files within the package to preserve that folder structure. A disadvantage of this approach is that you cannot elegantly describe each file with EML.

### 4. Model parameters

Include model parameters whenever applicable. If code/input/output from multiple model runs are archived, make sure to archive all corresponding sets of parameters, and be explicit in linking the different components together.

Consider archiving model parameter files as their own data object(s) in both their native format and as a text (non-binary) version. If the “runfile” will be archived, consider including the parameters within that file with appropriate annotations.

## Resources

Example model data packages already in EDI illustrative of different approaches:

* NTL LTER: General Lake Model (GLM) applied to Lake Mendota. [EDI Portal.](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-ntl.348.2) Parameters only.
* SBC LTER: Regional Ocean Modeling System (ROMS) applied to the California coast. [EDI Portal](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-sbc&identifier=126). Inputs, code, parameters, outputs all zipped in one large file with presumably appropriate directory structure. 

[Best practices for offline data](https://github.com/EDIorg/data-package-best-practices/blob/master/non_tabular/offline_data.md)

[Best practices for publishing software](https://docs.google.com/document/d/1BcDgTtrcC6bt814xnJT_aAHf_6booU2nMI83PWc7ots/edit#) {NEED GITHUB LINK}
