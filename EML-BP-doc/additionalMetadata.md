
## additionalMetadata {#additionalMetadata}

This element tree is found at (XPath):  
**eml:eml/additionalMetadata**

<**additionalMetadata**> is a flexible field for including any other
relevant metadata that pertains to the resource being described. Its
content must be valid XML. A unit as a <**customUnit**> must be
described in this tree.

<**describes**> (optional) is a pointer to an "id" attribute on an EML
element ("id" described in another area). This pointer must be identical
to the attribute it is pointing at, so that automated processes are able
to associate <**additionalMetadata**> to the described attribute. If
the <**describes**> element is omitted, it is assumed that the
<**additionalMetadata**> content applies to the entire EML document.

<**metadata**> contains the additional metadata to be included in the
document. The contents can be any valid XML. This element should be used
for extending EML to include metadata that is not already available in
another part of the EML specification, or to include site- or
system-specific extensions that are needed beyond the core metadata. The
additional metadata contained in this field describes the element
referenced in the <**describes**> element preceding it. If
<**describes**> is not used, either <**metadata**> must contain
sufficient information to define the association between
<**additionalMetadata**> or the <**additionalMetadata**> can be
presumed to apply to the entire data package.

An example of "sufficient information to define the association" is the
definition of a <**customUnit**>. The EML Parser expects to find the
description of a <**customUnit**> in the id attribute of a
<**unit**> element in a <**unitList**>, i.e., at
/eml:eml/additionalMetadata/metadata/unitList/unit. For example,
`"stmml:unit id="siemensPerMeter"` points at the <**customUnit**>
`"siemensPerMeter"`. The EML Parser is available from GitHub, with the EML
project. For descriptions of custom units see "Other Resources".


Example 25: additionalMetadata custom unit
```xml
<additionalMetadata>
   <metadata>
      <stmml:unitList>
         <stmml:unit id="siemensPerMeter" name="siemensPerMeter" abbreviation="S/m" 
         unitType="conductance" parentSI="siemen" multiplierToSI="1" constantToSI="0">
            <stmml:description>conductivity unit</stmml:description>
         </stmml:unit>
      </stmml:unitList>
   </metadata>
</additionalMetadata>
```
