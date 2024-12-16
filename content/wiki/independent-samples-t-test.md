+++
title = "Independent Samples T-Test"
author = "Lorenzo Drumond"
date = "2023-11-17T16:30:25"
tags = ["statistics",  "experiment",  "rlang",  "coursera",  "t_test",  "design",  "theory",  "test",  "week3",  "AB_test",  "designing_running_and_analyzing_experiments"]
+++


# Independent Samples T-Test

When the experiment is between-samples, that means
the levels are independent and we use an independent
samples t-test.

```r
# independent-samples t-test
t.test(Pages ~ Site, data=pgviews, var.equal=TRUE)

#         Two Sample t-test
#
# data:  Pages by Site
# t = -7.2083, df = 498, p-value = 2.115e-12
# alternative hypothesis: true difference in means between group A and group B is not equal to 0
# 95 percent confidence interval:
#  -1.3821544 -0.7900745
# sample estimates:
# mean in group A mean in group B
#        3.404082        4.490196
```

This is a parametric test.

## Report the test
How do we report this test?

```latex
pgviews: t(498) = -7.21, p<.0001
```

where 498 is the degrees of freedom, t is the t-statistics, and p is the p-value.

# References
- [variable-types](/wiki/variable-types/)
- [measurement-errors](/wiki/measurement-errors/)
- [test-of-proportions](/wiki/test-of-proportions/)
- https://www.coursera.org/learn/designexperiments
- [validity-in-design-and-analysis](/wiki/validity-in-design-and-analysis/)
- [test-the-anova-assumptions](/wiki/test-the-anova-assumptions/)
