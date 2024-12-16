+++
title = "Rotation in RB-trees"
author = "Lorenzo Drumond"
date = "2024-08-21T11:49:10"
tags = ["rotation",  "linked",  "data",  "search",  "list",  "binary",  "computer_science",  "structure",  "boot_dev",  "programming",  "bst",  "red_black",  "memory",  "unbalanced",  "tree",  "balanced"]
+++


# Rotation in RB-trees

Rotations are operations that change the structure of the tree while maintaining the binary search tree property.

Rotations are fundamental operations in maintaining the balanced structure of a Red-Black Tree (RBT). They help to preserve the properties of the tree, ensuring that the longest path from the root to any leaf is no more than twice the length of the shortest path.

There are two types of rotation:

## Left Rotation

A left rotation at node x moves x down to the left and its right child y up to take x’s place.

```
Before Rotation:

    x
     \
      y
     / \
    a   b

After Left Rotation:

      y
     / \
    x   b
     \
      a
```

1. Set y to be the right child of x.
2. Move y’s left subtree to x’s right subtree.
3. Update the parent of x and y.
4. Update x’s parent to point to y instead of x.
5. Set y’s left child to x.
6. Update x’s parent to y.

## Right Rotation

A right rotation at node x moves x down to the right and its left child y up to take x’s place.

```
Befor Right Rotation:

      x
     /
    y
   / \
  a   b

After Right Rotation:

    y
   / \
  a   x
     /
    b
```

1. Set y to be the left child of x.
2. Move y’s right subtree to x’s left subtree.
3. Update the parent of x and y.
4. Update x’s parent to point to y instead of x.
5. Set y’s right child to x.
6. Update x’s parent to y.

# References

- chatGPT
- https://www.geeksforgeeks.org/introduction-to-red-black-tree/

Next -> [rb-tree-insertion](/wiki/rb-tree-insertion/)
