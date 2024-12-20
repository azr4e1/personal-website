+++
toc = true
title = "Git stage and commit"
author = "Lorenzo Drumond"
date = "2024-07-24T22:51:47"
tags = ["working_tree",  "computer_science",  "repository",  "boot_dev",  "programming",  "workflow",  "states",  "commit",  "stage",  "repos",  "github",  "git_directory",  "git",  "primeagen",  "index"]
+++



`git add <file|pattern>` will add your files to the _index_
or staging area. They will be tracked as staged.

## Committing

Once the files you want to save have been added to the
index, you can commit them to the git directory with

`git commit -m "message"`

To modify the message of the latest commit, do `git commit --amend -m "new message"`


## References

- boot.dev

Next -> [git-commit-history-and-logs](/wiki/git-commit-history-and-logs/)
