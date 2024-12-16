+++
title = "Data transformation when normality is violated"
author = "Lorenzo Drumond"
date = "2023-11-20T04:09:07"
tags = ["statistics",  "week4",  "designing_running_and_analyzing_experiments",  "assumptions",  "test",  "coursera",  "experiment",  "theory",  "AB_test",  "control",  "transformation",  "shapiro",  "normality",  "design",  "anova",  "rlang"]
+++


# Data transformation when normality is violated
If the response data of an ANOVA experiment violates the normality of residuals assumption, we may need to transform the data to fit that requirement.

Let's assume the response is actually log-normally distributed. This means that its log is normally distributed.

If we take the log of the response, we should get a normally distributed response that can be used for ANOVA.

# References
- [confounding-variables](/wiki/confounding-variables/)
- [independent-samples-t-test](/wiki/independent-samples-t-test/)
- [data-distributions](/wiki/data-distributions/)
- [variable-types](/wiki/variable-types/)
