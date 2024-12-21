+++
toc = true
hideReply = true
title = "bubble sort algorithm"
author = "Lorenzo Drumond"
date = "2024-08-14T00:01:00"
tags = ["notation",  "boot_dev",  "algorithm",  "computer_science",  "big_o",  "binary_search",  "sorting",  "programming"]
+++



Bubble sort is a sorting algorithm.

Bubble sort is named for the way elements "bubble up" to the top of the list.

Bubble sort repeatedly steps through a slice and compares adjacent elements, swapping them if they are out of order. It continues to loop over the slice until the whole list is completely sorted.

```
Procedure bubble_sort(nums):
    Set swapping to True
    Set end to the length of nums
    While swapping is True:
        Set swapping to False
        For i from the 2nd element to end:
            If the (i-1)th element of nums is greater than the ith element:
                Swap the (i-1)th element and the ith element of nums
                Set swapping to True
        Reduce end by one
    Return nums
End Procedure
```

It has a time complexity of O(n^2). Worst case scenario is when a list is ordered in reverse. In that case, the number of steps taken is:

```
n + (n-1) + (n-2) + ... + 1 = n * (n-1) / 2 = O(n^2)
```

Best case scenario is O(n) (list is already sorted).

## References

- boot.dev

Next -> [merge-sort-algorithm](/wiki/merge-sort-algorithm/)
