+++
title = "ANOVA for within-subjects in R"
author = "Lorenzo Drumond"
date = "2023-11-20T07:40:10"
tags = ["statistics",  "repeated_measures",  "within_subjects",  "designing_running_and_analyzing_experiments",  "week6",  "assumptions",  "test",  "coursera",  "experiment",  "theory",  "design",  "anova",  "rlang"]
+++


```R
srchscrl = read.csv("srchscrl.csv")
View(srchscrl)
srchscrl$Subject = factor(srchscrl$Subject) # convert to a nominal factor
srchscrl$Technique = factor(srchscrl$Technique) # Rv4
srchscrl$Order = factor(srchscrl$Order) # convert to a nominal factor
summary(srchscrl)

library(plyr)
ddply(srchscrl, ~ Technique, function(data) summary(data$Time))
ddply(srchscrl, ~ Technique, summarise, Time.mean=mean(Time), Time.sd=sd(Time))

hist(srchscrl[srchscrl$Technique == "Search",]$Time) # histogram
hist(srchscrl[srchscrl$Technique == "Scroll",]$Time) # histogram
plot(Time ~ Technique, data=srchscrl) # boxplot

shapiro.test(srchscrl[srchscrl$Technique == "Search",]$Time) # Shapiro-Wilk
shapiro.test(srchscrl[srchscrl$Technique == "Scroll",]$Time)

m = aov(Time ~ Technique + Error(Subject/Technique), data=srchscrl)
shapiro.test(residuals(m$Subject))
qqnorm(residuals(m$Subject)); qqline(residuals(m$Subject))
shapiro.test(residuals(m$`Subject:Technique`))
qqnorm(residuals(m$`Subject:Technique`)); qqline(residuals(m$`Subject:Technique`))

library(car)
leveneTest(Time ~ Technique, data=srchscrl, center=median) # Brown-Forsythe test

library(reshape2)
srchscrl.wide.order = dcast(srchscrl, Subject ~ Order, value.var="Time") # go wide
View(srchscrl.wide.order) # verify
t.test(srchscrl.wide.order$"1", srchscrl.wide.order$"2", paired=TRUE)

srchscrl.wide.tech = dcast(srchscrl, Subject ~ Technique, value.var="Time") # go wide
View(srchscrl.wide.tech)
t.test(srchscrl.wide.tech$Search, srchscrl.wide.tech$Scroll, paired=TRUE)
plot(Time ~ Technique, data=srchscrl) # confirm
```

# References
- [one-way-anova](/wiki/one-way-anova/)
- [example-analysis-of-an-ab-test](/wiki/example-analysis-of-an-ab-test/)
- [counterbalancing-repeated-measures-factors](/wiki/counterbalancing-repeated-measures-factors/)
- [wide-vs-long-format-tables](/wiki/wide-vs-long-format-tables/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [variable-types](/wiki/variable-types/)
- [confounding-variables](/wiki/confounding-variables/)
- [data-distributions](/wiki/data-distributions/)
- [anova-for-within-subject-in-r---non-parametric](/wiki/anova-for-within-subject-in-r---non-parametric/)
