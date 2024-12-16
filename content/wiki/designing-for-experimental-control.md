+++
title = "Designing for Experimental Control"
author = "Lorenzo Drumond"
date = "2023-11-19T23:31:14"
tags = ["statistics",  "designing_running_and_analyzing_experiments",  "week4",  "test",  "coursera",  "experiment",  "control",  "AB_test",  "theory",  "design",  "rlang"]
+++


# Designing for Experimental Control
Experimental control means making sure that the situation so that we know that
the things that we manipulate are responsible for the changes in the measures
that we make, and not due to some other factors.

## Example
Let's consider task completion time, very common study. In particular, authoring tools like sketching or programming tools.

Let's consider the time it takes to write small programs in a language by an intro-to-programming students in different languages:

- 40 students
- 2 classes
- 20 each
- class A: C# in Visual studio
- class B: Java in Eclipse

1. How long does it take them to complete a program?

Later we can add a third class of 20 students using Python in PyCharm.

Things outside control:
- different teachers
- outside help
- more help than others
- prior knowledge
- etc...

The above may be inclusion/exclusion criteria ([basic-experiment-design-concepts](/wiki/basic-experiment-design-concepts/))

In-the-wild studies (studies in real world scenarios) trade-off with experimental control (ability to link cause and effect in an experiment).


# References
- [measurement-errors](/wiki/measurement-errors/)
- [variable-types](/wiki/variable-types/)
- [test-of-proportions](/wiki/test-of-proportions/)
- [confounding-variables](/wiki/confounding-variables/)
- [measuring-results](/wiki/measuring-results/)
- [exerting-control](/wiki/exerting-control/)
- [parametric-vs-non-parametric-analyses](/wiki/parametric-vs-non-parametric-analyses/)
