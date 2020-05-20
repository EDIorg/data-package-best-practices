# Still Images

Contributors: Gastil Gastil-Buhl, Corinna Gries, Tim Whiteaker, Li Kui, Jason Downing, Greg Maurer, Renée Brown, Mark Servilla, Stace Beaulieu, Mary Martin, and An Nguyen

## Introduction {#introduction}

This document describes best practices for archiving still images, such as images that are taken and analyzed for a certain measurement, including but not limited to abundance, presence/absence, and coverage following the definition in the [OBO ontology](http://purl.obolibrary.org/obo/IAO_0000101) for ‘image’:  “An image is an affine projection to a two dimensional surface, of measurements of some quality of an entity or entities repeated at regular intervals across a spatial range, where the measurements are represented as color and luminosity on the projected surface.” Examples include photos of sea ice taken from an automated camera station, images created during flow cytometry, and images taken by an unmanned vehicle (underwater or aerial) for the above purpose. This best practice does not cover images that fall under the geospatial raster category such as satellite imagery, nor does it cover images already well handled in other systems, e.g., natural history specimen images, phenocam images. 

This document was written for the intended audience of a Long Term Ecological Research (LTER) information manager (IM), though it is applicable to anyone handling image data in the context of a larger ecological research program. We assume that the target archive is designed to handle ecological data, and that a given archive package will include metadata written in Ecological Metadata Language (EML) format. We refer to the Environmental Data Initiative (EDI) as an example archive. The same practices could be applied to other similar repositories.

If large amounts of images (>100GB in total) are to be archived, please coordinate with EDI before uploading.

## Recommendations for data packages {#recommendations-for-data-packages}

A still image data package includes the following:

*   [EML Metadata](#recommendations-for-metadata)
*   a CSV data table with meta information for each image, serving as an [image catalog](#image-catalog)
*   (optional) one or more image files or one or more zip files of the images as ‘otherEntity’
*   (optional) data tables with information [extracted from the images](#data-extracted-from-images)
*   (optional) data tables with other environmental information measured during image acquisition

An image data package may contain image files individually (small numbers, up to ~10) or bundled as a zip archive. The decision of how to bundle images into zip archives and then into data packages should be guided by the overall goal of making image data usable for the intended purpose of the images. In most cases this involves finding specific images by, e.g., time or location of acquisition or some other aspect of interest. Hence, a balance has to be achieved between packages that are either too large or too numerous to be handled by a user. In addition, the effort of documenting images (each individually or in groups) has to be taken into account. The same decisions need to be applied within a data package in the design of zip archives. Images may be grouped by space and/or time. E.g., a stationary camera’s output may be archived in annual data packages, each of which may contain monthly zip files if the number of images is large. A moving camera’s output may also be archived in annual data packages, but individual zip files may hold all images for one transect. Another consideration is the timing of archiving. One should strive for archiving a fully processed group of images when no more changes or updates are expected due to the large volume to be handled repeatedly for each update.

### Recommendations for Metadata {#recommendations-for-metadata}

Metadata are provided at two levels. The EML file and a csv file serving as an image catalog. Of course, all image data packages need the good discovery level metadata in EML (who, what, where, when, how, why). The detail provided on the level of the included csv image catalog (see below) should be guided by the same principles as stated above: to enable optimal usability of the images. E.g., images from a stationary camera need latitude and longitude only in the EML file not for every image. By contrast, images from a moving camera may need that information for every image or at least for every site/quadrat/transect.

In addition to keywords describing the general purpose of the images (e.g., ice phenology, community composition, richness, etc.) it is recommended to include the keyword: Image with the semantic annotation from OBO:

>**Term IRI:** [http://purl.obolibrary.org/obo/IAO_0000101](http://purl.obolibrary.org/obo/IAO_0000101)**
>
>**Definition:** An image is an affine projection to a two dimensional surface, of measurements of some quality of an entity or entities repeated at regular intervals across a spatial range, where the measurements are represented as color and luminosity on the projected surface.
>

### Image Catalog {#image-catalog}

The image catalog is a required CSV data table with meta information for each image or each zip archive of a group of images. Each row in the catalog represents a single image or zip archive of a group of images. At a minimum, the table includes an attribute for the image/zip filename and additional attributes if other essential  information varies per image/zip. Additional attributes may include essential information on the camera, date, time, creator, location, the image, the subject

*   (required) Filename of each image or zip archive. If each image is described a relative path (directory structure) of the image including file extension, e.g., IMG_1001.jpg or 2018/SITE3/IMG1001.jpg should be included. Within this attribute in the image catalog, each value should be unique.
*   (optional) Link/URL to download image if the image is available on a different system.
*   (optional) Creator
*   (optional) Datetime: Date and time associated with the image, in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601#Combined_date_and_time_representations), e.g., 2007-04-05T12:30-02:00. Use the date and time that is important to the end user's interpretation of the image.
*   (optional) Location: Latitude and longitude in decimal degrees, site name, transect name, altitude, depth, habitat etc.
*   (optional) all other conditions/descriptions that will help identify an image for use within the collection. Be consistent, use a controlled vocabulary for these fields, so that a user can search on them. Examples are: weather conditions, organism name, etc.
*   (optional) Camera/instrument characteristics: model, settings, settings of a microscope
*   (optional) Image characteristics: angle, distance, scale for pixel, resolution, magnification

### Data Extracted from Images {#data-extracted-from-images}

For data tables with information extracted from images (e.g., species abundance or coverage, or measurements that are made from image processing), whether included in the image data package or in a separate package, provide information to enable a user to locate the image from which a data value was extracted. This likely means including image filenames as a data column, or some other unique identifier or link if filenames cannot be used for this purpose.  Or, if a given data row is derived from more than one image, consider including a cross reference table relating images to data rows.

## Resources

### Examples in EDI {#examples-in-edi}

*   [https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-jrn&identifier=210011005](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-jrn&identifier=210011005)
*   [https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-mcm.2016.2](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-mcm.2016.2)
*   [https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-mcr&identifier=5006](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-mcr&identifier=5006)
*   [https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-mcr&identifier=5013](https://portal.edirepository.org/nis/mapbrowse?scope=knb-lter-mcr&identifier=5013)