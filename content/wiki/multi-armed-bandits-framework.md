+++
title = "Multi-armed bandits framework"
author = "Lorenzo Drumond"
date = "2023-11-20T16:10:20"
tags = ["medium",  "exploration",  "exploitation",  "statistics",  "regret",  "multi_armed",  "math",  "bandits",  "tradeoff"]
+++


# Multi-armed bandits framework
The K-armed problem models a situation where an agent is facing several times in a row the same K options, each leading to a random reward whose distribution is unknown. The goal is to maximize the total reward over a period of time, therefore the agents has to balance at each iteration the need to acquire more information (reward distribution of options K) and the need to optimize reward based on current knowledge.

Let's consider the Bernoulli K-armed bandit (special case of general K-armed) where the K reward distributions:
```latex
R_1, R_2, R_3, etc
```

are Bernoulli distributed. Then the reward for choosing action $i$ is:
```latex
\begin{align}
  \begin{cases}
    1 with probability p_i\\
    0 with probability (1-p_i)
  \end{cases}
\end{align}
```

and the whole uncertainty lies in the unknown value of $p_i$s. Also denote:
```latex
c_t, \quad r_t, \quad R_T = \sum_{t=0}^T r_T
```

respectively the choice of the agent at iteration $t$, the reward received, and total reward from iteration 0 to iteration T.


The __total expected regret__ is the sum of the expected regret over the different iterations: if $max_i(p_i), p_{c_t}$ are expected reward of best action, and expected reward of chosen action, then expected regret and total expected regret are:
```latex
l_t = max_i(p_i) - p_{c_t}
```

and

```latex
L_T = \sum_{t=0}^T l_t = (T+1)max_i(p_i) - \sum_{t=0}^T p_{c_t}
```

In practive $p_i$s are unknown; however these metric are useful to assess the quality of a strategy. At each iteration, a low expected regret indicates that the choice is close to the optimal.

_A good strategy is such that, in average, its regret decreases quickly towards zero, indicating that the best option is quickly identified and exploited_


# References
- https://towardsdatascience.com/the-exploration-exploitation-dilemma-f5622fbe1e82
- [comparing-stategies](/wiki/comparing-stategies/)

Next -> [greedy-strategy](/wiki/greedy-strategy/)
