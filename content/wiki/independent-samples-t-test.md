+++
toc = true
hideReply = true
title = "Independent Samples T-Test"
author = "Lorenzo Drumond"
date = "2023-11-17T16:30:25"
tags = ["statistics",  "experiment",  "rlang",  "coursera",  "t_test",  "design",  "theory",  "test",  "week3",  "AB_test",  "designing_running_and_analyzing_experiments"]
+++



When the experiment is between-samples, that means
the levels are independent and we use an independent
samples t-test.

```r
t.test(Pages ~ Site, data=pgviews, var.equal=TRUE)

#
```

This is a parametric test.

## Report the test
How do we report this test?

```latex
pgviews: t(498) = -7.21, p<.0001
```

where 498 is the degrees of freedom, t is the t-statistics, and p is the p-value.

## References
- [variable-types](/wiki/variable-types/)
- [measurement-errors](/wiki/measurement-errors/)
- [test-of-proportions](/wiki/test-of-proportions/)
- https://www.coursera.org/learn/designexperiments
- [validity-in-design-and-analysis](/wiki/validity-in-design-and-analysis/)
- [test-the-anova-assumptions](/wiki/test-the-anova-assumptions/)
