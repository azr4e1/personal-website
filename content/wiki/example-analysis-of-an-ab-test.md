+++
toc = true
hideReply = true
title = "Example Analysis of an A/B test"
author = "Lorenzo Drumond"
date = "2023-11-17T10:29:28"
tags = ["statistics",  "experiment",  "within_subjects",  "rlang",  "coursera",  "design",  "theory",  "test",  "between_subjects",  "week3",  "AB_test",  "designing_running_and_analyzing_experiments"]
+++


Example: first 500 visitors of a website are used in an A/B experiment. 250 are exposed to variation A, the rest to version B.

Question: which version causes people to view the most number of distinct pages? -> Distinct Pages Views is the metric.

## Design Consideration

What are our variables?

- Independent variables: the things we are manipulating. -> Site version
- Dependent variables: things that result from the manipulation (treatment). This is our measure -> distinct pages.

The idea behind an experiment is that some measure Y is the result of an effect X plus a measurement error:
```latex
Y ~ X + \epsilon
```

In a typical analysis of variance, Y is numerical, while X is a categorical type ([variable-types](/wiki/variable-types/)).

Independent variables can also be called _factors_ (website variant, gender, age...).

Factors can take on values, which are called _levels_ of the factor (A/B, male/female, young/old...).

Factors can also be _between subjects_ or _within subjects_.

- between subjects factor: each subject experiences only one value/level of that factor. (either A OR B)
- within subjects factor: each subject experiences multiple levels of that factors. (A and/or B).

## Running a test
We want to think about:
- do we measure each visitors only once or every time they visit?
- how many visitors do we want?
- is the 50/50 split ideal or do we need to consider other splits? Algorithmically?
- is the design a balanced design (same no. data point in every condition) or imbalanced?

## References
- https://www.coursera.org/learn/designexperiments
- [test-of-proportions](/wiki/test-of-proportions/)
- [measurement-errors](/wiki/measurement-errors/)
- [variable-types](/wiki/variable-types/)

Next -> [independent-samples-t-test](/wiki/independent-samples-t-test/)
