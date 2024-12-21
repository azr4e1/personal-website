+++
toc = true
hideReply = true
title = "merge sort algorithm"
author = "Lorenzo Drumond"
date = "2024-08-14T00:14:46"
tags = ["sorting",  "boot_dev",  "programming",  "binary_search",  "divide_and_conquer",  "algorithm",  "big_o",  "computer_science",  "notation"]
+++



Merge sort is a recursive sorting algorithm and it's quite a bit faster than bubble sort.

Merge sort is a divide and conquer algorithm.:

1. Divide: divide the large problem into smaller problems, and recursively solve the smaller problems
2. Conquer: Combine the results of the smaller problems to solve the large problem

In merge sort specifically we:

Divide:
1. Divide the array into two (equal) halves
2. Recursively sort the two halves

Conquer:
1. Merge the two halves to form a sorted array

## Algorithm

The algorithm consists of two separate functions, merge_sort and merge.

merge_sort() divides the input array into two halves, calls itself for the two halves, and then merges the two sorted halves.

The merge() function is used for merging two sorted lists back into a single sorted list. At the lowest level of recursion, the two "sorted" lists will each have a length of 1. Those single element lists will be merged into a sorted list of length two, and we can build from there.

### merge_sort() implementation

Input: A, a list of integers

1. If the length of A is less than 2, it's already sorted so return it
2. Split the input array into two halves down the middle
3. Call merge_sort() twice, once on each half
4. Return the result of calling merge(sorted_left_side, sorted_right_side) on the results of the merge_sort() calls

### merge() implementation

Inputs: A, B. Two lists of integers

1. Create a new "final" list of integers.
2. Set i and j equal to zero. They will be used to keep track of indexes in the input lists (A and B).
3. Use a loop to iterate over A and B at the same time. If an element in A is less than or equal to its respective element in B, add it to the final list and increment i. Otherwise, add the item in B to the final list and increment j.
4. After comparing all the items, there may be some items left over in either A or B (if one of the lists is longer than the other). Add those extra items to the final list.
5. Return the final list.


The recursive formula for merge sort time complexity is:

if T(n) is the time complexity of the algorithm for n elements, then it can be expressed as:

```
T(n) = 2T(n/2) + n
```

if we follow the formula replacing the left hand side with the formula one step lower, we can see that, for any `1 < n < log(n)`:

```
T(n) = 2^i * T(n/(2^i)) + i * n
```

For a list of length n, the algorithm will perform at most `log(n)` recursions, so worst case time complexity is O(n * log(n))

## References

Next -> [insertion-sort-algorithm](/wiki/insertion-sort-algorithm/)
