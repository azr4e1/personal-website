+++
toc = true
title = "Anova assumptions"
author = "Lorenzo Drumond"
date = "2023-11-20T03:18:59"
tags = ["statistics",  "week4",  "designing_running_and_analyzing_experiments",  "assumptions",  "test",  "coursera",  "experiment",  "theory",  "AB_test",  "control",  "running",  "design",  "anova",  "rlang"]
+++


With certain analysis of variance ([independent-samples-t-test](/wiki/independent-samples-t-test/)) there are some assumptions.

ANOVA stands for Analysis of Variance.

The three ANOVA assumptions are:
1. __Independence__: each subject is sampled independently of every other subject. ([snowball-sampling]] violates this.) This means that measures of a subject are independent from measures of another subject. However, in a within-subject study ([[example-analysis-of-an-ab-test](/wiki/snowball-sampling]] violates this.) This means that measures of a subject are independent from measures of another subject. However, in a within-subject study ([[example-analysis-of-an-ab-test/)), measures of a subject on a level are not independent from measure of the same subject on another level. (Verified through experiment design)
2. __Normality__: the data (residuals) is normally distributed.
3. __Homoscedasticity__: the variance among groups being compared is similar.

The normality assumption must apply to the _residuals_: differences between your observed data, and the statistical model predictions. It gives a sense of how randomly off the statistical model is.

If the residuals are normal, it means there is no systematic effects going on not taking into account into the model.

If the response is normally distributed, often the residuals will follow the same distribution.

## References
- [confounding-variables](/wiki/confounding-variables/)
- [designing-for-experimental-control](/wiki/designing-for-experimental-control/)
- [variable-types](/wiki/variable-types/)
- [measuring-results](/wiki/measuring-results/)
- [data-distributions](/wiki/data-distributions/)
- [test-the-anova-assumptions](/wiki/test-the-anova-assumptions/)
