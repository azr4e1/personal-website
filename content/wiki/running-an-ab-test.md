+++
toc = true
hideReply = true
title = "Running an A/B test"
author = "Lorenzo Drumond"
date = "2023-11-20T03:09:11"
tags = ["statistics",  "week4",  "designing_running_and_analyzing_experiments",  "test",  "coursera",  "experiment",  "theory",  "control",  "AB_test",  "running",  "design",  "rlang"]
+++


Considerations when running an experiment like in [designing-for-experimental-control](/wiki/designing-for-experimental-control/):

1. for lengthy experiments, we need to give breaks to the subjects and control the lengths
2. keep people in a lab setting
3. set a time limit?
4. what to record if a student didn't finish the task?
5. too many dropouts?

Experiments are not just about recording numbers. We need to observe the data qualitatively and make conclusions from that.

## Example
Going back to the experiment in [designing-for-experimental-control](/wiki/designing-for-experimental-control/), the formal setup is as follows:

- 40 students
- 2 classes of 20 each
- response: time (mins) -> numeric/continuous/scalar variable
- 1 factor: IDE (Integrated Development Environment)
- 2 levels: Visual Studio (C#), Eclipse (Java)
- this is a between-subject factor.

## References
- [confounding-variables](/wiki/confounding-variables/)
- [variable-types](/wiki/variable-types/)
- [measurement-errors](/wiki/measurement-errors/)
- [measuring-results](/wiki/measuring-results/)
- [anova-assumptions](/wiki/anova-assumptions/)
