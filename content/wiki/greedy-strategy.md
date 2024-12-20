+++
title = "Greedy Strategy"
author = "Lorenzo Drumond"
date = "2023-11-20T17:15:38"
tags = ["medium",  "exploration",  "exploitation",  "greedy",  "statistics",  "strategy",  "regret",  "math",  "multi_armed",  "bandits",  "tradeoff"]
+++


A greedy strategy consists of always taking the decision that seems to be the best with respect to the current knowledge: full exploitation, no exploration. If knowledge is not accurate, we may remain stuck in sub-optimal choices.

# Example
3-armed Bernoulli bandit:
- $p_1 = 0.3$
- $p_2 = 0.7$
- $p_3 = 0.8$

We are assuming a prior knowledge for each of the $p_i$'s set to 0.5. The $p_i$'s estimate at time $t$ is:
```latex
e_i^t
```

therefore: $e_1^0 = 0.5, e_2^0 = 0.5, e_3^0 = 0.5$

At this stage the greedy agent picks a random action: $c_2$, and $r_t = 1$. We can thus update our expectation for choice 2:
$e_1^1 = e_1^0 = 0.5, e_2^1 = (e_2^0 + r_1)/2 = 0.75, e_3^1 = e_3^0 = 0.5$

From here, the greedy agent will pick $c_t$ since it's the one with higher probability. If the updated probability stays higher than 0.5 (likely since true prob. is 0.7), then the agent will always pick $c_t$, despite the optimal choice is $c_3$.

# References
- https://towardsdatascience.com/the-exploration-exploitation-dilemma-f5622fbe1e82
- [exploration-vs-exploitation](/wiki/exploration-vs-exploitation/)
- [comparing-stategies](/wiki/comparing-stategies/)

Next -> [e-greedy](/wiki/e-greedy/)
