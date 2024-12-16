+++
title = "Report the result of a test"
author = "Lorenzo Drumond"
date = "2023-11-14T13:54:33"
tags = ["experiment",  "statistics",  "rlang",  "coursera",  "week2",  "design",  "theory",  "test",  "designing_running_and_analyzing_experiments",  "proportions"]
+++


# Report the result of a test
In the case of a chi-square test for one sample proportion ([test-of-proportions](/wiki/test-of-proportions/)), you would write this:

```latex
prefsAB: \chi_{(df=1, N=60)}^2 = 17.07, p < .0001
```

where df represents the degrees of freedom, N the size of the test. After the equal we have the test statistics, and than the p-value. No one cares about the exact value of p-value, only if it is:

- < .5
- < .01
- < .001
- < .0001

For p-values between .05 and .1, these values are given the name of _trend_, or _marginal results_. However they are not stat. sig.

For p-values > .05 (non stat. sig.), we don't report the exact p-value. We just report _n.s_ (non-significant).

*N.B.* It's important not to interpret p-values as representing the effect strength of a test. There are other statistics for that (effect size statistics).

Sig. results tell us there is a statistically significant difference between things we are comparing. A non sig. one does NOT tell use that there is no difference, but there is no _detectable_ difference in the data we are analysing.

# References
- https://www.coursera.org/learn/designexperiments
- [test-of-proportions](/wiki/test-of-proportions/)

Next -> [exact-asymptotic-and-binomial-tests](/wiki/exact-asymptotic-and-binomial-tests/)
