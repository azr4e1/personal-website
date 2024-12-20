+++
toc = true
title = "Excel flatten table"
author = "Lorenzo Drumond"
date = "2024-01-02T15:37:04"
tags = ["microsoft",  "excel",  "table",  "office",  "formula",  "snippets"]
+++


Flatten 2D table into 1D array, where:
- A1 is upper left corner
- B2 is lower right corner

```excel
=INDEX($A$1:$B$2, MOD(SEQUENCE(COUNTA($A$1:$B$2))-1, COUNTA($A$1:$A$2))+1,ROUNDUP(SEQUENCE(COUNTA($A$1:$B$2))/COUNTA($A$1:$A$2),0))
```

## References
