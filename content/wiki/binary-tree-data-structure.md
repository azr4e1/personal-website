+++
title = "Binary Tree Data Structure"
author = "Lorenzo Drumond"
date = "2024-08-19T21:40:21"
tags = ["memory",  "linked",  "programming",  "bst",  "search",  "data",  "list",  "boot_dev",  "binary",  "computer_science",  "tree",  "structure"]
+++


# Binary Tree Data Structure

A tree is a data structure with:

- a root node
- children nodes: each node can have multiple children, each children has only one parent
- leaf nodes: nodes without children

Trees aren't particularly useful data structures unless they're ordered in some
way. One of the most common types of ordered tree is a Binary Search Tree or
BST. In addition to the properties we've already talked about, a BST has some
additional constraints:


1. Instead of a list of children, each node has at most 2 children, a right and a left child
2. The left child's value must be less than its parent's value
3. The right child's value must be greater than its parent's
4. No two nodes in the BST can have the same value

By ordering the tree this way now, we can add, remove, and find nodes very quickly later (O(logn) complexity class)

We just need to linearly visit the levels of a tree once to perform any of the above operations. In general, a tree of
n elements has at most log(n) levels.

# References

- boot.dev

Next -> [unbalanced-binary-search-tree](/wiki/unbalanced-binary-search-tree/)
