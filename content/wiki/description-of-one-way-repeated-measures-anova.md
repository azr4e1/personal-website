+++
title = "Description of One-Way Repeated Measures ANOVA"
author = "Lorenzo Drumond"
date = "2023-11-20T05:41:54"
tags = ["repeated_measures",  "within_subjects",  "designing_running_and_analyzing_experiments",  "statistics",  "non_parametric",  "week6",  "assumptions",  "test",  "f_test",  "coursera",  "experiment",  "kruskal_wallis",  "theory",  "likert",  "normality",  "design",  "anova",  "rlang"]
+++


# Description of One-Way Repeated Measures ANOVA
Repeated measures is just another name for within-subjects variables. These should be used whenever we can because:
1. it takes fewer subjects to get same amount of data
2. experiments are designed to detect differences, and using same subjects multiple times reduces the variance that arise from individual differences

One big challenge with this type of variables is __Carryover Effects__: we need to make sure that the order in which subjects perform action is not causing them to perform differently, i.e. introducing confounds [confounding-variables](/wiki/confounding-variables/)

To test for order effect, we need to encode another variable in our table: the presentation order of the conditions, and then perform a test.

## Example
1. 20 subjects
1. they need to find a set number of contact in a phone
1. two methods: using search, and scrolling
1. two metrics measured: time taken, and number of errors.
1. subjects will rate their efforts on a 1-7 scale (Likert type scale)

- The factor (technique) is nominal and a within-subjects variable, also called _repeated measures_
- time is a numeric variable
- errors is a numeric variable
- effort is a ordinal variable

# References
- [anova-assumptions](/wiki/anova-assumptions/)
- [variable-types](/wiki/variable-types/)
- [one-way-anova](/wiki/one-way-anova/)
- [data-distributions](/wiki/data-distributions/)
- [example-analysis-of-an-ab-test](/wiki/example-analysis-of-an-ab-test/)
- [counterbalancing-repeated-measures-factors](/wiki/counterbalancing-repeated-measures-factors/)
- [wide-vs-long-format-tables](/wiki/wide-vs-long-format-tables/)
- [anova-for-within-subjects-in-r](/wiki/anova-for-within-subjects-in-r/)
