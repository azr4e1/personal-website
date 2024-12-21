+++
toc = true
hideReply = true
title = "Red Black Tree"
author = "Lorenzo Drumond"
date = "2024-08-20T09:14:57"
tags = ["linked",  "data",  "binary",  "search",  "list",  "computer_science",  "structure",  "boot_dev",  "programming",  "bst",  "red_black",  "memory",  "unbalanced",  "tree"]
+++



A red-black tree is a kind of self-balancing binary search tree. Each node stores an extra bit, which we will call the color, red or black. The color ensures that the tree remains approximately balanced during insertions and deletions.

When the tree is modified, the new tree is rearranged and repainted to restore the coloring properties that constrain how unbalanced the tree can become in the worst case.

In a normal BST, the child nodes don't need to know about, or carry a reference to their parent, the same is not true for Red-Black trees.

## Properties

In addition to all the properties of a Binary Search Tree, a red-black tree must have the following:

1. Node Color: Every node is either red or black.
2. Root Property: The root is always black.
3. Leaf Property: Every leaf (NULL node) is black. These leaves are often represented as NIL nodes or NULL pointers.
4. Red Property: A red node cannot have a red child (i.e., no two consecutive red nodes are allowed).
5. Black-Height Property: For each node, every path from that node to any of its descendant NIL nodes must have the same number of black nodes.

The re-balancing of a red-black tree does not result in a perfectly balanced tree. However, its insertion and deletion operations, along with the tree rearrangement and recoloring, are always performed in O(log(n)) time.

A simple example to understand balancing is, that a chain of 3 nodes is not possible in the Red-Black tree. We can try any combination of colors and see if all of them violate the Red-Black tree property.

### NOT POSSIBLE

```
    black    |      black    |      black
    /        |      /        |      /
  black      |    red        |    red
  /          |    /          |    /
black        |  black        |  red
```

These examples all violate a property of an RB tree: Black-Height property, Black-Height property, Red Property

### POSSIBLE

```
    black       |    black
    /   \       |    /   \
black  black    |  red    red
```

## References

- boot.dev
- https://www.geeksforgeeks.org/introduction-to-red-black-tree/

Next -> [balancing-property-of-rb-trees](/wiki/balancing-property-of-rb-trees/)
