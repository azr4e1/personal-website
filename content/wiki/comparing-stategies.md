+++
toc = true
hideReply = true
title = "Comparing stategies"
author = "Lorenzo Drumond"
date = "2023-11-27T16:22:52"
tags = ["medium",  "exploration",  "exploitation",  "greedy",  "statistics",  "strategy",  "regret",  "math",  "multi_armed",  "bandits",  "tradeoff"]
+++



When it comes to strategies we can adopt to determine when to choose the current optimal choice or to explore for more potentially better choices by selecting a different action, we cannot really draw general comparisons.

For examples, is it better to adopt a greedy strategy, or use the e-greedy algorithm ([e-greedy](/wiki/e-greedy/))? A strategy can be better in some situations and worse in others.

For well defined problems with known true probabilities, a common approach is to run simulations and comparing the graph of average regrets per iterations.

However, these kind of comparisons only hold for specific problems, and strategies are almost impossible to compare in general.

## References
- https://towardsdatascience.com/the-exploration-exploitation-dilemma-f5622fbe1e82
- [exploration-vs-exploitation](/wiki/exploration-vs-exploitation/)
- [greedy-strategy](/wiki/greedy-strategy/)
