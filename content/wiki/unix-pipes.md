+++
title = "Unix Pipes"
author = "Lorenzo Drumond"
date = "2024-03-12T00:54:29"
tags = ["computer_science",  "named",  "programming",  "linux",  "inter_process_communication",  "socket",  "file_descriptors",  "anonymous",  "api",  "domain",  "network",  "pipes",  "unix"]
+++


# Unix Pipes
In unix, a _pipeline_ is a mechanism for inter process communication using message passing. A pipeline is a set of processes chained together by their standard streams, so that the output text of each process (_stdout_) is passed directly as input (_stdin_) to the next one. The second process is started as the first process is still executing, and they are executed concurrently.

In an anonymous pipeline, data written by one process is buffered by the OS until it's read by the next process, and this uni-directional channel disappears when the processes are completed.

In a named pipe, messages are passed to or from a pipe that is named by making it a file, and remains after the processes are completed.

# References
- https://en.wikipedia.org/wiki/Pipeline_(Unix)
