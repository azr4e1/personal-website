+++
title = "One-Way ANOVA"
author = "Lorenzo Drumond"
date = "2023-11-20T04:31:26"
tags = ["statistics",  "designing_running_and_analyzing_experiments",  "week4",  "assumptions",  "test",  "coursera",  "f_test",  "experiment",  "theory",  "normality",  "design",  "anova",  "rlang"]
+++


# One-Way ANOVA
Assuming we have three levels of a factor, and we want to perform ANOVA. We can't use the independent two-samples t-test or a non-parametric test.

We can use a One-Way ANOVA test however, using the F statistics
```R
## One-way ANOVA

# read in a data file with task completion times (min) now from 3 tools
ide3 = read.csv("ide3.csv")
View(ide3)
ide3$Subject = factor(ide3$Subject) # convert to nominal factor
ide3$IDE = factor(ide3$IDE) # Rv4
summary(ide3)

# view descriptive statistics by IDE
library(plyr)
ddply(ide3, ~ IDE, function(data) summary(data$Time))
ddply(ide3, ~ IDE, summarise, Time.mean=mean(Time), Time.sd=sd(Time))

# explore new response distribution
hist(ide3[ide3$IDE == "VStudio",]$Time)
hist(ide3[ide3$IDE == "Eclipse",]$Time)
hist(ide3[ide3$IDE == "PyCharm",]$Time) # new one
plot(Time ~ IDE, data=ide3) # boxplot

# test normality for new IDE
shapiro.test(ide3[ide3$IDE == "PyCharm",]$Time)
m = aov(Time ~ IDE, data=ide3) # fit model
shapiro.test(residuals(m)) # test residuals
qqnorm(residuals(m)); qqline(residuals(m)) # plot residuals

# test log-normality of new IDE
library(MASS)
fit = fitdistr(ide3[ide3$IDE == "PyCharm",]$Time, "lognormal")$estimate
ks.test(ide3[ide3$IDE == "PyCharm",]$Time, "plnorm", meanlog=fit[1], sdlog=fit[2], exact=TRUE) # lognormality

# compute new log(Time) column and re-test
ide3$logTime = log(ide3$Time) # add new column
View(ide3) # verify
shapiro.test(ide3[ide3$IDE == "PyCharm",]$logTime)
m = aov(logTime ~ IDE, data=ide3) # fit model
shapiro.test(residuals(m)) # test residuals
qqnorm(residuals(m)); qqline(residuals(m)) # plot residuals

# test homoscedasticity
library(car)
leveneTest(logTime ~ IDE, data=ide3, center=median) # Brown-Forsythe test

# one-way ANOVA, suitable now to logTime
m = aov(logTime ~ IDE, data=ide3) # fit model
anova(m) # report anova

# Analysis of Variance Table
#
# Response: logTime
#           Df Sum Sq Mean Sq F value    Pr(>F)
# IDE        2 2.3064  1.1532   8.796 0.0004685 ***
# Residuals 57 7.4729  0.1311
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```

The _omnibus_ tells us that there is some difference in the mean of completion time between the three IDEs. The omnibus test gives thus us permission to investigate into post-hoc tests to determine who's better.

```R
library(multcomp)
summary(glht(m, mcp(IDE="Tukey")), test=adjusted(type="holm")) # Tukey means compare all pairs, mcp stands for multiple comparisons

# Multiple Comparisons of Means: Tukey Contrasts
#
#
# Fit: aov(formula = logTime ~ IDE, data = ide3)
#
# Linear Hypotheses:
# Estimate Std. Error t value Pr(>|t|)
# PyCharm - Eclipse == 0  -0.4380     0.1145  -3.826 0.000978 ***
# VStudio - Eclipse == 0  -0.3895     0.1145  -3.402 0.002458 **
# VStudio - PyCharm == 0   0.0485     0.1145   0.424 0.673438
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# (Adjusted p values reported -- holm method)
```

## Report the results

```latex
F(2, 57) = 8.80, p<.001
```
In parentheses we have the two degrees of freedom. The first one is called _numerator_, the second is called the _denominator_.

# References
- [independent-samples-t-test](/wiki/independent-samples-t-test/)
- [variable-types](/wiki/variable-types/)
- [data-transformation-when-normality-is-violated](/wiki/data-transformation-when-normality-is-violated/)
- [designing-for-experimental-control](/wiki/designing-for-experimental-control/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [confounding-variables](/wiki/confounding-variables/)
- [data-distributions](/wiki/data-distributions/)
- [non-parametric-one-way-anova](/wiki/non-parametric-one-way-anova/)
