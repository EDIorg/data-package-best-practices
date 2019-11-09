
# keywordSet and keyword

This element is found at these locations (XPath):  
**/eml:eml/dataset/keywordSet**  
**/eml:eml/dataset/project/keywordSet**

It is recommended that meaningful sets of keywords each be contained
within <**keywordSet**> tag. Use one <**keywordSet**> for a group of
terms identifying the contributing organization(s), e.g., the LTER or
OBFS site, LTREB or Macrosystems project , which is especially if data
are co-funded or funding is leveraged. Meaningful geographic place names
also are appropriate (e.g. state, city, county). If groups of keywords
are from a specific vocabulary, its name belongs the optional tag
<**keywordThesaurus**>.

_Context: Communities sometimes have specific requests for keywords to
assist in searches. E.g, the LTER requests that keywords should include
a LTER core research area(s), the network acronym (LTER, ILTER, etc.),
three-letter site acronym and site name. In addition to specific
keywords, relevant conceptual keywords should also be included, e.g.,
from the LTER Controlled Vocabulary._

---

Example 9: pubDate, abstract,keywordSet, keyword
```xml
<pubDate>2014</pubDate>
<abstract>
   <para>Ground arthropods communities are monitored in different
      habitats in a rapidly changing environment. The arthropods are
      collected in traps four times a year in ten locations and determined
      as far as possible to family, genus or species.</para>
</abstract>
<keywordSet>
   <keyword keywordType="place">City</keyword>
   <keyword keywordType="place">State</keyword>
   <keyword keywordType="place">Region</keyword>
   <keyword keywordType="place">County</keyword>
   <keyword keywordType="theme">FLS</keyword>
   <keyword keywordType="theme">Fictitious LTER Site</keyword>
   <keyword keywordType="theme">LTER</keyword>
   <keyword keywordType="theme">Arthropods</keyword>
   <keyword keywordType="theme">Richness</keyword>
   <keywordThesaurus>FLS site thesaurus</keywordThesaurus>
</keywordSet>
<keywordSet>
   <keyword keywordType="theme">ecology</keyword>
   <keyword keywordType="theme">biodiversity</keyword>
   <keyword keywordType="theme">population dynamics</keyword>
   <keyword keywordType="theme">terrestrial</keyword>
   <keyword keywordType="theme">arthropods</keyword>
   <keyword keywordType="theme">pitfall trap</keyword>
   <keyword keywordType="theme">monitoring</keyword>
   <keyword keywordType="theme">abundance</keyword>
   <keywordThesaurus>LTER controlled vocabulary</keywordThesaurus>
</keywordSet>
<keywordSet>
   <keyword keywordType="theme">populations</keyword>
   <keywordThesaurus>LTER core research areas</keywordThesaurus>
</keywordSet>
```
---
