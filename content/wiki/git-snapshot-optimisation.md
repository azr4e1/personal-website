+++
title = "Git snapshot optimisation"
author = "Lorenzo Drumond"
date = "2024-07-24T22:56:31"
tags = ["boot_dev",  "history",  "commit",  "github",  "git_directory",  "primeagen",  "packed",  "programming",  "plumbing",  "states",  "optimal",  "git",  "compressed",  "repos",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs"]
+++


# Git snapshot optimisation

Git stores an entire snapshot of files on a per-commit level.

A snapshot is the state of the working tree at the commit the commit was taken.

While it's true that Git stores entire snapshots, it does have some performance optimizations so that your .git directory doesn't get too unbearably large.

- Git compresses and packs files to store them more efficiently.
- Git deduplicates files that are the same across different commits. If a file doesn't change between commits, Git will only store it once.


# References

- boot.dev

Next -> [git-configuration](/wiki/git-configuration/)
