+++
toc = true
hideReply = true
title = "Multiple categories test of proportions"
author = "Lorenzo Drumond"
date = "2023-11-14T13:59:30"
tags = ["experiment",  "statistics",  "rlang",  "coursera",  "week2",  "design",  "theory",  "test",  "designing_running_and_analyzing_experiments",  "proportions"]
+++


Now we have A, B, and C websites to test against the 60 partecipants. From the point of view of study design, we must consider also the order to which the partecipants were exposed to the websites. This could cause an unorder effect. Let's assume the partecipants are different from before, so they aren't biased towards the first two (A and B).

In R, we can use the crosstabulation function `xtabs` to deal with proportions, and run the chi-square test again.

In this case, the degrees of freedom are 2, not 1:
```latex
prefsABC: \chi_{(df=2, N=60)}^2 = 13.30, p < .01
```

For the multinomial test (exact test), we need to define a set of default probabilities. We can set $1/3$ for each.

This test only tells us about whether there is an actual difference or not between the proportions of the categories.

To be able to do that for pairwise categories (post-hoc pairwise comparison. They are called this because they come after a overall (or _omnibus_) test that confirms the statistical significance of the difference), we can still use the binomial test:

```R
aa = binom.test(sum(prefsABC$Pref == "A"), nrow(prefsABC), p=1/3)
```

which is testing whether the difference in proportion between the actual proportion and the hypothesized one ($1/3$) is significant.

Now, p-value of < .05 means there is 1 in 20 chances that the null hypothesis is correct but we reject it. Repeating a test multiple time could be malicious in this sense (p-hacking). By calculating the pairwise differences, we are doing that, so to account for this we need to adjust the final p-value using the Bonferroni method.

```R
p.adjust(c(aa$p.value, bb$p.value, cc$p.value), method="holm")
```

So everytime we want to do multiple tests, we need to correct with the Bonferroni method.

## References
- https://www.coursera.org/learn/designexperiments
- [test-of-proportions](/wiki/test-of-proportions/)

Next -> [two-sample-tests-of-proportions](/wiki/two-sample-tests-of-proportions/)
