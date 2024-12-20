+++
toc = true
title = "Comparing JSON"
author = "Lorenzo Drumond"
date = "2024-02-21T00:38:00"
tags = ["marshalling",  "comparing",  "unit",  "computer_science",  "JSON",  "programming",  "code",  "automation",  "test"]
+++


In tests, we usually want to compare JSON strings while ignoring differences due to whitespace. A good way to do this is to normalise them both, by unmarshalling them and then re-marshalling, eliminating any irrelevant whitespace.

## References
- John Arundel, The Power of Go: Tools
