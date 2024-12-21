+++
toc = true
hideReply = true
title = "Git fast-forward merge"
author = "Lorenzo Drumond"
date = "2024-07-24T23:01:53"
tags = ["boot_dev",  "history",  "commit",  "github",  "git_directory",  "primeagen",  "packed",  "programming",  "plumbing",  "states",  "optimal",  "git",  "fast_forward",  "configuration",  "compressed",  "repos",  "merging",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs"]
+++



The simplest type of merge is a fast-forward merge. Let's say we start with this:

      C     delete_vscode
     /
A - B       main

and while on main, we run

```bash
git merge delete_vscode
```

Because delete_vscode has all the commits that main has, Git automatically does a fast-forward merge. It just moves the pointer of the "base" branch to the tip of the "feature" branch:

            other_branch
A - B - C   main

With a fast-forward merge, no merge commit is created.

Typical merge workflow:

1. Create a branch for a new change
2. Make the change
3. Merge the branch back into main (or whatever branch your team dubs the "default" branch)
4. Remove the branch
5. Repeat

To delete a branch

```bash
git branch -d <branch>
```


## References

- boot.dev

Next -> [git-rebase](/wiki/git-rebase/)
