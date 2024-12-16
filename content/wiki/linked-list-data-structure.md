+++
title = "Linked List Data Structure"
author = "Lorenzo Drumond"
date = "2024-08-18T23:17:24"
tags = ["structure",  "list",  "linked",  "memory",  "boot_dev",  "computer_science",  "queue",  "programming",  "data"]
+++


# Linked List Data Structure

A linked list is a linear data structure where elements are not stored next to each other in memory. The elements in a linked list are linked using pointers.

Linked lists can be contrasted with the native List (aka Array) in Python. Items in a normal list are stored next to each other in memory, and to get an item from a List we need to use the numbered index:

```python
item = my_list[1]
```

In a linked list, there are no indexes. We need to walk each node of the list because the only way to get the location of the second item in a linked list is to look at the pointer of the first item.

## Advantage over arrays

The structure of lists means each item has a fixed position, its index.
Contrast that with linked lists, where the position of each item is not fixed.
Each item knows the next item in the list by a pointer. So item positions don't
need to change, only change the pointers. You can insert and remove items
anywhere in the list without moving the entire list. If you have a pointer to
the tail, and to the head, adding and removing can be done in constant time,
O(1) by adjusting those pointers as needed.

For this reason, linked lists have a performance advantage over normal lists when implementing a queue (FIFO), in which elements are continuously inserted at the end and removed at the beginning of the list. But they perform similarly to a list when implementing a stack (LIFO), in which elements are inserted and removed at the end of the list.

# References

- boot.dev

Next -> [tree-data-structure](/wiki/tree-data-structure/)
