+++
toc = true
hideReply = true
title = "Graph Data Structure"
author = "Lorenzo Drumond"
date = "2024-08-22T23:22:57"
tags = ["computer_science",  "search",  "function",  "structure",  "boot_dev",  "hash",  "graph",  "programming",  "data",  "memory"]
+++



A graph is an abstract data type that represents a set of vertices and the edges that connect those vertices.

When an algorithm traverses a graph, it typically moves across the edges. For example, the traveling salesman problem [non-deterministic-polynomial-time](/wiki/non-deterministic-polynomial-time/) is best represented using a graph data structure.

## Properties

1. Graphs can have between 0 and n vertices, there's no maximum
2. Graphs can have between 0 and n(n - 1)/2 edges, where n is the number of vertices
3. Vertices don't need to be connected at all (they can have no edges). That said, they may be unreachable if this is the case
4. An edge connects exactly 2 vertices, and there can't be 2 edges between the same two vertices.
5. Some graphs (called weighted graphs) assign a "cost" to each edge. For example, if a graph represented a geographical map of cities in the real world, the cities would be vertices and the edges would be roads. The weight on the roads could be their lengths.


## References

- boot.dev

Next -> [adjacency-matrix-for-graphs](/wiki/adjacency-matrix-for-graphs/)

Next -> [types-of-graph](/wiki/types-of-graph/)
