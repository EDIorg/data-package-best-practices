# Ongoing data

## Introduction

Remember that all data packages have static (not dynamic) data entities, and so in the 
case of ongoing time-series, these are simply
"snapshots" at points in time. Like any data package with revisions, each time-series
addition will be a new revision. Keeping the scope and docid components of the identifier
 fixed affords some management continuity. 

### Highlighting the "ongoing" nature of a data package

- **Coverage dates** in metadata should reflect the coverage of the data snapshot. DO NOT try 
to squeeze a word like "ongoing" into a dateTime field to reflect the nature of data collection.
Instead, create a descriptive title, as in "Time-series of daily air temperature at site X, 
ongoing since 1992"
- **Publication Date**: the ```<publicationDate>``` is used in constructing a citation, so it's best if this
is updated in the new revision to reflect date it was revised. 
- **Maintenance**: EML has ```<maintenance>``` elements where you can record the intended update frequency.
- **Specialized interfaces**: often instrument data will have a specialized web interface for query
and download of near-real-time data. If so, this link belongs in the ```<additonalInformation>``` 
(EML field). TO DO: CONFIRM!



### Data packaging arrangements

- continuous: all observations are groupled into a single unit (table), with plans 
to add data by revising a single entity and updating metadata. 
- non-continuous: a new packages is created for each logical unit (e.g., a summer 
sampling season), regardless of similarities or differences in methods. 
- hybrid: you may choose to create a new entity for each logical unit (e.g., year)
but add that entity to an exising package with shared resource-level metadata.

There are advantages and disadvantages to each approach.  

<table>
<tr>
<th>
</th>
<th>Pros
</th>
<th>Cons
</th>
<th>Examples
</th>
</tr>

<tr>
<th>Continuous <br/>  (one data entity)
</th>
<td>- User will be able to find and download all data at one time  
</td>
<td>- More work for the creators if there are changes, as data are 'pre-inegrated' by them
</td>
<td>- knb-lter-mcr.7 
<br/>- knb-lter-bnz.212
</td>
</tr>

<tr>
<th>Non-continuous <br/> (new package for each data addition)
</th>
<td>- Metadata can be very specific, which can simplify data description where  
changes between collection events are significant<br/>
- The lack of integration by the submitter may reduce the amount of work
</td>
<td>- User must find, download and integrate many data packages to create a time series
</td>
<td>- PISCO instrument data (see DataONE.org)
</td>
</tr>

<tr>
<th>Hybrid <br/>  (multiple data entities in one package)
</th>
<td>- Single set of resource-level metadata for all entities
<br/>- Users can find all data together
</td>
<td>- User must integrate many data entities to create a time series
<br/>- To avoid re-uploading all previous data entities along with the new one submitters must use the 
option "to skip upload if PASTA has a matching entity" (requires a checksum).

</td>
<td>- knb-lter-sbc.54
<br/>- knb-lter-bnz.398.19
</td>
</tr>
</table>




### Adding new data
**Plan to add rows, not columns.**
In general, you will want to arrange your data so that you can add new rows of data, but not new columns. 
Adding new columns is technically a 'redesign' of the data package. (see below). If you've planned your 
package carefully, you can replace the entity (with one containing old+new rows) with only a handful of 
changes to the metadata. Also see [long_wide.md]

### Stuff happens...
#### They made some big changes to the [methods|table|measurements]! What do I do?
##### Issue: Supposedly, this is a new version of one of our time series data products but it doesn't look anything like I already have. 

- Solution: Confirm that you have the right data entity. Send the lab a link to the dataset
this is supposed to update. Ask why the change, and take steps to stablize the formats of data
entities that are intended for sharing.
- Example: SBC completely changed the modeling algorithm for predicting kelp biomass after landsat 8 was launched. We capped 
off the old dataset and started a new one (see below, "Capping off"). We also requested that 
the old dataset be removed from the index (see below, "indexing").
   - was: knb-lter-sbc.54
   - replaced by: knb-lter-sbc.74
   
   
##### Issue: They moved the instruments to a new location, that ostensibly represents the same region 
- Solution: Ask why the move, and find out if data *should* be considered continuous. 
In the example, we started a new dataset to make it clear that any integration was up to a user
- Examples: 
  - pre move: knb-lter-sbc.2001 
  - post move: knb-lter-sbc.2002 (most recent revisions)

##### Issue: they added a new measurement to the suite 
- Solution: Add a new column for the new measurement(s). It's up to you where to put it. 
If your system (and the lab's) makes it easy to keep similar measurement together in 
a table, do so, because users will appreciate it. if not, put it at the end.
- Examples: knb-lter-sbc.2001, knb-lter-sbc.2002 (most recent revisions)
  - before: 
  - after:  

### "Capping" off
Time-series collections do end! Projects finish, the data have told you all it can, etc. 
You may not know for several years beyond the most recent update that there will be no more new data. 
If you have a categorized inventory, a good label for these is "Completed time-series" 


##### Guidelines:
If you followed the practices above to described this dataset as "ongoing", you should
update it one more time and make it clear that no more data are expected.

1. edit the title. 
1. the temporalCoverage tags will already cover the snapshot, so there should be nothing to do. (obviously, if there is one more data addition, make coverage match it).
1. pubDate: it may make sense to leave the pubDate alone (at the date of the last data addition), rather than to this revision. That will create coherence betweeen metadata and data. 
1. if you used maintenance tags, enter info stating that no more updates are expected.
1. check the methods. if you have detailed text descriptions, you may want to make these past tense.


### Indexing
All data package's have metadata automatically indexed by PASTA for discovery. If there is a reason to
remove a dataset from the index, contact support@edirepository.org.
A data package that has been removed from the index

- still has a DOI, so it can still be cited and it's landing page displayed
- will not show up in searches



## Attribution
This material adapted by EDI from

- LTER IMC. 2011. EML Best Practices for LTER Sites, Version 2. 
https://lternet.edu/wp-content/uploads/2018/06/EML-Best-Practices-for-LTER-Sites-Version-2.pdf
- LTER Information Managers Committee, pers. comm. 2018.