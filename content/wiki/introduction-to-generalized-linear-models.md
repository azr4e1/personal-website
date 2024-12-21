+++
toc = true
hideReply = true
title = "Introduction to Generalized Linear Models"
author = "Lorenzo Drumond"
date = "2023-11-29T10:16:38"
tags = ["statistics",  "between_subjects",  "theory",  "designing_running_and_analyzing_experiments",  "coursera",  "week8",  "experiment",  "design",  "generalized",  "rlang",  "test",  "linear_model"]
+++


ANOVA fall in the category of _linear models_ (LM).

There is a generalization of linear models called __GLM__ (Generalized Linear Models).

Conceptually, a linear model relates the factors (predictor variables) to a response,
which is considered to be normally distributed in nature.

A GLM allows the response to be related to other forms of distribution like Poisson, Gamma, etc.

When generalizing the model to these other distributions, we are able to analyze data that would
otherwise violate [anova-assumptions](/wiki/anova-assumptions/)

GLM can only handle between-subjects factors ([example-analysis-of-an-ab-test](/wiki/example-analysis-of-an-ab-test/)).

Generalized Linear Models (GLM) extend Linear Models (LM) for studies
with between-Ss factors to accommodate nominal (incl. binomial) or ordinal
responses, or with non-normal response distributions (e.g., Poisson,
exponential, gamma). All GLMs have a distribution and a link function relating
their factors to their response. The GLM generalizes the LM, which is a
GLM with a normal distribution and "identity" link fn. See, e.g.,
http://en.wikipedia.org/wiki/Generalized_linear_model

Each distribution in a GLM has a canonical link function associated with it.

## References
- [anova-assumptions](/wiki/anova-assumptions/)
- [one-way-repeated-measures-anova](/wiki/one-way-repeated-measures-anova/)
- [factorial-anova](/wiki/factorial-anova/)
- [one-way-anova](/wiki/one-way-anova/)
- [generalized-linear-models](/wiki/generalized-linear-models/)
