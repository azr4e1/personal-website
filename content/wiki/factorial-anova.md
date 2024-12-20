+++
toc = true
title = "Factorial ANOVA"
author = "Lorenzo Drumond"
date = "2023-11-20T10:22:34"
tags = ["experiment",  "anova",  "week7",  "coursera",  "designing_running_and_analyzing_experiments",  "test",  "statistics",  "design",  "theory",  "rlang"]
+++


These are studies that have mulitple factors at one time.

## Example
- 24 subjects
- they use either Apple Iphone or Samsung Galaxy keyboard on phone
- they use it when they are either sitting, standing or walking
- measure: WPM, error rate (% of each phrase entered)
- entries are 20 phrases selected by us
- They'll write the 20 phrases in the three postures
- We are also interested in seeing how the different postures affect the performance. This is called _interaction_


This is a __2x3 mixed factorial design__. This means we have 2 factors, one with 2 levels (keyboards) and the other has 3 levels (postures).

It is a mixed factorial design because keyboard is a between-subject factor, and posture is a within-subject factor. ([example-analysis-of-an-ab-test](/wiki/example-analysis-of-an-ab-test/))

The responses are WPM and the error rate %.

In an experiment of this kind, we would record every entry, with one entry being the performance of a single phrase.

We can fully counterbalance the postures factor since it is just 6 combinations.

## References
- [anova-assumptions](/wiki/anova-assumptions/)
- [one-way-anova](/wiki/one-way-anova/)
- [interaction-effects](/wiki/interaction-effects/)
