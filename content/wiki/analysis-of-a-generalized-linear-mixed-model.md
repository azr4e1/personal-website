+++
title = "Analysis of a Generalized Linear Mixed Model"
author = "Lorenzo Drumond"
date = "2023-12-05T16:20:46"
tags = ["designing_running_and_analyzing_experiments",  "experiment",  "generalized",  "regression",  "nested_effects",  "linear_model",  "coursera",  "random_effects",  "rlang",  "mixed",  "fixed_effects",  "within_subjects",  "design",  "theory",  "test",  "week9",  "statistics"]
+++



Off the back of the earlier example ([analysis-of-a-linear-mixed-model](/wiki/analysis-of-a-linear-mixed-model/)), we
can use a generalized model to model the error rate. It's a count variable, so
we need Poisson distribution for the regression.

```R
# Generalized Linear Mixed Model (GLMM) on Error_Rate

mbltxttrials$Errors = mbltxttrials$Error_Rate * 100
View(mbltxttrials) # verify
summary(mbltxttrials)

library(plyr)
ddply(mbltxttrials, ~ Keyboard * Posture, function(data) summary(data$Errors))
ddply(mbltxttrials, ~ Keyboard * Posture, summarise, Errors.mean=mean(Errors), Errors.sd=sd(Errors))

hist(mbltxttrials[mbltxttrials$Keyboard == "iPhone" & mbltxttrials$Posture == "Sit",]$Errors)
hist(mbltxttrials[mbltxttrials$Keyboard == "iPhone" & mbltxttrials$Posture == "Stand",]$Errors)
hist(mbltxttrials[mbltxttrials$Keyboard == "iPhone" & mbltxttrials$Posture == "Walk",]$Errors)
hist(mbltxttrials[mbltxttrials$Keyboard == "Galaxy" & mbltxttrials$Posture == "Sit",]$Errors)
hist(mbltxttrials[mbltxttrials$Keyboard == "Galaxy" & mbltxttrials$Posture == "Stand",]$Errors)
hist(mbltxttrials[mbltxttrials$Keyboard == "Galaxy" & mbltxttrials$Posture == "Walk",]$Errors)
boxplot(Errors ~ Keyboard * Posture, data=mbltxttrials, xlab="Keyboard.Posture", ylab="Errors") # boxplots
with(mbltxttrials, interaction.plot(Posture, Keyboard, Errors, ylim=c(0, max(mbltxttrials$Errors)))) # interaction?

library(fitdistrplus)
fit = fitdist(mbltxttrials[mbltxttrials$Keyboard == "iPhone" & mbltxttrials$Posture == "Sit",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test
fit = fitdist(mbltxttrials[mbltxttrials$Keyboard == "iPhone" & mbltxttrials$Posture == "Stand",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test
fit = fitdist(mbltxttrials[mbltxttrials$Keyboard == "iPhone" & mbltxttrials$Posture == "Walk",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test
fit = fitdist(mbltxttrials[mbltxttrials$Keyboard == "Galaxy" & mbltxttrials$Posture == "Sit",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test
fit = fitdist(mbltxttrials[mbltxttrials$Keyboard == "Galaxy" & mbltxttrials$Posture == "Stand",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test
fit = fitdist(mbltxttrials[mbltxttrials$Keyboard == "Galaxy" & mbltxttrials$Posture == "Walk",]$Errors, "pois", discrete=TRUE)
gofstat(fit) # goodness-of-fit test

library(lme4) # for glmer
library(car) # for Anova

contrasts(mbltxttrials$Keyboard) <- "contr.sum"
contrasts(mbltxttrials$Posture) <- "contr.sum"
contrasts(mbltxttrials$Trial) <- "contr.sum"

m = glmer(Errors ~ (Keyboard * Posture)/Trial + (1|Subject), data=mbltxttrials, family=poisson, nAGQ=0)
Anova(m, type=3)

m = glmer(Errors ~ (Keyboard * Posture) + (1|Keyboard:Posture:Trial) + (1|Subject), data=mbltxttrials, family=poisson, nAGQ=0) # new, correct syntax
Anova(m, type=3)

with(mbltxttrials, interaction.plot(Posture, Keyboard, Errors, ylim=c(0, max(mbltxttrials$Errors)))) # for convenience
library(multcomp) # for glht
library(emmeans) # for emm
summary(glht(m, emm(pairwise ~ Keyboard * Posture)), test=adjusted(type="holm"))
```

# References
- [one-way-repeated-measures-anova](/wiki/one-way-repeated-measures-anova/)
- [anova-assumptions](/wiki/anova-assumptions/)
- [example-analysis-of-an-ab-test](/wiki/example-analysis-of-an-ab-test/)
- [factorial-anova](/wiki/factorial-anova/)
- [one-way-anova](/wiki/one-way-anova/)
