+++
toc = true
hideReply = true
title = "Two-sample tests of proportions"
author = "Lorenzo Drumond"
date = "2023-11-14T14:00:43"
tags = ["statistics",  "designing_running_and_analyzing_experiments",  "theory",  "experiment",  "test",  "week2",  "proportions",  "design",  "rlang",  "coursera"]
+++


What if we have more than one sample? And in each sample, we could have more than one response categories. E.g. two different gender groups expressing their preference on the websites A, B and C.

This is the case of two-sample tests of proportions (or n-sample).

Another test that is getting popular is the `G` test, which is also an asymptotic test, which is meant to be more accurate.

An exact test for this kind of scenario is the Fishers' exact test. It was originally developed for 2x2 tests, but can be generalized.

Similarly to before, even if see that there is significant differences in the proportions, we need to run post-hoc tests to determine where they lie.

```R
prefsABCsex = read.csv("prefsABCsex.csv")
View(prefsABCsex)
prefsABCsex$Subject = factor(prefsABCsex$Subject) # convert to nominal factor
prefsABCsex$Pref = factor(prefsABCsex$Pref) # Rv4
prefsABCsex$Sex = factor(prefsABCsex$Sex) # Rv4
summary(prefsABCsex)
plot(prefsABCsex[prefsABCsex$Sex == "M",]$Pref)
plot(prefsABCsex[prefsABCsex$Sex == "F",]$Pref)

prfs = xtabs( ~ Pref + Sex, data=prefsABCsex)
View(prfs)
chisq.test(prfs)

library(RVAideMemoire)
G.test(prfs)

fisher.test(prfs)

ma = binom.test(sum(prefsABCsex[prefsABCsex$Sex == "M",]$Pref == "A"), nrow(prefsABCsex[prefsABCsex$Sex == "M",]), p=1/3)
mb = binom.test(sum(prefsABCsex[prefsABCsex$Sex == "M",]$Pref == "B"), nrow(prefsABCsex[prefsABCsex$Sex == "M",]), p=1/3)
mc = binom.test(sum(prefsABCsex[prefsABCsex$Sex == "M",]$Pref == "C"), nrow(prefsABCsex[prefsABCsex$Sex == "M",]), p=1/3)
p.adjust(c(ma$p.value, mb$p.value, mc$p.value), method="holm") # correct for multiple comparisons

fa = binom.test(sum(prefsABCsex[prefsABCsex$Sex == "F",]$Pref == "A"), nrow(prefsABCsex[prefsABCsex$Sex == "F",]), p=1/3)
fb = binom.test(sum(prefsABCsex[prefsABCsex$Sex == "F",]$Pref == "B"), nrow(prefsABCsex[prefsABCsex$Sex == "F",]), p=1/3)
fc = binom.test(sum(prefsABCsex[prefsABCsex$Sex == "F",]$Pref == "C"), nrow(prefsABCsex[prefsABCsex$Sex == "F",]), p=1/3)
p.adjust(c(fa$p.value, fb$p.value, fc$p.value), method="holm") # correct for multiple comparisons
```

## References
- [test-of-proportions](/wiki/test-of-proportions/)
- https://www.coursera.org/learn/designexperiments

Next -> [example-analysis-of-an-ab-test](/wiki/example-analysis-of-an-ab-test/)
