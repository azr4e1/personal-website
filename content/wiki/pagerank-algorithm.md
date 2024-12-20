+++
title = "PageRank algorithm"
author = "Lorenzo Drumond"
date = "2024-08-20T14:40:21"
tags = ["statistics",  "search",  "math",  "pagerank",  "machine_learning",  "programming",  "algorithm",  "markov",  "chains"]
+++



The PageRank algorithm, originally developed by Larry Page and Sergey Brin at Stanford University, is a method for ranking web pages in search engine results. It is based on the idea that the importance of a web page can be inferred from the number and quality of links pointing to it. Essentially, a page is considered important if it is linked to by many other pages, especially if those pages are themselves important.

# Key Concepts

1. Web Graph representation
  - The web is represented as a directed graph where each web page is a node, and a hyperlink from one page to another is a directed edge.
  - If page A links to page B, there is a directed edge from node A to node B.
2. Basic Idea:
  - PageRank is essentially a probability distribution that represents the likelihood of a user randomly clicking on links and landing on a particular page.
  - The PageRank of a page P is determined by the PageRank of the pages that link to it, divided by the number of links on those pages.

# Mathematical Formulation

1. Setup
  - Assume there are N pages on the web. The page rank of each page i is denoted as PR(i).
  - Initially, the page rank of each page can be set equally, say 1/N
2. Basic PageRank formula
  - The PageRank of a page i is computed as: `PR(i) = \sum_{j \in M(i)} PR(j)/L(j)`, where
	- M(j) is the set of pages that link to page i
	- PR(j) is the PageRank of page j
	- L(j) is the number of outbound links from j
  - This formula says that the PageRank of page i is the sum of the PageRanks of all pages linking to it, divided by the number of outbound links on those pages.
3. Damping Factor (Teleportation)
  - The basic PageRank formula is modified to account for the fact that a user might not always follow links but may randomly jump to any page. This is modeled using a damping factor d, typically set around 0.85.
  - The modified PageRank formula is: `PR(i) = \frac{1-d}{N} + d \sum_{j \in M(i)} PR(j)/L(j)` where
	- `\frac{1-d}{N}` represents the probability of randomly jumping to any page (called _teleportation_)
4. Iterative Computation: The PageRank values are computed iteratively. Starting with an initial guess (usually 1/N for each page), the PageRank values are updated repeatedly using the above formula until they converge to stable values (i.e., the difference between successive iterations becomes negligible).
5. Convergence: PageRank is guaranteed to converge to a unique solution, as long as the web graph is strongly connected [strongly-connected-graph]] and aperiodic [[aperiodic-graph](/wiki/strongly-connected-graph]] and aperiodic [[aperiodic-graph/) (which the damping factor ensures by allowing random jumps).


# References
- chatGPT
