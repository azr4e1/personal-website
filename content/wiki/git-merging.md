+++
toc = true
title = "Git merging"
author = "Lorenzo Drumond"
date = "2024-07-24T23:00:19"
tags = ["boot_dev",  "history",  "commit",  "github",  "git_directory",  "primeagen",  "packed",  "programming",  "plumbing",  "states",  "optimal",  "git",  "configuration",  "compressed",  "repos",  "merging",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs"]
+++



Once you're happy with your changes, you'll want to merge them back into the main branch so that they make their way into the final product.

A - B - C    main
   \
    D - E    other_branch

If you merge other_branch into main, Git combines both branches by creating a new commit that has both histories as parents. In the diagram below, F is a merge commit that has C and E as parents. F brings all the changes from D and E back into the main branch.

A - B - C - F    main
   \     /
    D - E        other_branch

```bash
git log --oneline --graph --all
```

How does merging happen?

Let's say we start with this:

A - B - C    main
   \
    D - E    vimchadsonly

And we merge vimchadsonly into main by running this while on main:

```bash
git merge vimchadsonly
```

The merge will:

- Find the "merge base" commit, or "best common ancestor" of the two branches. In this case, "A".
- Replays the changes from vimchadsonly onto main starting from the best common ancestor (so, starting from "A", apply all changes of main into a new commit "F", and then all changes from vimchadsonly on "F" as if were "A")
- Records the result as a new commit, in our case "F".
- "F" is special because it has two parents, "C" and "E".

After:

A - B - C - F    main
   \     /
    D - E        vimchadsonly




## References

- boot.dev

Next -> [git-fast-forward-merge](/wiki/git-fast-forward-merge/)
