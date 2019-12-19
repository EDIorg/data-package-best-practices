## access {#access}

The access element is found at this location (XPath):  
**/eml:eml/access**  
**/eml:eml/\[entityType\]/physical/distribution/access**

<**access**> contains a list of rules defining permissions for this
metadata record and its data entity. Values must be applicable by the
system where data is stored. Many repositories follow the KNB system of
using access control format that conforms to the LDAP "distinguishedName
(dn)" for an individual, as in
"uid=FLS,o=LTER,dc=ecoinformatics,dc=org".

As of EML 2.1.0, <**access**> trees are allowed at two places: as the
first child of the <**eml:eml**> root element (a sibling to
<**dataset**>) for controlling access to the entire document, and in a
**physical/distribution** tree for controlling access to the resource
URL. With the exception of certain sensitive information, metadata
should be publicly accessible. The <**access**> element is optional,
and if omitted, the repository may presume that only the dataset
submitter will be allowed access.


Example 2: access
```xml
<access authSystem="knb" order="allowFirst" scope="document">
   <allow>
      <principal>uid=FLS,o=lter,dc=ecoinformatics,dc=org</principal>
      <permission>all</permission>
   </allow>
   <allow>
      <principal>public</principal>
      <permission>read</permission>
   </allow>
</access>
```


