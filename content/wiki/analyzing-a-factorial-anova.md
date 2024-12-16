+++
title = "Analyzing a factorial ANOVA"
author = "Lorenzo Drumond"
date = "2023-11-20T10:48:45"
tags = ["interactions",  "rlang",  "statistics",  "designing_running_and_analyzing_experiments",  "anova",  "week7",  "counterbalancing",  "experiment",  "theory",  "sphericity",  "coursera",  "design",  "test",  "greenhouse_geyser",  "eta_squared"]
+++


# Analyzing a factorial ANOVA

Always remember to first test for significance of the presentation order for your within-subjects factors.

If it is significant, it means you need to revisit your counterbalancing method.

Only if it is not significant you may proceed to test for the actual factor.

Always remember to test for sphericity when using within-subjects factors.

If the Mauchly test for sphericity is significant, that means your factor violates the sphericity
assumption, and you need to apply the Greenhouse-Geyser correction

Note: "ges" in `m$ANOVA` is the generalized eta-squared measure of effect size, preferred to eta-squared or partial eta-squared.

```R
# Mixed Factorial ANOVA on WPM
# Note: "Mixed" here is not "mixed effects" as in LMMs.
# Those will be used farther down below. "Mixed" here is
# mixing between-Ss and within-Ss factors. By contrast,
# "mixed" in LMMs is mixing fixed and random effects,
# which we'll cover later. Mixed factorial designs are
# also called "mixed designs" or "split-plot designs."
# It is easy to extrapolate to purely between-Ss or
# within-Ss factorial designs from what we do here.

# read in data file of smartphone text entry by 24 people
mbltxt = read.csv("mbltxt.csv")
View(mbltxt)
mbltxt$Subject = factor(mbltxt$Subject) # convert to nominal factor
mbltxt$Keyboard = factor(mbltxt$Keyboard) # Rv4
mbltxt$Posture = factor(mbltxt$Posture) # Rv4
mbltxt$Posture_Order = factor(mbltxt$Posture_Order) # convert to nominal factor
summary(mbltxt)

# explore the WPM data
library(plyr)
ddply(mbltxt, ~ Keyboard * Posture, function(data) summary(data$WPM))
ddply(mbltxt, ~ Keyboard * Posture, summarise, WPM.mean=mean(WPM), WPM.sd=sd(WPM))

# histograms for two factors
hist(mbltxt[mbltxt$Keyboard == "iPhone" & mbltxt$Posture == "Sit",]$WPM)
hist(mbltxt[mbltxt$Keyboard == "iPhone" & mbltxt$Posture == "Stand",]$WPM)
hist(mbltxt[mbltxt$Keyboard == "iPhone" & mbltxt$Posture == "Walk",]$WPM)
hist(mbltxt[mbltxt$Keyboard == "Galaxy" & mbltxt$Posture == "Sit",]$WPM)
hist(mbltxt[mbltxt$Keyboard == "Galaxy" & mbltxt$Posture == "Stand",]$WPM)
hist(mbltxt[mbltxt$Keyboard == "Galaxy" & mbltxt$Posture == "Walk",]$WPM)
boxplot(WPM ~ Keyboard * Posture, data=mbltxt, xlab="Keyboard.Posture", ylab="WPM") # boxplots
with(mbltxt, interaction.plot(Posture, Keyboard, WPM, ylim=c(0, max(mbltxt$WPM)))) # interaction plot

# test for a Posture order effect to ensure counterbalancing worked
library(ez)
m = ezANOVA(dv=WPM, between=Keyboard, within=Posture_Order, wid=Subject, type=3, data=mbltxt)
m$Mauchly # n.s.
m$ANOVA

# now perform the two-way mixed factorial repeated measures ANOVA
m = ezANOVA(dv=WPM, between=Keyboard, within=Posture, wid=Subject, type=3, data=mbltxt)
m$Mauchly # sig. so use GGe correction
m$ANOVA
# note: "ges" in m$ANOVA is the generalized eta-squared measure
# of effect size, preferred to eta-squared or partial eta-squared.
# see Bakeman (2005) in the References at ?ezANOVA.
# Now compute the corrected DFs for each corrected effect
pos = match(m$`Sphericity Corrections`$Effect, m$ANOVA$Effect) # positions of within-Ss efx in m$ANOVA
m$Sphericity$GGe.DFn = m$Sphericity$GGe * m$ANOVA$DFn[pos] # Greenhouse-Geisser
m$Sphericity$GGe.DFd = m$Sphericity$GGe * m$ANOVA$DFd[pos]
m$Sphericity$HFe.DFn = m$Sphericity$HFe * m$ANOVA$DFn[pos] # Huynh-Feldt
m$Sphericity$HFe.DFd = m$Sphericity$HFe * m$ANOVA$DFd[pos]
m$Sphericity # show results

# for completeness, note the above's uncorrected results are the same as from this
m = aov(WPM ~ Keyboard * Posture + Error(Subject/Posture), data=mbltxt) # fit model
summary(m) # show table

# manual post hoc pairwise comparisons in light of sig. interaction
library(reshape2)
mbltxt.wide = dcast(mbltxt, Subject + Keyboard ~ Posture, value.var="WPM") # go wide
View(mbltxt.wide)
sit = t.test(mbltxt.wide$Sit ~ Keyboard, data=mbltxt.wide) # iPhone vs. Galaxy WPM sitting
std = t.test(mbltxt.wide$Stand ~ Keyboard, data=mbltxt.wide) # iPhone vs. Galaxy WPM standing
wlk = t.test(mbltxt.wide$Walk ~ Keyboard, data=mbltxt.wide) # iPhone vs. Galaxy WPM walking
p.adjust(c(sit$p.value, std$p.value, wlk$p.value), method="holm")

# just curious: also compare iPhone 'sit' and 'walk'
t.test(mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Sit, mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Walk, paired=TRUE)
boxplot(mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Sit, mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Walk,xlab="iPhone.Sit vs. iPhone.Walk", ylab="WPM") # custom boxplot
```

# References
- [anova-assumptions](/wiki/anova-assumptions/)
- [factorial-anova](/wiki/factorial-anova/)
- [one-way-anova](/wiki/one-way-anova/)
- [one-way-repeated-measures-anova](/wiki/one-way-repeated-measures-anova/)
- [art---non-parametric-factorial-anova](/wiki/art---non-parametric-factorial-anova/)
