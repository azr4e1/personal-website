+++
toc = true
title = "Git states"
author = "Lorenzo Drumond"
date = "2024-07-24T22:48:21"
tags = ["working_tree",  "computer_science",  "boot_dev",  "programming",  "states",  "github",  "git_directory",  "git",  "primeagen",  "index"]
+++


Git has three main states that your files can reside in:
modified, staged, and committed:

- Modified means that you have changed the file but have
not committed it to your database yet.
- Staged means that you have marked a modified file in its
current version to
  go into your next commit snapshot.
- Committed means that the data is safely stored in your
local database.

This leads us to the three main sections of a Git project:
the working tree, the staging area, and the
Git directory.

The _working tree_ is a single checkout of one version of
the project. These files are pulled out of the
compressed database in the Git directory and placed on disk
for you to use or modify.

The _staging area_ is a file, generally contained in your
Git directory, that stores information about
what will go into your next commit. Its technical name in
Git parlance is the “index”, but the phrase
“staging area” works just as well.

The _Git directory_ is where Git stores the metadata and
object database for your project. This is the
most important part of Git, and it is what is copied when
you clone a repository from another
computer.

A file can be in one of several states in a Git repository.
Here are a few important ones:

- untracked: Not being tracked by Git
- staged: Marked for inclusion in the next commit
- committed: Saved to the repository's history

The `git status` command shows you the current state of
your repo. It will tell you which files are untracked,
staged, and committed.


## References

- progit
- boot.dev

Next -> [git-workflow](/wiki/git-workflow/)
