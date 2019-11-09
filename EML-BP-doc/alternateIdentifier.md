
# alternateIdentifier

The alternateIdentifier element is found at this location (XPath):  
**/eml:eml/ dataset/alternateIdentifier**  
**/eml:eml/ dataset/[entity]/alternateIdentifier**

The contributing organization's local data set identifier should be
listed as the EML <**alternateIdentifier**>, particularly when it
differs from the "**packageId**" attribute in the <**eml:eml**>
element. The <**alternateIdentifier**> should also be used to denote
that a package belongs to more than contributing organization by
including each individual ID in a separate <**alternateIdentifier**>
tag. At the entity level, the <**alternateIdentifier**> should contain
an alternate name for the data table (or other entity) itself (see
additional comments under entities, below.)