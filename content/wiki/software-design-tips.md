+++
title = "Software Design tips"
author = "Lorenzo Drumond"
date = "2024-04-23T20:13:12"
tags = ["software",  "design",  "tips",  "programming",  "wise"]
+++


# Software Design tips

## 1. Maintain one source of truth

Don't try to maintain a piece of state in two different locations within the same service. Reference the same state wherever you can.

If there is a piece of data that is derived from another value, then that value should be derived rather than stored, because storing could lead to synchronization bugs.

## 2. Please Repeat Yourself

Obsessing over abstracting and refactoring to create reusable object can lead to frankenstein code that does too many things. Sometimes a bit of code duplication is fine

## 3. Don't overuse mocks

Try to stay closer to real dependencies when possible. Test being a bit more heavyweight is worthwhile when it come to higher reliability.

Overusing mocks causes tests to be:

- harder to understand
- harder to maintain
- less assurance because reliability is only guaranteed IF the mocks are accurate

## 4. Minimize mutable state

Minimizing as much mutable state as possible gets you pretty far, because you don't have to worry about sync bugs, conflicting data and stale state.

It's important to figure out what is truly necessary storage-wise versus what can be derived on-the-fly. Don't throw caching and store everything in a database immediately.

# References
- https://read.engineerscodex.com/p/4-software-design-principles-i-learned?utm_source=tldrwebdev
