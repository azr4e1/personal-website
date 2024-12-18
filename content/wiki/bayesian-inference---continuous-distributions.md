+++
title = "Bayesian Inference - Continuous Distributions"
author = "Lorenzo Drumond"
date = "2024-10-03T10:10:15"
tags = ["bayesian",  "introduction",  "machine_learning",  "probabilistic",  "distribution",  "programming",  "statistics",  "pymc",  "inference",  "hacker"]
+++


# Bayesian Inference - Continuous Distributions

Instead of a probability mass function, a continuous random variable has a _probability density function_. This might seem like unnecessary nomenclature, but the density function and the mass function are very different creatures. An example of continuous random variable is a random variable with exponential density. The density function for an exponential random variable looks like this:

$$
f_Z(z|\lambda) = \lambda e^{-\lambda z}, z >= 0
$$

Like a Poisson random variable, an exponential random variable can take on only non-negative values. But unlike a Poisson variable, the exponential can take on any non-negative values, including non-integral values such as 4.25 or 5.612401. This property makes it a poor choice for count data, which must be an integer, but a great choice for time data, temperature data (measured in Kelvins, of course), or any other precise and positive variable.

When a random variable Z has a exponential distribution, we say it's exponential and we denote it with $Z \~ Exp(\lambda)$

Its expected value is $E[Z|\lambda] = \frac{1}{\lambda}$

# References

Next -> [bayesian-inference---estimating-the-parameter](/wiki/bayesian-inference---estimating-the-parameter/)
