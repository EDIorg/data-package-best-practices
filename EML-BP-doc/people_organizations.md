
# People and Organizations (Parties)

People and organizations are all described using a "ResponsibleParty"
group of elements, which is found at these locations (XPath):  
**/eml:eml/dataset/creator**  
**/eml:eml/dataset/contact**  
**/eml:eml/dataset/metadataProvider**  
**/eml:eml/dataset/associatedParty**  
**/eml:eml/dataset/publisher**  
**/eml:eml/dataset/project/creator**  
**/eml:eml/dataset/method/methodStep/protocol/creator**  

**General recommendations**: When using <**individualName**>
elements anywhere within an EML document, names should be constructed
with English alphabetization in mind. Many sites have found that
maintaining full contact information for every creator is impractical,
however a few important contact information should be kept up to date
(see below). If a name includes a suffix, it should be included in the
<**surName**> element after the last name.

It is recommended to include complete contact information for a
permanent role that is independent of the person holding that position.
For example, for an information manager, site contact, pay careful
attention to phone number and use an e-mail alias that can be passed on.
(See below, under<**contact**>.)

With the advent of general identifiers such as ORCIDs, the text in the
<**address**>, <**phone**>, and <**onlineURL**> elements may
become unnecessary for individuals and so is optional if and an
individual's ORCID is included. <**electronicMailAddress**> is
recommended to simplify contacting responsible parties. See the
<**userId**> field. ORCID identifiers are not yet available for
organizations, so <**address**>, <**phone**>, and <**onlineURL**>
elements should be included for them. In the examples, these elements
are included for completeness.

## userId

This element is found at this location (XPath):  
**/eml:eml/dataset/creator/userId**  
**/eml:eml/dataset/contact/userId**  
**/eml:eml/dataset/metadataProvider/userId**  
**/eml:eml/dataset/associatedParty/userId**  
**/eml:eml/dataset/publisher/userId**  
**/eml:eml/dataset/project/creator/userId**  
**/eml:eml/dataset/method/methodStep/protocol/creator/userId**

The optional <**userId**> field holds identifiers for responsible
parties from other systems. This element is repeatable so that multiple
systems can be referenced. EML prepares should contact the system they
plan to use to learn their preferences for inclusion in metadata. The
examples here are for ORCID identifiers, and that organization has asked
that its full URI be used as both the **system** attribute, and as the
head of the identifier itself.


Example 4: creator
```xml
<creator id="org-1" system="FLS" scope="system">
   <organizationName>Fictitious LTER Site</organizationName>
   <address>
      <deliveryPoint>Department for Ecology</deliveryPoint>
      <deliveryPoint>Fictitious State University</deliveryPoint>
      <deliveryPoint>PO Box 111111</deliveryPoint>
      <city>Ficity</city>
      <administrativeArea>FI</administrativeArea>
      <postalCode>11111-1111</postalCode>
   </address>
   <phone phonetype="voice">(999) 999-9999</phone>
   <electronicMailAddress>fsu.contact@fi.univ.edu</electronicMailAddress>
   <onlineUrl>http://www.fsu.edu/</onlineUrl>
   <userId system="https://orcid.org">
      https://orcid.org/0000-0000-0000-0000
   </userId>
</creator>
<creator id="pos-1" system="FLS" scope="system">
   <positionName>FLS Lead PI</positionName>
   <address>
      <deliveryPoint>Department for Ecology</deliveryPoint>
      <deliveryPoint>Fictitious State University</deliveryPoint>
      <deliveryPoint>PO Box 111111</deliveryPoint>
      <city>Ficity</city>
      <administrativeArea>FI</administrativeArea>
      <postalCode>11111-1111</postalCode>
   </address>
   <phone phonetype="voice">(999) 999-9999</phone>
   <electronicMailAddress>fsu.leadPI@fi.univ.edu</electronicMailAddress>
   <onlineUrl>http://www.fsu.edu/</onlineUrl>
   <userId system="https://orcid.org">
      https://orcid.org/0000-0000-0000-0000
   </userId>
</creator>
<creator id="pers-1" system="FLS" scope="system">
   <individualName>
      <salutation>Dr.</salutation>
      <givenName>Joe</givenName>
      <givenName>T.</givenName>
      <surName>Ecologist Jr.</surName>
   </individualName>
   <organizationName>FSL LTER</organizationName>
   <address>
      <deliveryPoint>Department for Ecology</deliveryPoint>
      <deliveryPoint>Fictitious State University</deliveryPoint>
      <deliveryPoint>PO Box 111111</deliveryPoint>
      <city>Ficity</city>
      <administrativeArea>FI</administrativeArea>
      <postalCode>11111-1111</postalCode>
   </address>
   <phone phonetype="voice">(999) 999-9999</phone>
   <electronicMailAddress>jecologist@fi.univ.edu</electronicMailAddress>
   <onlineUrl>http://www.fsu.edu/~jecologist</onlineUrl>
   <userId system="https://orcid.org">
      https://orcid.org/0000-0000-0000-0000
   </userId>
</creator>
```

## creator

This element is found at this location (XPath):  
**/eml:eml/dataset/creator**

