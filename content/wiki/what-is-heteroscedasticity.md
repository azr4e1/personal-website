+++
toc = true
title = "What is Heteroscedasticity"
author = "Lorenzo Drumond"
date = "2024-03-14T15:40:02"
tags = ["standard",  "statistics",  "rate",  "weighted",  "variance",  "regression",  "residuals",  "heteroscedasticity",  "linear",  "transformation",  "deviation"]
+++


In regression analysis, heteroscedasticity refers to the unequal scatter of residuals of error terms (residuals). It refers to the case where there is a systematic change in the spread of the residuals over the range of measured values.

This is a problem because OLS regression assumes homoscedasticity (constant variance).

When heteroscedasticity is present, the results of the analysis become hard to trust, because it increases the variance of the regression coefficient estimates, but the regression model doesn't pick up on this.

## Detect heteroscedasticity
Simplest way is to create a _fitted value vs residual_ plot.

If heteroscedasticity is present, the scatter plot will make it evident, as the residual will start to follow some trend as the fitted values get larger (e.g. a "cone" shape).

Heteroscedasticity occurs naturally in datasets where there is a large range of observed data values. E.g.:

  Dataset that includes annual income and expenses of 100,000 people in US. For individuals with lower incomes, there is lower variability in the corresponding expenses since they have little money for luxuries. Individuals with higher incomes will have higher variance in their expenses as they can choose more freely how to spend their money, either frugally or extravagantly.

## Fix heteroscedasticity

1. Transform the response variable. Often it is enough to use `log` to fix heteroscedasticity
2. Redefine the dependent variable. One common way is to use _rate_ instead of raw value (e.g. population size VS flower shops per capita, instead of absolute number)
3. Use weighted regression. This type of regression assigns a weight to each data point based on the variance of its fitted value. This gives small weights to data points that have higher variance, which shrinks their squared residuals. When the proper weights are used, this can eliminate the problem of heteroscedasticity.

## References
- https://www.statology.org/heteroscedasticity-regression/
