+++
toc = true
title = "Bayesian Inference - introduction"
author = "Lorenzo Drumond"
date = "2024-10-02T10:13:42"
tags = ["probabilistic",  "hacker",  "programming",  "bayesian",  "pymc",  "machine_learning",  "inference",  "statistics",  "introduction"]
+++



Bayesian inference works by updating our beliefs about an outcome; rarely can we be absolutely sure unless we rule out all other alternatives.

Bayesian inference differs from more traditional statistical inference by preserving uncertainty.

The Bayesian world-view interprets probability as measure of believability in an event, that is, how confident we are in an event occurring.

## Frequentist approach vs Bayesian approach

Frequentist, known as the more classical version of statistics, assume that probability is the long-run frequency of events (hence the bestowed title). For example, the probability of plane accidents under a frequentist philosophy is interpreted as the long-term frequency of plane accidents. This makes logical sense for many probabilities of events, but becomes more difficult to understand when events have no long-term frequency of occurrences. Consider: we often assign probabilities to outcomes of presidential elections, but the election itself only happens once! Frequentists get around this by invoking alternative realities and saying across all these realities, the frequency of occurrences defines the probability.

Bayesians interpret a probability as measure of belief, or confidence, of an event occurring. Simply, a probability is a summary of an opinion. An individual who assigns a belief of 0 to an event has no confidence that the event will occur; conversely, assigning a belief of 1 implies that the individual is absolutely certain of an event occurring. Beliefs between 0 and 1 allow for weightings of other outcomes. This definition agrees with the probability of a plane accident example, for having observed the frequency of plane accidents, an individual's belief should be equal to that frequency, excluding any outside information. Similarly, under this definition of probability being equal to beliefs, it is meaningful to speak about probabilities (beliefs) of presidential election outcomes: how confident are you candidate A will win?

This philosophy of treating beliefs as probability is natural to humans. We employ it constantly as we interact with the world and only see partial truths, but gather evidence to form beliefs. Alternatively, you have to be trained to think like a frequentist.

## Notation

We denote our belief about event A as P(A). We call this quantity the _prior probability_.

When something about event A occurs, we need to update our belief about the event accordingly. We denote our update belief as P(A|X), interpreted as the probability of A given the evidence X. We call this quantity the _posterior probability_.


## Incorporating Evidence

As we acquire more and more instances of evidence, our prior belief is washed out by the new evidence.

Denote N as the number of instances of evidence we possess. As we gather an infinite amount of evidence, say as N -> inf, our Bayesian results (often) align with frequentist results. Hence for large N, statistical inference is more or less objective. On the other hand, for small N, inference is much more unstable: frequentist estimates have more variance and larger confidence intervals. This is where Bayesian analysis excels. By introducing a prior, and returning probabilities (instead of a scalar estimate), we preserve the uncertainty that reflects the instability of statistical inference of a small N dataset.

## Bayes' Theorem

We have a prior belief in event A, beliefs formed by previous information.

Secondly, we observe our evidence, and we want to update our belief to incorporate this. This is the _posterior_ probability. Updating our belief is done via the following equation:

```latex
P(A|X) = \frac{P(X|A)P(A)}{P(X)} \prop P(X|A)P(A)
```

## References

Next -> [bayesian-inference---probability-distributions](/wiki/bayesian-inference---probability-distributions/)
