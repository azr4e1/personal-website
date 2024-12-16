+++
title = "Git commit history and logs"
author = "Lorenzo Drumond"
date = "2024-07-24T22:52:37"
tags = ["working_tree",  "computer_science",  "repository",  "boot_dev",  "programming",  "history",  "workflow",  "states",  "commit",  "stage",  "repos",  "github",  "logs",  "git_directory",  "git",  "primeagen",  "index"]
+++


# Git commit history and logs

A Git repo is a (potentially very long) list of commits,
where each commit represents the full state of the
repository at a given point in time.

The git log command shows a history of the commits in a
repository. This is what makes Git a version control
system. You can see:

- Who made a commit
- When the commit was made
- What was changed

Each commit has a unique identifier called a "commit hash".
This is a long string of characters that uniquely
identifies the commit:
5ba786fcc93e8092831c01e71444b9baa2228a4f

For convenience, you can refer to any commit or change
within Git by using the first 7 characters of its hash:
5ba786f.

While commit hashes are derived from their content changes,
there's also some other stuff that affects the end hash.
For example:

- The commit message
- The author's name and email
- The date and time
- Parent (previous) commit hashes

Each commit points to its previous commit, so that is's
always possible to reconstruct the whole commit history of
a single commit.

# References

Next -> [git-basic-plumbing](/wiki/git-basic-plumbing/)
