+++
toc = true
hideReply = true
title = "Introduction to Mixed Effects Models"
author = "Lorenzo Drumond"
date = "2023-12-05T15:29:02"
tags = ["designing_running_and_analyzing_experiments",  "experiment",  "statistics",  "generalized",  "regression",  "linear_model",  "random_effects",  "coursera",  "rlang",  "nested_effects",  "mixed",  "within_subjects",  "design",  "theory",  "test",  "week9",  "fixed_effects"]
+++


Generalized Linear Mixed Models can also handle within-subject tests.

GLMM is called `mixed` because we are mixing `fixed` and `random` effects.

- Random Effects: factors whose levels were sampled randomly from a large population, but whose specific level values we don't care about. E.g. Subject is a random effect.
- Fixed Effects: factors of interest that we manipulate in a study.

As said, subject is a random effect, which, if included, makes the model a
Mixed linear model. Including them allows us to correlate measures across the
same subjects across different rows in the metatable.

## Advantages
- we can handle missing data points
- better handle unbalanced designs
- no need for sphericity test [one-way-repeated-measures-anova](/wiki/one-way-repeated-measures-anova/)

## Disadvantages
- computationally more intensive
- they retain larger DFres (Denominator degrees of freedom)


A nested effect comes into play when the levels of a factor shouldn't be pooled just by their label alone.
E.g. subjects is nested in the Keyboard factor and Posture factor.

## References
- [one-way-repeated-measures-anova](/wiki/one-way-repeated-measures-anova/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [example-analysis-of-an-ab-test](/wiki/example-analysis-of-an-ab-test/)
- [factorial-anova](/wiki/factorial-anova/)
- [one-way-anova](/wiki/one-way-anova/)
- [analysis-of-a-linear-mixed-model](/wiki/analysis-of-a-linear-mixed-model/)
