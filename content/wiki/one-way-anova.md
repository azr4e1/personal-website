+++
toc = true
title = "One-Way ANOVA"
author = "Lorenzo Drumond"
date = "2023-11-20T04:31:26"
tags = ["statistics",  "designing_running_and_analyzing_experiments",  "week4",  "assumptions",  "test",  "coursera",  "f_test",  "experiment",  "theory",  "normality",  "design",  "anova",  "rlang"]
+++


Assuming we have three levels of a factor, and we want to perform ANOVA. We can't use the independent two-samples t-test or a non-parametric test.

We can use a One-Way ANOVA test however, using the F statistics
```R
## One-way ANOVA

ide3 = read.csv("ide3.csv")
View(ide3)
ide3$Subject = factor(ide3$Subject) # convert to nominal factor
ide3$IDE = factor(ide3$IDE) # Rv4
summary(ide3)

library(plyr)
ddply(ide3, ~ IDE, function(data) summary(data$Time))
ddply(ide3, ~ IDE, summarise, Time.mean=mean(Time), Time.sd=sd(Time))

hist(ide3[ide3$IDE == "VStudio",]$Time)
hist(ide3[ide3$IDE == "Eclipse",]$Time)
hist(ide3[ide3$IDE == "PyCharm",]$Time) # new one
plot(Time ~ IDE, data=ide3) # boxplot

shapiro.test(ide3[ide3$IDE == "PyCharm",]$Time)
m = aov(Time ~ IDE, data=ide3) # fit model
shapiro.test(residuals(m)) # test residuals
qqnorm(residuals(m)); qqline(residuals(m)) # plot residuals

library(MASS)
fit = fitdistr(ide3[ide3$IDE == "PyCharm",]$Time, "lognormal")$estimate
ks.test(ide3[ide3$IDE == "PyCharm",]$Time, "plnorm", meanlog=fit[1], sdlog=fit[2], exact=TRUE) # lognormality

ide3$logTime = log(ide3$Time) # add new column
View(ide3) # verify
shapiro.test(ide3[ide3$IDE == "PyCharm",]$logTime)
m = aov(logTime ~ IDE, data=ide3) # fit model
shapiro.test(residuals(m)) # test residuals
qqnorm(residuals(m)); qqline(residuals(m)) # plot residuals

library(car)
leveneTest(logTime ~ IDE, data=ide3, center=median) # Brown-Forsythe test

m = aov(logTime ~ IDE, data=ide3) # fit model
anova(m) # report anova

#
```

The _omnibus_ tells us that there is some difference in the mean of completion time between the three IDEs. The omnibus test gives thus us permission to investigate into post-hoc tests to determine who's better.

```R
library(multcomp)
summary(glht(m, mcp(IDE="Tukey")), test=adjusted(type="holm")) # Tukey means compare all pairs, mcp stands for multiple comparisons

#
#
#
```

## Report the results

```latex
F(2, 57) = 8.80, p<.001
```
In parentheses we have the two degrees of freedom. The first one is called _numerator_, the second is called the _denominator_.

## References
- [independent-samples-t-test](/wiki/independent-samples-t-test/)
- [variable-types](/wiki/variable-types/)
- [data-transformation-when-normality-is-violated](/wiki/data-transformation-when-normality-is-violated/)
- [designing-for-experimental-control](/wiki/designing-for-experimental-control/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [confounding-variables](/wiki/confounding-variables/)
- [data-distributions](/wiki/data-distributions/)
- [non-parametric-one-way-anova](/wiki/non-parametric-one-way-anova/)
