+++
toc = true
title = "Git branches"
author = "Lorenzo Drumond"
date = "2024-07-24T22:58:33"
tags = ["boot_dev",  "history",  "commit",  "github",  "git_directory",  "primeagen",  "packed",  "programming",  "plumbing",  "states",  "optimal",  "git",  "configuration",  "compressed",  "repos",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs"]
+++



A Git branch allows you to keep track of different changes separately.

When you make a commit, Git stores a commit object that contains a pointer to the snapshot of the
content you staged. This object also contains the author’s name and email address, the message that
you typed, and pointers to the commit or commits that directly came before this commit (its parent
or parents): zero parents for the initial commit, one parent for a normal commit, and multiple
parents for a commit that results from a merge of two or more branches.

A branch is just a named pointer to a specific commit. When you create a branch, you are creating a new pointer to a specific commit. The commit that the branch points to is called the tip of the branch.

Because a branch is just a pointer to a commit, they're lightweight and "cheap" resource-wise to create. When you create 10 branches, you're not creating 10 copies of your project on your hard drive.

```bash
git branch -m oldname newname

git branch new_branch

git switch -c new_branch

git switch -c new_branch <HASH>
```

The switch command allows you to switch branches, and the -c flag tells Git to create a new branch if it doesn't already exist.

When you create a new branch, it uses the current commit you are on as the branch base.

Git stores all its information in files in the .git subdirectory at the root of your project, even information about branches. The "heads" (or "tips") of branches are stored in the .git/refs/heads directory. If you cat one of the files in that directory, you should be able to see the commit hash that the branch points to.

refs are pointers to commits. All branches are refs, but not all refs are branches.


## References

- boot.dev

Next -> [git-merging](/wiki/git-merging/)
