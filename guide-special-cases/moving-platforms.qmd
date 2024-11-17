# Data Gathered with Small Moving Platforms

Contributors: Sarah Elmendorf (lead), Tim Whiteaker, Lindsay Barbieri, Jane Wyngaard, Greg Maurer, Hap Garritt, Adam Sapp, Corinna Gries, Stace Beaulieu

## Introduction

Modern advances in technology have increasingly allowed the collection of ecological data using small, often uncrewed, moving platforms. Systems variously known as small Uncrewed Aircraft Systems (sUAS), Uncrewed Surface Vehicles (USV), Autonomous, Uncrewed Underwater Vehicles (AUV or UUV)  or ?drones,? more generally, now frequently serve as sensor carrying platforms. Moving platforms may also include gliders or animals with sensors affixed. Depending on the sensor(s) installed on the moving platform, data collected may include environmental measurements (temperature, concentration of chemicals), imagery (digital photos, multi- or hyperspectral sensors), or other remote-sensing acquisitions (ranging data, ground-penetrating radar). Example research applications include studies of vegetation cover and phenology, snowpack cover and depth, ground surface temperature, terrain elevation, bathymetry, species distribution or abundance, and many others.

Raw drone data can be voluminous and challenging to archive, but after processing, derived drone datasets typically resemble the more conventional spatial datasets that are regularly used in ecological research. In this document we focus on best practices for archiving raw and derived drone data, with particular attention to metadata and processing code that is specific to drone datasets. Note that this chapter does not specifically address data collected by large moving platforms like airplanes and satellites, or by human and animal platforms.

## Recommendations for data packages

General considerations for archiving data from moving sensor platforms

