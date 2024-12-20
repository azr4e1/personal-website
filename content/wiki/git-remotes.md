+++
toc = true
title = "Git remotes"
author = "Lorenzo Drumond"
date = "2024-07-24T23:51:08"
tags = ["boot_dev",  "undoing",  "history",  "commit",  "reset",  "rebase",  "github",  "git_directory",  "primeagen",  "delete",  "packed",  "programming",  "plumbing",  "states",  "fetch",  "push",  "optimal",  "git",  "fast_forward",  "configuration",  "compressed",  "repos",  "merging",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs",  "remote"]
+++



In git, another repo is called a "remote." The standard convention is that when you're treating the remote as the "authoritative source of truth" (such as GitHub) you would name it the "origin".

By "authoritative source of truth" we mean that it's the one you and your team treat as the "true" repo. It's the one that contains the most up-to-date version of the accepted code.

```bash
git remote add <name> <uri>
```

To get the content of the remote, we need to _fetch_ it:

```bash
git fetch origin
```

This downloads copies of all the contents of the .git/objects directory (and other book-keeping information) from the remote repository into your current one.

Fetching won't populate your working dir, nor your local commits. The remote's commits are kept separate.

You can look at the look of a remote you fetched with

```bash
git log remote/branch
```

### Merge

In order to bring the data from the remote into our local repo, we need to merge what we fetched.

Just as we can merge branches within a single local repo, we can also merge branches between local and remote repos.

```bash
git merge remote/branch
```

### Push

The git push command pushes (sends) local changes to any "remote". For example, to push our local main branch's commits to the remote origin's main branch we would run:

```bash
git push origin main
```

You can also push a local branch to a remote with a different name:

```bash
git push origin <localbranch>:<remotebranch>
```

You can also delete a remote branch by pushing an empty branch to it:

```bash
git push origin :<remotebranch>
```

### Pull

You can do fetch and merge in a single command:

```bash
git pull [<remote>/<branch>]
```

## References

- boot.dev

Next -> [gitignore](/wiki/gitignore/)
