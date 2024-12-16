+++
title = "Bayesian Inference - Estimating the Parameter"
author = "Lorenzo Drumond"
date = "2024-10-03T10:18:33"
tags = ["bayesian",  "introduction",  "machine_learning",  "probabilistic",  "distribution",  "programming",  "statistics",  "pymc",  "inference",  "hacker"]
+++


# Bayesian Inference - Estimating the Parameter

Assuming we observe events that follow a particular distribution, like exponential [bayesian-inference-continuous-distributions](/wiki/bayesian-inference-continuous-distributions/), how do we determine $\lambda$, its parameter?

This question is what motivates statistics. In the real world, $\lambda$ is hidden from us. We see only Z, and must go backwards to try and determine $\lambda$. The problem is difficult because there is no one-to-one mapping from Z to $\lambda$. Many different methods have been created to solve the problem of estimating $\lambda$, but since it is never actually observed, no one can say for certain which method is best!

Bayesian inference is concerned with _beliefs_ about what $\lambda$ might be. Rather than try to guess it exactly, we can only talk about what $\lambda$ is likely to be by assigning a probability distribution to $\lambda$

Next -> [bayesian-inference---pymc-example](/wiki/bayesian-inference---pymc-example/)
