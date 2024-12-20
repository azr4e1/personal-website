+++
title = "Git tips and uses"
author = "Lorenzo Drumond"
date = "2024-07-24T15:27:48"
tags = ["computer_science",  "boot_dev",  "programming",  "github",  "git",  "primeagen"]
+++



Git is the distributed version control system (VCS). Nearly every developer in the world uses it to manage their code. It has quite a monopoly on VCS. Developers use Git to:

- Keep a history of their code changes
- Revert mistakes made in their code
- Collaborate with other developers
- Make backups of their code
- And much more

# Basics

The major difference between Git and any other VCS (Subversion and friends included) is the way
Git thinks about its data. Conceptually, most other systems store information as a list of file-based
changes.

Git doesn’t think of or store its data this way. Instead, Git thinks of its data more like a series of
snapshots of a miniature filesystem. With Git, every time you commit, or save the state of your
project, Git basically takes a picture of what all your files look like at that moment and stores a
reference to that snapshot. To be efficient, if files have not changed, Git doesn’t store the file again,
just a link to the previous identical file it has already stored. Git thinks about its data more like a
stream of snapshots.

Everything in Git is checksummed before it is stored and is then referred to by that checksum. This
means it’s impossible to change the contents of any file or directory without Git knowing about it.
This functionality is built into Git at the lowest levels and is integral to its philosophy. You can’t lose
information in transit or get file corruption without Git being able to detect it.

Git stores everything in its database not by file name but by the hash value of its contents.


# References

- boot.dev
- progit

Next -> [git-states](/wiki/git-states/)
