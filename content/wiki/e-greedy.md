+++
toc = true
title = "e-greedy"
author = "Lorenzo Drumond"
date = "2023-11-27T16:09:10"
tags = ["medium",  "exploration",  "exploitation",  "greedy",  "statistics",  "strategy",  "regret",  "math",  "multi_armed",  "bandits",  "tradeoff"]
+++


A version of the greedy strategy that introduces exploration:

The idea is to take either the most optimal (known) choice with probability $(1-e)$, or a random choice with probability $e$.

Therefore we can balance how much exploration we want by tuning the $e$ parameter: 0 = full exploitation, 1 = full exploration

## Example

In the bernoulli 3-armed bandit example ([greedy-strategy](/wiki/greedy-strategy/)),
with $e=0.1$ we would pick a random option for 10% of the time. This ensures we don't get stuck in unoptimal choices.

A drawback of this strategy is that we will always choose an unoptimal action at most $e$ per cent of the times.

The cost of this exploration can be calculated in the expected regret of picking a random action:
```latex
[(0.8-0.3) + (0.8 - 0.7) - (0.8-0.8)]/3 = 0.2
```

Therefore we would have 0 loss with 0.9 probability, and 0.2 loss with 0.1 probability. Which mean that the average regret can only reduce not lower than
```latex
(1-e) * 0 + e * 0.2 = 0.02
```

## References
- [exploration-vs-exploitation](/wiki/exploration-vs-exploitation/)
- [greedy-strategy](/wiki/greedy-strategy/)
- https://towardsdatascience.com/the-exploration-exploitation-dilemma-f5622fbe1e82
- [comparing-stategies](/wiki/comparing-stategies/)

Next -> [decaying-e-greedy](/wiki/decaying-e-greedy/)