* **Repository**: We are currently unaware of many specialized repositories for these data, and therefore, EDI is used as the representative data repository for many cases presented here. Repositories other than EDI may have specific metadata formatting requirements, but the general recommendations with regard to content could presumably be applied. For LiDAR based UAV data, consider contributing to Open Topography [https://opentopography.org/](https://opentopography.org/)); for AUV data, the U.S. Marine Geoscience Data System (MGDS) ([http://www.marine-geo.org/index.php](http://www.marine-geo.org/index.php)) which serves the IEDA "MGDL" node in DataONE is a good option. Glider data may be contributed to the U.S. IOOS Glider DAC ([https://gliders.ioos.us/data/](https://slack-redir.net/link?url=https%3A%2F%2Fgliders.ioos.us%2Fdata%2F&v=3)), archived at the National Centers for Environmental Information (NCEI) thus fulfilling NSF OCE Data Policy. If a decision is made to archive an LTER drone dataset in an external (i.e. non-EDI) repository but links to EDI data packages are desired, recommendations in the [Data in Other Repositories](data-in-other-repositories.html) chapter may apply.
* **Size of data set**: The file size of raw data from drone imagery can be substantial. If large volumes of raw data (>100 GB in total) are to be archived on EDI, please coordinate with EDI and follow the best practices for [Large Data Sets](large-data-sets.htm). Even if raw data are in a proprietary binary format and specific software is required for processing, publishing them may be important for reprocessing when software improves.
* **Designing a data package**: In many applications of moving sensor data, raw images/measurements must be processed to arrive at data products that can be analyzed to answer research questions. To enable a fully reproducible analysis pipeline, we recommend archiving three components: the raw data, any key derived data products (e.g., orthomosaic images, DEMs, DSMs, NDVI, landcover, snow depth, or surface temperature maps), and the processing code. These three components may be archived in separate data packages or together, and each should follow accepted best practices for its data type. To archive raw image collections, for example, see the considerations on grouping images into compressed archives (.zip, .tar) and creating an inventory file, as described in the [Images and Documents as Data](images-and-documents-as-data.html) chapter. For derived geospatial files, such as DEMs, refer to the [Spatial Data](spatial-data.htm) chapter. Custom processing code should be archived with the data following recommendations in the [Code in EDI](code.html) chapter. If a standalone program is used to process data, reference the program in the methods metadata with adequate details to ensure reproducibility (name, version, date, configuration, etc.).

### Metadata for moving platform data packages at EDI

The data package should include metadata elements that, at a minimum, (a) identify it as being collected by a moving platform, (b) deliver basic information about the data collection platform, instrument payload (camera, sensors), and procedure (flight information or similar), and (c) deliver necessary information about post-processing of the raw camera or sensor data, if any. Accordingly, these recommendations vary based on whether the data package contains raw or derived data.

High level metadata pertaining to the entire data package are easily provided in the EML file (e.g. a geographic bounding box). Data packages from drones or other moving platforms commonly include numerous point measurements, images, or other granular data entities, either separately or inside a compressed archive file. Detailed metadata pertaining to these data entities may be included as additional files in the data package. Inventory tables, usually a simple CSV file, are one such additional metadata format. For example, an inventory table could be used to list individual data files in the data package (e.g., images from one drone flight) and provide metadata (e.g. point location) about each. In addition to inventory tables, files that enable or supplement common processing pipelines, such as flight or mission logs, may be included. A flight/mission log may be provided in a proprietary binary format, but because software for parsing these formats may become obsolete, we recommend archiving the log in the format most useful for contemporary analysis software, and extracting and appending the information to the inventory file where appropriate. Exif (Exchangeable image file format) metadata in images may also be programmatically extracted to supplement the inventory file.

Clearly, there are many possible ways to combine raw data, derived data, and metadata files into a moving platform data package. No matter the combination, the critical metadata categories and the recommended contents below should be considered and included where possible. The decision on whether to provide the metadata in EML or at a more granular level, such as an inventory table, will depend on the given dataset.

* **Methods:** unique identifier for a given flight or mission; summary information from a flight log; weather conditions; accuracy of sensor and geographic location information; data processing method; ground sample distance; image overlap; flight height; whether UAS followed terrain elevation vs fixed-height flight; location of UAS launch (since some image metadata are derived from this); general description of software used and for what purpose; sensor calibration date and procedure; general description of payload type, such as multispectral camera and spectral bands.
* **Instrumentation:** make and model of platform, sensor, and camera, including manufacturer and specific model names and numbers. Include make and model of any interchangeable lenses in cameras. Specifics like spectral bands, temperature range, sensor accuracy, etc.
* **Software:** (see also [Code in EDI](code.html) chapter) list of software used. Especially when code is proprietary or archived elsewhere, the name, version, and configuration of any software used are advisable, as are corrections applied (e.g., correction for sensor angle or heat/air flow). Ideally, a .pdf report generated by processing software can be archived as an otherEntity together with the imagery itself to convey much of the necessary information. Also include data used as a ground truth or calibration points for post processing (e.g. spectral calibration image/biomass sample/wind speed/etc) and their date of collection.
* **People with specified role:** drone operator, image processor
* **Geographic Information:** (see also [Spatial Data chapter](sptial-data.html)) a general bounding box should be included in EML, while the individual location of images or point measurements should be handled in the inventory table, or directly in the included data files. Also include the coordinate reference system (e.g., WGS 84) used for images and (if different) ground control points, projection type if needed, altitude of image/measurement acquisition, spatio-temporal coordinates, pitch, roll, and yaw from flight log or image data points. It should be noted that there are special considerations for underwater vehicles, especially with regard to metadata to explain how geographic positions were obtained. With autonomous underwater vehicles (AUVs), there can be error sources in the topside GPS localization, the underwater acoustic positioning system (e.g., Long Baseline, Ultrashort Baseline), as well as any sensors used for dead reckoning (e.g., accelerometer, Doppler Velocity Log). At a minimum, it would be useful to know which sensors were used to produce the localization data and whether the navigation tracklines were post-processed with benchmarks.
* **Temporal Information:** may also be provided at the EML level or as timestamps for individual data/image points, either in inventory tables or in the data files themselves. Time of day critically affects useability for image-based datasets; so ensure that the time of day is clear from the metadata available prior to download, either in the EML temporal coverage or via the methods.
* **Keywords:** Use of appropriate keywords aids in data discovery. Keywords that identify datasets as drone-related are therefore recommended (e.g. drone, UAV, UAS). Keywords describing the type of data collected are also recommended (e.g. image collection, aerial imagery, thermal imagery, NDVI, digital elevation map). For drone mapping data products, keyword recommendations from the [Spatial Data chapter](spatial-data.html) are largely applicable.

### Examples and additional metadata guidance

Several EDI data packages for data from moving platforms are presented as examples in Table 1. Many more detailed, ?drone-specific? metadata terms and values can be included in data packages for drones and other moving platforms. For completeness we have developed a comprehensive list of recommended and optional metadata terms based on the work of Wyngaard et al. (2019), Thorner et al. (2020), with mappings to select relevant ontologies, viewable [here](https://docs.google.com/spreadsheets/d/1PQ0SUEQLgQXdz2PUNDy2jGry3o9veAedcz8l-5ubpwU). For each metadata element, we assessed its utility in terms of data discovery, evaluating fitness for use, and actual data reuse. The minimum recommended subsets of metadata that are included in the section above were derived from this table.  

Table 1. Example packages at EDI and other repositories

<table>
  <tr>
   <td><strong>Title</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>EDI packageID</strong>
   </td>
  </tr>
  <tr>
   <td><em>Orthophoto and elevation models from UAV overflights at the G-IBPE study site at Jornada Basin LTER in 2019</em>
   </td>
   <td>Approximately 599 RGB images and data derived from uncrewed aerial vehicle (UAV) overflights of the G-IBPE study site at the Jornada Basin LTER in southern New Mexico, USA.
   </td>
   <td><a href="https://portal-s.edirepository.org/nis/mapbrowse?scope=knb-lter-jrn&identifier=210543001">knb-lter-jrn.210543001</a>
   </td>
  </tr>
  <tr>
   <td><em>Aerial imagery from unmanned aerial systems (UAS) flights and ground control points: Plum Island Estuary and Parker River NWR (PRNWR), February 27th, 2018.</em>
   </td>
   <td>USGS Aerial imagery UAS flights at the Parker River National Wildlife Refuge, Massachusetts, USA, includes ground control, multispectral and true color child items which each have data entities that include ground control or a file catalog of images
   </td>
   <td><a href="https://www.sciencebase.gov/catalog/item/5c0fe16de4b0c53ecb2d1bc3">ScienceBase</a>
   </td>
  </tr>
  <tr>
   <td><em>Spatial variability in water chemistry of four Wisconsin aquatic ecosystems - High speed limnology Environmental Science and Technology datasets</em>
   </td>
   <td>water chemistry sensors embedded in a high-speed water intake system to document spatial variability.
   </td>
   <td><a href="https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-ntl.337.4">knb-lter-ntl.337.4</a>
   </td>
  </tr>
  <tr>
   <td><em>Thermal infrared, multispectral, and photogrammetric data collected by drone for hydrogeologic analysis of the East River beaver-impacted corridor near Crested Butte, Colorado</em>
   </td>
   <td>infrared, multispectral, visual image data, and derivative products (orthomosaic and digital surface model) collected along a beaver-impacted section of the East River from August 12-17, 2017 and July 28-August 2, 2018.
   </td>
   <td><a href="https://www.sciencebase.gov/catalog/item/5ccc4cc9e4b09b8c0b78c97a">ScienceBase</a>
   </td>
  </tr>
</table>

## Resources

### Tips and Tricks

For making an image catalog (.csv) from a directory of images, consider using the exif tool [https://exiftool.org/](https://exiftool.org/). For example, the command ?exiftool.exe -csv -r mydirectory > image_catalog.csv? will extract the entirety of the exif tags from all files stored under mydirectory into a comma-delimited table and write it to the the file image_catalog.csv

### Semantic Annotation

Semantic annotation of drone imagery is a rapidly developing field. Ontologies that provide relevant terms include: [dronetology](http://www.dronetology.net/); [sensorML](http://www.sensorml.com/ontologies.html); [FGDC content standard for digital geospatial metadata](https://www.fgdc.gov/metadata/csdgm/) (not officially an ontology but a structured metadata format with defined terms); [Semantic Sensor Network ontology](https://www.w3.org/TR/vocab-ssn/) (SSN, including the SOSA core); [Semantic Web for Earth and Environment Technology ontology](https://bioportal.bioontology.org/ontologies/SWEET) (SWEET); and [Environment Ontology](http://www.obofoundry.org/ontology/envo.html).

### References

Thomer, Andrea K., Swanz, Sarah, Barbieri, Lindsay, Wyngaard, Jane. (2020). A minimum information framework the FAIR collection of earth and environmental science data with drones. DOI: 10.5281/zenodo.4017647

Wyngaard, J.; Barbieri, L.; Thomer, A.; Adams, J.; Sullivan, D.; Crosby, C.; Parr, C.; Klump, J.; Raj Shrestha, S.; Bell, T. Emergent Challenges for Science sUAS Data Management: Fairness through Community Engagement and Best Practices Development. _Remote Sens._ **2019**, _11_, 1797.
