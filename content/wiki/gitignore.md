+++
toc = true
title = "gitignore"
author = "Lorenzo Drumond"
date = "2024-07-25T00:26:01"
tags = ["boot_dev",  "undoing",  "history",  "commit",  "reset",  "rebase",  "github",  "git_directory",  "primeagen",  "delete",  "packed",  "programming",  "plumbing",  "states",  "fetch",  "push",  "optimal",  "git",  "fast_forward",  "configuration",  "compressed",  "repos",  "merging",  "gitignore",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs",  "remote"]
+++



A .gitignore file solves the problem of when we want to put files in our project's directory, but we don't want to track them with Git.

Here's an example .gitignore file, which exists at the root of a repo:

```
node_modules
```

This will ignore every path containing node_modules as a "section" (directory name or file name). It ignores:

    node_modules/code.js
    src/node_modules/code.js
    src/node_modules

It does not ignore:

    src/node_modules_2/code.js
    env/node_modules_3


It's fairly common to have multiple .gitignore files in different directories
throughout a project. A nested .gitignore file only applies to the directory
it's in and its subdirectories.

## Patterns

gitignore supports patterns.

The * character matches any number of characters except for a slash (/). For example, to ignore all .txt files, you could use the following pattern:

	*.txt

Patterns starting with a / are anchored to the directory containing the .gitignore file. For example, this would ignore a main.py in the root directory, but not in any subdirectories:

	/main.py

You can negate a pattern by prefixing it with an exclamation mark (!). For example, to ignore all .txt files except for important.txt, you could use the following pattern:

	*.txt
	!important.txt

You can add comments to your .gitignore file by starting a line with a #.

## References

- boot.dev