The <**creator**> is considered to be the author of the data
package, i.e. the person(s) responsible for intellectual input into its
creation. <**surName>** and <**givenName>** elements are used to
build citations, so these should be completed fully for credit to be
understandable. For long-term data, e.g., from an LTER Site, preparers
should include the organization (using the <**organizationName**>) or
current principal investigator (PI, using <**postitionName**>). It
should be kept in mind that in the past, different approaches have led
to confusion over how to best search for long-term data, and searchers
frequently default to searches using PI's last name. Therefore it is a
reasonable practice to include more creators rather than fewer, even if
it blurs the credit for long-term data.

## metadataProvider

This element is found at this location (XPath):  
**/eml:eml/dataset/metadataProvider**

The <**metadataProvider**> element lists the person or organization
responsible for producing or providing the metadata content. For primary
data sets generated by LTER sites, the LTER site should typically be
listed under <**metadataProvider**> using the <**organizationName**>
element. For acquired data sets, where the <**creator**> or
<**associatedParty**> are not the same people who produced the
metadata content, the actual metadata content provider should be listed
instead (see Example below).


Example 5: metadataProvider
```xml
<metadataProvider>
   <organizationName>Fictitious LTER Site</organizationName>
   <address>
      <deliveryPoint>Department of Ecology</deliveryPoint>
      <deliveryPoint>Fictitious State University</deliveryPoint>
      <deliveryPoint>PO Box 111111</deliveryPoint>
      <city>Ficity</city>
      <administrativeArea>FI</administrativeArea>
      <postalCode>11111-1111</postalCode>
   </address>
   <phone phonetype="voice">(999) 999-9999</phone>
   <electronicMailAddress>fsu@fi.univ.edu</electronicMailAddress>
   <onlineUrl>http://www.fsu.edu/</onlineUrl>
   <userId system="https://orcid.org">
      https://orcid.org/0000-0000-0000-0000
   </userId>
</metadataProvider>
```

## associatedParty

This element is found at this location (XPath):  
**/eml:eml/dataset/associatedParty**

List other people who were involved with the data in some way (field
technicians, students assistants, etc.) as <**associatedParty**>. All
<**associatedParty**> trees require a <**role**> element. The parent
university, institution, or agency could also be listed as an
<**associatedParty**> using <**role**> of "owner" when appropriate.


Example 6: associatedParty
```xml
<associatedParty id="12010" system="FLS" scope="system">
   <individualName>
      <givenName>Ima</givenName>
      <surName>Testuser</surName>
   </individualName>
   <organizationName>FSL LTER</organizationName>
   <address>
      <deliveryPoint>Department for Ecology</deliveryPoint>
      <deliveryPoint>Fictitious State University</deliveryPoint>
      <deliveryPoint>PO Box 111111</deliveryPoint>
      <city>Ficity</city>
      <administrativeArea>FI</administrativeArea>
      <postalCode>11111-1111</postalCode>
   </address>
   <phone phonetype="voice">(999) 999-9999</phone>
   <electronicMailAddress>itestuser@lternet.edu</electronicMailAddress>
   <onlineUrl>http://search.lternet.edu/directory_view.php?personid=12010&amp;query=itestuser</onlineUrl>
   <userId system="https://orcid.org">
      https://orcid.org/0000-0000-0000-0000
   </userId>
   <role>Technician</role>
</associatedParty>
```

## contact

This element is found at this location (XPath):  
**/eml:eml/dataset/contact**

A <**contact**> element is required in all EML metadata records. Full
contact information should be included for the position of data manager
or other designated contact, and should be kept current and independent
of personnel changes. If several contacts are listed (e.g. both a data
and site manager) all should be kept current. Technicians who performed
the work belong under <**associatedParty**> rather than
<**contact**>. Complete the <**address**>, <**phone**>,
<**electronicMailAddress**>, and <**onlineURL**> elements for the
<**contact**> element.


Example 7: contact
```xml
<contact>
   <positionName id="pos-4">Information Manager</positionName>
   <address>
      <deliveryPoint>Department for Ecology</deliveryPoint>
      <deliveryPoint>Fictitious State University</deliveryPoint>
      <deliveryPoint>PO Box 111111</deliveryPoint>
      <city>Ficity</city>
      <administrativeArea>FI</administrativeArea>
      <postalCode>11111-1111</postalCode>
   </address>
   <phone phonetype="voice">(999) 999-9999</phone>
   <electronicMailAddress>fsu.data@fi.univ.edu</electronicMailAddress>
   <onlineUrl>http://www.fsu.edu/</onlineUrl>
   <userId system="https://orcid.org">
      https://orcid.org/0000-0000-0000-0000
   </userId>
</contact>
```

## publisher

This element is found at this location (XPath):  
**/eml:eml/dataset/publisher**

The organization producing the EML metadata (e.g., an LTER site or field
station) should be placed in the <**publisher**> element. Spell out
the organization's name (<**organizationName**>). Complete the
<**address**>, <**phone**>, <**electronicMailAddress**>, and
<**onlineURL**> elements for each publisher element. Some citation
displays may use this element, although typically, the repository
becomes the publisher in citations.


Example 8: publisher
```xml
<publisher>
   <organizationName>Fictitious LTER site</organizationName>
</publisher>
```
