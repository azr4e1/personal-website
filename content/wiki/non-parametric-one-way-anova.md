+++
toc = true
hideReply = true
title = "Non-parametric One-Way ANOVA"
author = "Lorenzo Drumond"
date = "2023-11-20T05:19:15"
tags = ["statistics",  "designing_running_and_analyzing_experiments",  "non_parametric",  "assumptions",  "test",  "coursera",  "f_test",  "experiment",  "theory",  "kruskal_wallis",  "week5",  "normality",  "design",  "anova",  "rlang"]
+++


```R
library(coin)
kruskal_test(Time ~ IDE, data=ide3, distribution="asymptotic") # can't do exact with 3 levels
kruskal_test(logTime ~ IDE, data=ide3, distribution="asymptotic") # note: same result since based on ranks

#
```

To follow up on post-hoc test form the omnibus, we execute Mann-Whitneys and then we adjust with Sequential Holm-Bonferroni:
```R
vs.ec = wilcox.test(ide3[ide3$IDE == "VStudio",]$Time, ide3[ide3$IDE == "Eclipse",]$Time, exact=FALSE)
vs.py = wilcox.test(ide3[ide3$IDE == "VStudio",]$Time, ide3[ide3$IDE == "PyCharm",]$Time, exact=FALSE)
ec.py = wilcox.test(ide3[ide3$IDE == "Eclipse",]$Time, ide3[ide3$IDE == "PyCharm",]$Time, exact=FALSE)
p.adjust(c(vs.ec$p.value, vs.py$p.value, ec.py$p.value), method="holm")
```

## References
- [designing-for-experimental-control](/wiki/designing-for-experimental-control/)
- [variable-types](/wiki/variable-types/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [description-of-one-way-repeated-measures-anova](/wiki/description-of-one-way-repeated-measures-anova/)
