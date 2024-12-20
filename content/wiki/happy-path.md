+++
toc = true
title = "Happy path"
author = "Lorenzo Drumond"
date = "2024-01-28T16:36:34"
tags = ["flow",  "basics",  "errors",  "programming",  "if",  "golang",  "normal",  "design",  "control",  "happy_path",  "statement"]
+++


Often, the control flow of a function has a “normal” path, the path it takes if there are no unusual or exceptional circumstances (errors, for example). This is sometimes called the happy path: it’s what happens if everything goes right.

When deciding how to write your if statements, this is a helpful rule:

  Left-align the happy path. It minimises indentation and provides a clear visual guide to the reader about how you expect the program to proceed.

## References
- John Arundel, For the Love of Go
