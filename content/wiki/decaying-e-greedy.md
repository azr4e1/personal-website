+++
toc = true
title = "Decaying e-greedy"
author = "Lorenzo Drumond"
date = "2023-11-27T16:28:53"
tags = ["medium",  "exploration",  "exploitation",  "greedy",  "statistics",  "strategy",  "regret",  "math",  "multi_armed",  "bandits",  "decaying",  "tradeoff"]
+++



In the exploration vs exploitation dilemma, we want to minimize the expected loss that arises when exploring alternatives from the current best choice.

THe [e-greedy](/wiki/e-greedy/) strategy allows us to introduce an element of exploration, but it also means that the average expected regret will never go below a threshold.

The ideal scenario would be to always chose the optimal option once we've determined it, but this is usually impossible in most situations.

An alternative solution is to progressively reduce the $e$ parameter - i.e. the exploration rate - so that as we grow more confident in having found the optimal solution, we explore less frequently.

It is not easy to find an optimal decay schedule however. Also, this approach holds only for problems that are stationary.

## References
- https://towardsdatascience.com/the-exploration-exploitation-dilemma-f5622fbe1e82
- [comparing-stategies](/wiki/comparing-stategies/)
- [greedy-strategy](/wiki/greedy-strategy/)
- [exploration-vs-exploitation](/wiki/exploration-vs-exploitation/)

Next -> [optimistic-initialization](/wiki/optimistic-initialization/)
