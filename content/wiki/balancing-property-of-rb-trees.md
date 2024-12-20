+++
title = "Balancing Property of RB-trees"
author = "Lorenzo Drumond"
date = "2024-08-21T11:27:35"
tags = ["linked",  "data",  "binary",  "search",  "list",  "computer_science",  "structure",  "boot_dev",  "programming",  "bst",  "red_black",  "memory",  "unbalanced",  "tree",  "balanced"]
+++



A Red-Black Tree (RB-tree) guarantees a height of O(logn) because of the strict properties it maintains, especially the black-height property. This constraint ensures that the tree remains balanced, preventing it from becoming too skewed or unbalanced, which would degrade performance.

# Black-Height Property:

The black-height of a node is defined as the number of black nodes on the path from that node to any leaf, not including the node itself.

The property that all paths from a node to its descendant leaves contain the same number of black nodes ensures that the tree remains balanced. This prevents any path in the tree from being disproportionately long.

# At Most Double Height:

A critical aspect of the RB-tree is that the maximum height of the tree is constrained.

Specifically, the longest path (in terms of the number of nodes) from the root to a leaf cannot be more than twice the length of the shortest path. This is because the longest path can alternate between red and black nodes, while the shortest path contains only black nodes.

If the black-height of the tree is h, then the height of the tree (including red nodes) can be at most 2h.

# Relation to Number of Nodes:

1. Let's denote the black-height of the tree as h
2. The minimum number of nodes in an RB-tree of black-height h occurs when all black nodes are aligned along one path and the rest of the nodes are red, forming a "degenerate" tree.
3. For a black height h, the minimum number of nodes n_min is: `n_min = 2^h - 1`
4. This gives us the relationship: `h <= log(n+1)`
5. Since the height of the tree H is at most twice the black-height h, we have: `H <= 2 * h <= 2 * log(n+1)`
6. Therefore, `H <= O(log(n))

# References

- chatGPT

Next -> [rotation-in-rb-trees](/wiki/rotation-in-rb-trees/)
