+++
title = "Git configuration"
author = "Lorenzo Drumond"
date = "2024-07-24T22:58:02"
tags = ["boot_dev",  "history",  "commit",  "github",  "git_directory",  "primeagen",  "packed",  "programming",  "plumbing",  "states",  "optimal",  "git",  "configuration",  "compressed",  "repos",  "index",  "snapshot",  "working_tree",  "computer_science",  "repository",  "workflow",  "stage",  "logs"]
+++



git has one global configuration, and one local (per repo) configuration. They way to set or retrieve config values is via

```bash
git config
```

you can store any value in the config, but only some will be used by git

```bash
git config --add --global webflyx.ceo "ThePrimeagen"
git config --add --global webflyx.cto "TheLaneagen"
git config --add --global webflyx.evaluation "mid"

git config --list --local

git config --get <key>

git config --unset <key>

git config --remove-section <section>
```

git configuration allows for duplicate keys. To operate on all duplicate keys, you can use the variants `get-all` and `unset-all`

## Locations

There are several locations where Git can be configured. From more general to more specific, they are:

- system: /etc/gitconfig, a file that configures Git for all users on the system
- global: ~/.gitconfig, a file that configures Git for all projects of a user
- local: .git/config, a file that configures Git for a specific project
- worktree: .git/config.worktree, a file that configures Git for part of a project

If you set a configuration in a more specific location, it will override the same configuration in a more general location.



# References

- boot.dev

Next -> [git-branches](/wiki/git-branches/)
