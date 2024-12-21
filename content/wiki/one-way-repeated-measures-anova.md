+++
toc = true
hideReply = true
title = "One-way repeated measures ANOVA"
author = "Lorenzo Drumond"
date = "2023-11-20T07:57:22"
tags = ["repeated_measures",  "friedman",  "rlang",  "statistics",  "designing_running_and_analyzing_experiments",  "anova",  "week6",  "experiment",  "one_way_repeated_measures",  "sphericity",  "coursera",  "design",  "within_subjects",  "test",  "theory"]
+++


If we have more than 2 levels of a within-subjects factor, we cannot use a paired t-test or paired wilcoxon signed rank test. For this we use a one-way repeated measures ANOVA. It is parametric.

A repeated-measures ANOVA will look over all the levels together. If the overall omnibus test is significant, we can then look at the post-hoc tests

One important concept is _sphericity_: this is when the variance of the differences between all combinations of levels of a within-Ss factor are equal. It always holds for within-Ss factors that have just 2 levels, but for 3+ levels, sphericity can be tested with Mauchly's Test of Sphericity. If the test violates sphericity, we need to use correction.

```R
srchscrlvce = read.csv("srchscrlvce.csv")
View(srchscrlvce)
srchscrlvce$Subject = factor(srchscrlvce$Subject) # convert to nominal factor
srchscrlvce$Technique = factor(srchscrlvce$Technique) # Rv4
srchscrlvce$Order = factor(srchscrlvce$Order) # convert to nominal factor
summary(srchscrlvce)

library(plyr)
ddply(srchscrlvce, ~ Technique, function(data) summary(data$Time))
ddply(srchscrlvce, ~ Technique, summarise, Time.mean=mean(Time), Time.sd=sd(Time))

hist(srchscrlvce[srchscrlvce$Technique == "Search",]$Time)
hist(srchscrlvce[srchscrlvce$Technique == "Scroll",]$Time)
hist(srchscrlvce[srchscrlvce$Technique == "Voice",]$Time) # new one
plot(Time ~ Technique, data=srchscrlvce) # boxplot

library(ez)
m = ezANOVA(dv=Time, within=Technique, wid=Subject, type=3, data=srchscrlvce)
m$Mauchly # p<.05 indicates a violation
m$ANOVA
pos = match(m$`Sphericity Corrections`$Effect, m$ANOVA$Effect) # positions of within-Ss efx in m$ANOVA
m$Sphericity$GGe.DFn = m$Sphericity$GGe * m$ANOVA$DFn[pos] # Greenhouse-Geisser
m$Sphericity$GGe.DFd = m$Sphericity$GGe * m$ANOVA$DFd[pos]
m$Sphericity$HFe.DFn = m$Sphericity$HFe * m$ANOVA$DFn[pos] # Huynh-Feldt
m$Sphericity$HFe.DFd = m$Sphericity$HFe * m$ANOVA$DFd[pos]
m$Sphericity # show results

m = aov(Time ~ Technique + Error(Subject/Technique), data=srchscrlvce) # fit model
summary(m) # show anova

library(reshape2)
srchscrlvce.wide.tech = dcast(srchscrlvce, Subject ~ Technique, value.var="Time") # go wide
View(srchscrlvce.wide.tech)
se.sc = t.test(srchscrlvce.wide.tech$Search, srchscrlvce.wide.tech$Scroll, paired=TRUE)
se.vc = t.test(srchscrlvce.wide.tech$Search, srchscrlvce.wide.tech$Voice, paired=TRUE)
sc.vc = t.test(srchscrlvce.wide.tech$Scroll, srchscrlvce.wide.tech$Voice, paired=TRUE)
p.adjust(c(se.sc$p.value, se.vc$p.value, sc.vc$p.value), method="holm")
```

## References
- [one-way-anova](/wiki/one-way-anova/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [variable-types](/wiki/variable-types/)
- [wide-vs-long-format-tables](/wiki/wide-vs-long-format-tables/)
- [counterbalancing-repeated-measures-factors](/wiki/counterbalancing-repeated-measures-factors/)
- [factorial-anova](/wiki/factorial-anova/)
