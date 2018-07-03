# How-To: Taxonomy

### Resolve taxonomic information to trustworthy taxonomic information systems

Use IDs from those taxonomic systems because:

	* The IDs are stable even if the taxonomy names change
	* Taxon systems usually provide a user interface for retrieving other taxon levels, old names, type specimen etc.
  
Columns in your data tables:

	* Scientific name
	* Serial number/ID provided as by the taxonomic authority you are using.
	* Categorical variable for the name of taxonomic information system.
	* The lowest possible taxon level should be referenced.
	* Explain acronyms such as "ITIS " in metadata.
	* This practice should be applied to the most recent data and older ones if time allows.
  
## The Taxon System should cover the taxonomy in your geographic area and be reliable:
	
* Examples of Taxon Information Systems are:
* World Register of Marine Species [(WoRMS)](http://marinespecies.org/)
* Integrated Taxonomic Information System [(ITIS)](https://www.itis.gov/), for terrestrial ecosystems.
		
  * Potential conflicts and other issues:
	* Reconciling multiple returns on a search
	* Coalescing sp > genus and vice versa.
  * Decision on when you need expert review.
  
		
  
## EDI provides the taxonomyCleanr R package to support cleaning your taxonomy data

* [This YouTube video](https://www.youtube.com/watch?v=zNhe7JXZf44&t=16s) gives an overview of taxonomyCleanr.
* Code and instructions can be found on EDI’s github space [here](https://github.com/EDIorg/taxonomyCleanr).
