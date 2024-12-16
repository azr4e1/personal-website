+++
title = "MDE"
author = "Lorenzo Drumond"
date = "2024-08-20T09:31:43"
tags = ["minimum_detectable_effect",  "mde",  "stats",  "power",  "statistics",  "significance"]
+++


# MDE

The Minimum Detectable Effect is the smallest change in the KPI that we are able (or want to be able) to detect with a given significance level and power of the test.

There are multiple ways to compute a minimal detectable effect (MDE). Which way you use depends on the kind of statistical test/model you're working with.

MDE is computed by examining two distributions, one produced by the null hypothesis, and another produced by the alternate hypothesis. The computation (whichever one it is) always works the same way:

1. It establishes the distributions (Normal, t, F,...etc.) based on the type of test/model and the sample size
2. It computes area under the null hypothesis distribution curve to find a value where the specified confidence level is met.
3. It uses that value along with the specified power level (which represents the area under the alternate hypothesis distribution curve located beyond the value found in (2)) to shift the alternate hypothesis distribution curve closer to or further away from the null hypothesis distribution curve.
4. Once the two distributions are in place, the MDE is simply the difference between two points on those two curves (usually the difference in means)

# References

- https://stats.stackexchange.com/questions/469564/mde-minimal-detectable-effect
