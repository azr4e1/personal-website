+++
title = "quicksort algorithm"
author = "Lorenzo Drumond"
date = "2024-08-15T10:18:25"
tags = ["computer_science",  "divide_and_conquer",  "algorithm",  "notation",  "sorting",  "binary_search",  "programming",  "boot_dev",  "big_o"]
+++



Quick sort is an efficient sorting algorithm that's widely used in production sorting implementations. Like merge sort, quick sort is a divide and conquer algorithm.

# Divide

- Select a pivot element that will preferably end up close to the center of the sorted pack
- Move everything onto the "greater than" or "less than" side of the pivot
- The pivot is now in its final position
- Recursively repeat the operation on both sides of the pivot

# Conquer

- The array is sorted after all elements have been through the pivot operation


# Pseudocode

The process is started with quick_sort(A, 0, len(A)-1)

## quick_sort(nums, low, high)

If low is less than high:

1. Partition the input list using the partition function
2. Recursively call quick_sort on the left side of the partition
3. Recursively call quick_sort on the right side of the partition

## partition(nums, low, high)

1. Set pivot to the element at index high
2. Set i to low
3. For each index (j) from low to high
      1. If the element at index j is less than the pivot:
          1. Swap the element at index i with the element at index j
          2. Increment i by 1
4. Swap the element at index i with the element at index high
5. Return the index i

# Time Complexity

On average, quicksort has a Big O of O(n*log(n)). In the worst case, and assuming we don't take any steps to protect ourselves, it can break down to O(n^2).

partition() has a single for-loop that ranges from the lowest index to the highest index in the array. By itself, the partition() function is O(n). The overall complexity of quicksort is dependent on how many times partition() is called.

In the worst case, the input is already sorted. An already sorted array results in the pivot being the largest or smallest element in the partition each time. When this is the case, partition() is called a total of n times.

In the best case, the pivot is the middle element of each sublist which results in log(n) calls to partition().

This means the time complexity of quicksort is O(n^2) in this base scenario. We can fix it by applying some adjustments; we can use two approaches:

1. shuffle input randomly before sorting. O(n)
2. find the median. O(1)

The shuffling scenario is easy to implement and works all the times. It is very unlikely to shuffle a list into a sorted state.


This approach has the advantage that it can't break down to O(n^2) time because we are guaranteed to never use the worst item in the partition as the pivot. That said, it can still be slower because a true median isn't used.

# References

- boot.dev

Next -> [selection-sort-algorithm](/wiki/selection-sort-algorithm/)
