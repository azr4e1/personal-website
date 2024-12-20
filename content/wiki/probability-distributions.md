+++
title = "Probability Distributions"
author = "Lorenzo Drumond"
date = "2023-11-20T03:29:22"
tags = ["distributions",  "statistics",  "theory",  "week4",  "designing_running_and_analyzing_experiments",  "AB_test",  "coursera"]
+++


Data can be distributed in many different ways.

If we think of a chart where X axis is a score and Y axis some kind of frequency, a normal distribution would look like a bell - _Gaussian distribution_. The mean is at the peak, and the standard deviation is the spread.

There are countless distributions.

More formally setting $x$ as X-axis and probability of $x, P(x)$ as Y-axis,
we can draw the _probability density function_ of the distribution (pdf)

- _Normal_: governed by mean and std. Bell curve. Most phenomena measured fall into normal distribution
- _Log-Normal_: pdf is distributed so that if we took the logarithm of the data, it would become normal. Governed by mean and std of the corresponding normal dist. Task time usually follows this distribution (hard to be fast, easy to be slow)
- _Exponential_: governed by rate parameter. Wealth is often distributed exponentially.
- _Gamma_: more general form of exponential. Governed by shape and scale. Exponential is gamma when shape=1. Waiting times in line follow this distribution.
- _Poisson_: discrete distribution - each value it takes on is a positive integer. Governed by a single parameter lambda. Count data follows this distribution, like counts of rare events, like mistakes of a gesture recognizer in time.
- _Binomial_/_Multinomial_: discrete. Used when we have responses that are not numerical, but categorical. Binomial is governed by no. of trials, and probability of success.

# References
- [independent-samples-t-test](/wiki/independent-samples-t-test/)
- [designing-for-experimental-control](/wiki/designing-for-experimental-control/)
- [measuring-results](/wiki/measuring-results/)
