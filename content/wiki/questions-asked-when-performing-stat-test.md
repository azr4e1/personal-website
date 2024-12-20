+++
title = "Questions asked when performing stat. test"
author = "Lorenzo Drumond"
date = "2023-11-07T11:55:48"
tags = ["bayesian",  "tests",  "statistics",  "frequentist"]
+++


An AB test is a test performed when we want to see if
a change to a product will have an impact in terms of some key metric.

You split your test population in _treatment_ and _control_; you expose
treatment to the change, and control to the old product, and measure
the KPI (_Key Performance Indicator_)

Main questions asked by stakeholders about a product AB test:
- Was the treatment significantly better than control?
- if not, what is the prbability that the treatment is better than control?
- How risky a change would it be to roll out the treatment?

Both frequentist and bayesian approach can answer the first, but only
Bayesian can answer the rest.

# References
- https://towardsdatascience.com/bayesian-experimentation-methods-for-products-636514951e43
- [frequentist-vs-bayesian](/wiki/frequentist-vs-bayesian/)
