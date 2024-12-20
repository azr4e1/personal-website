+++
title = "Test the ANOVA assumptions"
author = "Lorenzo Drumond"
date = "2023-11-20T03:52:10"
tags = ["statistics",  "week4",  "designing_running_and_analyzing_experiments",  "assumptions",  "test",  "coursera",  "experiment",  "theory",  "control",  "AB_test",  "shapiro",  "normality",  "design",  "anova",  "rlang"]
+++


# Independence
This is just guaranteed by sound experiment design
# Normality
To test the ANOVA assumption of normality, we can use the _shapiro-wilks_ test on the _residuals_. A significant results indicates departures from normality.

```R
shapiro.test(ide2[ide2$IDE == "VStudio",]$Time)
shapiro.test(ide2[ide2$IDE == "Eclipse",]$Time)

#

m = aov(Time ~ IDE, data=ide2) # fit model (linear regression)
shapiro.test(residuals(m)) # test residuals
qqnorm(residuals(m)); qqline(residuals(m)) # plot residuals
```

`qqnorm` creates a Q-Q plot (quantile of normal distribution VS quantile of data)

# Homoscedasticity
We can use Levene's test for homogeneity of variance. Again, here stat. sig. mean violation of homoscedasticity.

Brown-Forsythe test does the same as Levene's but uses the median instead of the mean and is considered more robust.


When homoscedasticity is violated, we can run a Welch t-test, which doesn't require this assumption. However normality of residuals is still required:
```R
t.test(Time ~ IDE, data=ide2, var.equal=FALSE) # Welch t-test
```

# References
- [data-distributions](/wiki/data-distributions/)
- [variable-types](/wiki/variable-types/)
- [confounding-variables](/wiki/confounding-variables/)
- [independent-samples-t-test](/wiki/independent-samples-t-test/)
- [data-transformation-when-normality-is-violated](/wiki/data-transformation-when-normality-is-violated/)
- [mann-whitney-test](/wiki/mann-whitney-test/)
