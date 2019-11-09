
# intellectualRights

This element is found at this location (XPath):  
**/eml:eml/dataset/intellectualRights**

<**intellectualRights**> are controlled at the source, however it is
recommended that data be released with as few restrictions as possible.
Each data package should contain a data access policy, plus a
description of any deviation from the general policy specific for this
particular package (e.g. restricted-access packages). The timeframe for
release should be included as well.

_Context: If no_ <**intellectualRights**> _element is included EDI
will insert text that releases data under "CC-0" (shown in example). The
LTER Network-wide default policy is "CC-BY". Please consult those
organizations for more information and more details._

---

Example 10: intellectualRights
```xml
<intellectualRights>
   <section>
      <title>Data Policy</title>
      <para>This data package is released to the "public domain" under
         Creative Commons CC0 1.0 "No Rights Reserved" (see:
         https://creativecommons.org/publicdomain/zero/1.0/). It is considered
         professional etiquette to provide attribution of the original work if
         this data package is shared in whole or by individual components. A
         generic citation is provided for this data package on the website
         https://portal.edirepository.org (herein "website") in the summary
         metadata page. Communication (and collaboration) with the creators of
         this data package is recommended to prevent duplicate research or
         publication. This data package (and its components) is made available
         "as is" and with no warranty of accuracy or fitness for use. The
         creators of this data package and the website shall not be liable for
         any damages resulting from misinterpretation or misuse of the data
         package or its components. Periodic updates of this data package may
         be available from the website. Thank you.</para>
   </section>
</intellectualRights>
```
---
