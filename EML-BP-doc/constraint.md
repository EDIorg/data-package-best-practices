
# constraint

This element tree is found at (XPath):  
**/eml:eml/dataset/dataTable/constraint**  
**/eml:eml/dataset/view/constraint**  
**/eml:eml/dataset/spatialRaster/constraint**  
**/eml:eml/dataset/spatialVector/constraint**  
**/eml:eml/dataset/storedProcedure/constraint**

The <**constraint**> tree is for describing any integrity constraints
between entities within a data package (e.g. tables), as they would be maintained in a
relational management system. Use of the <**constraint**> tree is
encouraged when data elements contain integrity constraints from a
relational database. Example TO-DO shows the constraints for the
<**attributeList**> in Example TO-DO. If there are constraints in
which several columns are involved, these should be described in
methods/qualityControl, since EML is not currently equipped to handle
keys defined by multiple columns. When the <**constraint**> tree is
used, all of the entities that may be referenced should be in the same
package. There are six child elements:

<**primaryKey**> is an element which declares the primary key in the
entity to which the defined constraint pertains.

<**uniqueKey**> is an element which represents a unique key within the
referenced entity. This is different from a primary key in that it does
not form any implicit foreign key relationships to other entities;
however it is required to be unique within the entity.

<**nonNullConstraint**> defines a constraint that indicates that no
null values should be present for an attribute in this entity.

<**checkConstraint**> defines a constraint which checks a conditional
clause within an entity.

<**foreignKey**> defines an SQL statement or other language
implementation of the condition for a check constraint. Generally this
provides a means for constraining the values within and among entities.
It also provides the means to meaningfully link table for explanation of
codes (de-normalization).

<**joinCondition**> defines a foreign key relationship among entities
which relates this entity to another's primary key.

The <**primaryKey**>, <**uniqueKey**>, <**nonNullConstraint**>
require an additional <**key**> tag defining the attribute to which
this constraint applies, referenced by its id attribute (described in
another area). All <**ConstraintType**> entities require additional
<**constraintName**> and <**attributeReference**> tags.


Example 24: constraint
```xml
<constraint id="soil_chemistry.PRIMARY">
   <primaryKey>
      <constraintName>PRIMARY</constraintName>
      <key>
         <attributeReference>soil_chemistry.ID</attributeReference>
      </key>
   </primaryKey>
</constraint>
<constraint id="soil_chemistry.FK_soil_chemistry_sites">
   <foreignKey>
      <constraintName>FK_soil_chemistry_sites</constraintName>
      <key>
         <attributeReference>soil_chemistry.site_id</attributeReference>
      </key>
      <entityReference>sites</entityReference>
   </foreignKey>
</constraint>
```
