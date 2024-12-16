+++
title = "Counterbalancing repeated measures factors"
author = "Lorenzo Drumond"
date = "2023-11-20T07:14:31"
tags = ["statistics",  "within_subjects",  "designing_running_and_analyzing_experiments",  "repeated_measures",  "week6",  "test",  "coursera",  "experiment",  "theory",  "design"]
+++


# Counterbalancing repeated measures factors
How do we assign order of presentation of the levels of a factor in a within-subjects experiment?

There are three strategies:
1. Full counterbalancing: every possible order of conditions is expressed in the study. When it's possible, this is the best solution. Number of combinations grows factorially (e.g. 3 levels -> 3! = 6 sequences to express)
2. Latin squares: each condition occupies each position in the order exactly the same number of times. e.g. 5 ([A, B, C, D, E], [B, C, D, E, A], [C, D, E, A, B], [D, E, A, B, C], [E, A, B, C, D]). We still could have carried over as some conditions never follows some other conditions.
3. Balanced latin square: For even numbers, you build you initial sequence like this [1, 2, n , 3, n-1, 4, n-2, 5, ...] and then you build the other sequences by adding one and wrapping around when necessary. This allows every condition to follow every other the same number of times. For odd numbers, you do the same but also double the number of sequences by reversing the initial row and repeating the same process.

# References
- [variable-types](/wiki/variable-types/)
- [confounding-variables](/wiki/confounding-variables/)
- [one-way-anova](/wiki/one-way-anova/)
