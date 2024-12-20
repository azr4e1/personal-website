+++
toc = true
title = "Mann-Whitney test"
author = "Lorenzo Drumond"
date = "2023-11-20T04:24:21"
tags = ["statistics",  "week4",  "designing_running_and_analyzing_experiments",  "non_parametric",  "assumptions",  "test",  "coursera",  "experiment",  "theory",  "control",  "AB_test",  "whitney",  "normality",  "design",  "anova",  "rlang"]
+++


If we want to use the underlying ranks in our data and not be limited by the anova assumption ([anova-assumptions](/wiki/anova-assumptions/)), we can use the Mann-Whitney test.
```R
library(coin)
wilcox_test(Time ~ IDE, data=ide2, distribution="exact")

#
```

N.B.: Taking the log of time in the example of [designing-for-experimental-control](/wiki/designing-for-experimental-control/) won't change the result of a non-parametric test, because taking the log of the response doesn't change the inherent ranks in the data.

## References
- [data-transformation-when-normality-is-violated](/wiki/data-transformation-when-normality-is-violated/)
- [variable-types](/wiki/variable-types/)
- [data-distributions](/wiki/data-distributions/)
- [independent-samples-t-test](/wiki/independent-samples-t-test/)
- [confounding-variables](/wiki/confounding-variables/)
- [one-way-anova](/wiki/one-way-anova/)
