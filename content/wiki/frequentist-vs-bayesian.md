+++
toc = true
title = "Frequentist vs Bayesian"
author = "Lorenzo Drumond"
date = "2023-11-07T11:15:14"
tags = ["bayesian",  "statistics",  "frequentist"]
+++


The main difference between frequentist approach and bayesian approach in Statistics is that in the frequentist approach,
the value we want to estimate is assumed to be a constant across the population.

The bayesian approach, on the other hand, assumes that the estimate follows a probability distribution, called _prior_.

E.g. Let’s say we’re interested in a binary action, like conversion on an upsell screen. We want to make a change to the upsell screen and first want to test how effective it is. In this case, the unknown statistic of interest is the probability of conversion — the chance that a user landing on this screen would convert.

In frequentist approach, the statistics is assumed to be a single value, a _ground truth_. In bayesian approach, the probability of conversion is a distribution.

## References
- https://towardsdatascience.com/bayesian-experimentation-methods-for-products-636514951e43
