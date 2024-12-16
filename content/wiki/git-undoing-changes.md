+++
title = "Git undoing changes"
author = "Lorenzo Drumond"
date = "2024-07-24T23:26:46"
tags = ["boot_dev",  "undoing",  "history",  "commit",  "reset",  "rebase",  "github",  "git_directory",  "primeagen",  "packed",  "programming",  "plumbing",  "states",  "optimal",  "git",  "fast_forward",  "configuration",  "compressed",  "repos",  "merging",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs"]
+++


# Git undoing changes

One of the major benefits of using Git is the ability to undo changes. There
are a lot of different ways to do this.

## Soft Reset

the index (staged but not committed changes) and the worktree (unstaged and not
committed changes).

```bash
git reset --soft HEAD~1
```

The --soft option is useful if you just want to go back to a previous commit,
but keep all of your changes. Committed changes will be uncommitted and staged,
while uncommitted changes will remain staged or unstaged as before. HEAD~1
refers to the commit 1 before the current commit.

## Hard reset

If we don't want to keep the changes, we can do a hard reset:

```bash
git reset --hard COMMITHASH
```

# References

- boot.dev

Next -> [git-remotes](/wiki/git-remotes/)
