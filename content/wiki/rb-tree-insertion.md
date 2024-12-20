+++
toc = true
title = "RB-tree Insertion"
author = "Lorenzo Drumond"
date = "2024-08-21T11:59:26"
tags = ["programming",  "memory",  "boot_dev",  "bst",  "computer_science",  "binary",  "tree",  "structure",  "list",  "linked",  "balanced",  "rotation",  "search",  "data",  "insertion",  "red_black",  "unbalanced"]
+++



Insertion in a Red-Black Tree involves several steps to maintain the tree's properties.

## Standard Binary Insertion

Insert the new node as you would in a normal binary search tree (BST). This means finding the appropriate leaf position where the new node should be added, ensuring that the BST properties are maintained.

Initially, color the newly insert node red.

## Fixing Violations

After inserting a new node, the tree may violate the Red-Black properties. Specifically, the Red Property (two consecutive red nodes) might be violated. To fix this, we perform one of the following cases (assuming the newly inserted node is N)

### Case 1: Uncle is red

If the parent of N is red and the uncle (the sibling of the parent) is also red, then:

1. Color the parent and the uncle black
2. Color the grandparent red
3. Move N to the grandparent and check the properties again (may involve recursive fixing).

### Case 2: N’s uncle is black, and N is a right child

If N's parent is red and the uncle is black, and N is the right child of its parent:

1. Perform a left rotation on the parent of N.
2. Now N becomes the left child of its previous parent, reducing it to Case 3.


While the new node isn't the root of the tree and its parent is red:
If the parent is a right child:
Set uncle to the parent's sibling
If the uncle is red:
Change the uncle to black
Set the parent to black
Set the grandparent to red
Set the new node to be equal to the grandparent. This will allow the loop to continue the recoloring process up the tree
Otherwise, if the uncle is black:
If the new node is a left child:
Set the new node to its parent
Rotate the tree right around the new node
Set the parent to black
Set the grandparent to red
Rotate the tree left around the grandparent
Otherwise, if the parent is a left child:
Set uncle to the parent's sibling
If the uncle is red:
Change the uncle to black
Set the parent to black
Set the grandparent to red
Set the new node to its grandparent
Otherwise, if the uncle is black:
If the new node is a right child:
Set the new node to its parent
Rotate the tree left around the new node
Set the parent to black
Set the grandparent to red
Rotate the tree right around the grandparent
Set the root to black

## References

Next -> [hash-map-data-structure](/wiki/hash-map-data-structure/)
