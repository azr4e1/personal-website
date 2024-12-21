+++
toc = true
hideReply = true
title = "ANOVA for within-subject in R - non-parametric"
author = "Lorenzo Drumond"
date = "2023-11-20T07:45:45"
tags = ["repeated_measures",  "within_subjects",  "week6",  "statistics",  "non_parametric",  "wilcoxon_signed_rank",  "designing_running_and_analyzing_experiments",  "test",  "coursera",  "experiment",  "theory",  "normality",  "design",  "anova",  "rlang"]
+++


Often errors type variables don't satisfy the assumption of normality for ANOVA.

Same holds for Likert-scale type variables (ordinal).

```R
library(plyr)
ddply(srchscrl, ~ Technique, function(data) summary(data$Errors))
ddply(srchscrl, ~ Technique, summarise, Errors.mean=mean(Errors), Errors.sd=sd(Errors))

hist(srchscrl[srchscrl$Technique == "Search",]$Errors) # histogram
hist(srchscrl[srchscrl$Technique == "Scroll",]$Errors) # histogram
plot(Errors ~ Technique, data=srchscrl) # boxplot


library(fitdistrplus)
fit = fitdist(srchscrl[srchscrl$Technique == "Search",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test
fit = fitdist(srchscrl[srchscrl$Technique == "Scroll",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test

library(coin)
wilcoxsign_test(Errors ~ Technique | Subject, data=srchscrl, distribution="exact")

library(plyr)
ddply(srchscrl, ~ Technique, function(data) summary(data$Effort))
ddply(srchscrl, ~ Technique, summarise, Effort.mean=mean(Effort), Effort.sd=sd(Effort))
hist(srchscrl[srchscrl$Technique == "Search",]$Effort, breaks=c(1:7), xlim=c(1,7)) # histogram
hist(srchscrl[srchscrl$Technique == "Scroll",]$Effort, breaks=c(1:7), xlim=c(1,7)) # histogram
plot(Effort ~ Technique, data=srchscrl, ylim=c(1,7)) # boxplot

library(coin)
wilcoxsign_test(Effort ~ Technique | Subject, data=srchscrl, distribution="exact")
```

## References
- [One Way Anova](/wiki/one-way-anova)
- [wide-vs-long-format-tables](/wiki/wide-vs-long-format-tables/)
- [variable-types](/wiki/variable-types/)
- [counterbalancing-repeated-measures-factors](/wiki/counterbalancing-repeated-measures-factors/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [one-way-repeated-measures-anova](/wiki/one-way-repeated-measures-anova/)
