
# id, system and scope (XML attribute-group)

This attribute group can be used on these EML elements:  
<**access**>  
<**dataset**>  
<**creator**>  
<**associatedParty**>  
<**contact**>  
<**metadataProvider**>  
<**publisher**>  
<**coverage**>  
<**geographicCoverage**>  
<**temporalCoverage**,>  
<**taxonomicCoverage**>  
<**distribution**>  
<**software**>  
<**citation**>  
<**protocol**>  
<**project**>  
<**dataTable**>  
<**otherEntity**>  
<**spatialRaster**>  
<**spatialReference**>  
<**spatialVector**>  
<**storedProcedure**>  
<**view**>  
<**attribute**>  
<**constraint**>

These three attributes are found as a group and are usually optional.
The primary use of the id attribute is as an internal reference, hence
each id must be unique within one EML document. E.g.,. a <**creator**>
must have a different id than a <**dataTable**>. And if the same
person appears in seberal places (at **dataset/creator**,
**protocol/creator** or **project/creator**, the same id cannot be
repeated, so either the content of the id must be changed or a reference
used for repeated instances.

The requirement for uniqueness can cause problems when content is drawn from a system
with IDs (e.g. a personnel database), and is under consideration by the
EML committee. Ideally the three attributes would work together. The
**scope** attribute can have one of two values, "system" or "document".
It is preferred that when the scope is set to "system", that the
**system** attribute defines the ID-system, the **id** attribute content
is (presumably) from that system. However, currently, EML parsers do not
support the ideal use, and users must ensure that every `@id`in an EML document
is unique (within that document).

Currently, a reasonable general practice should be to define a
**system** on the <**eml:eml**> element and set it to the site (but
not set the system attribute at any other level), and to set
**scope**="document" on elements other than <**eml:eml**>.


Example __: id and scope (system not set)
```xml
<attribute id="ent1.att4" scope="document">
```