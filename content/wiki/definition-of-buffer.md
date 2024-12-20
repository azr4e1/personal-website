+++
title = "Definition of buffer"
author = "Lorenzo Drumond"
date = "2024-02-27T20:34:10"
tags = ["temporary",  "memory",  "computer_science",  "partial",  "concurrency",  "data",  "coding",  "programming",  "synchronization"]
+++


A buffer is a chunk of memory used to hold data. It's usually a single blob of memory that's loaded in one operation, and then emptied in one or more.

In general terms, buffer means _temporary storage_. Buffers are important in computing because interconnected devices and systems are seldom in sync with one another, so when information is sent from one system to another, it has somewhere to wait until the recipient system is ready.

Analogy:
  Imagine you're eating candy out of a bowl. You take one piece regularly. To prevent the bowl from running out, someone might refill the bowl before it gets empty, so that when you want to take another piece, there's candy in the bowl.

  The bowl acts as a buffer between you and the candy bag.

  If you're watching a movie online, the web service will continually download the next 5 minutes or so into a buffer, that way your computer doesn't have to download the movie as you're watching it (which would cause hanging).

  Buffers are required when producers and consumers operate at different rates. Candy is made in large batches but consumed in smaller quantities - the entire supply chain from manufacturer to mouth is a series of buffers.


# References
- https://stackoverflow.com/questions/648309/what-does-it-mean-by-buffer
