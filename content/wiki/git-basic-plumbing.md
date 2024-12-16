+++
title = "Git basic plumbing"
author = "Lorenzo Drumond"
date = "2024-07-24T22:53:16"
tags = ["working_tree",  "computer_science",  "repository",  "boot_dev",  "programming",  "plumbing",  "history",  "workflow",  "states",  "commit",  "stage",  "repos",  "github",  "logs",  "git_directory",  "git",  "primeagen",  "index"]
+++


# Git basic plumbing

All the data in a Git repository is stored directly in the (hidden) .git directory. That includes all the commits, branches, tags, and other objects we'll learn about later.

Git is made up of objects that are stored in the .git/objects directory. A commit is just a type of object.

e.g.:

```bash
objects
├── 5b
│   └── 21d4f16a4b07a6cde5a3242187f6a5a68b060f
├── c7
│   └── b52ce6f71c145b4d2ae52dac5bea86adae0090
├── ef
│   └── 7e93fc61a91deecaa551c4707e4c3049af42c9
├── info
└── pack
```

Each commit object is compressed as a stream of bytes.

Git has a built-in plumbing command, `cat-file`, that allows us to see the contents of a commit without needing to futz around with the object files directly.

```bash
git cat-file -p c7b52ce6f71c145b4d2ae52dac5bea86adae0090
```

A _tree_ is git's way of storing a directory
A _blob_ is git's way of storing a file

```bash
$ git cat-file -p c7b52ce6f71c145b4d2ae52dac5bea86adae0090
tree 5b21d4f16a4b07a6cde5a3242187f6a5a68b060f
author Lorenzo Drumond <drumondlorenzo@posteo.net> 1721841147 +0100
committer Lorenzo Drumond <drumondlorenzo@posteo.net> 1721841147 +0100

A: add contents.md
```

We can see:

- The tree object
- The author
- The committer
- The commit message

However, we cannot see the contents of the contents.md file itself! That's because the tree object stores it.

Also, normally a commit would also have one or more _parents_, which are the commits this commit directly follows. However this is the first commit of the repo, so it doesn't have parents.


# References

- boot.dev

Next -> [git-tree-and-blob](/wiki/git-tree-and-blob/)
