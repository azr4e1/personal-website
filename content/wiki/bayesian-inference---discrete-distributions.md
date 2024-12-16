+++
title = "Bayesian Inference - Discrete Distributions"
author = "Lorenzo Drumond"
date = "2024-10-03T09:39:48"
tags = ["bayesian",  "introduction",  "machine_learning",  "probabilistic",  "distribution",  "programming",  "statistics",  "pymc",  "inference",  "hacker"]
+++


# Bayesian Inference - Discrete Distributions

Let Z be some random variable. Then associated with Z is a probability distribution function that assigns probabilities to the different outcomes Z can take.

If Z is discrete, then its distribution is called a _probability mass function_, which measures the probability Z takes on the value k: P(Z=k). The probability mass function completely describes Z.

## Poisson distribution

Z is _Poisson-distributed_ if:

```latex
P(Z=k) = \frac{\lambda^k e^{-\lambda}}{k!}, k=1,2,3,...
```

$\lambda$ is a parameter of the distribution which controls its shape. Larger values assign more probability to larger k, smaller values assign more probability to smaller k.

A Z with distribution Poisson is denoted as $Z ~ Poi(\lambda)$

Its expected value is equal to its parameter: $E[Z | \lambda] = \lambda$.

# References

Next -> [bayesian-inference---continuous-distributions](/wiki/bayesian-inference---continuous-distributions/)
