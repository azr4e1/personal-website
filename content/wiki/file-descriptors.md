+++
title = "File Descriptors"
author = "Lorenzo Drumond"
date = "2024-03-12T00:39:59"
tags = ["file",  "read",  "linux",  "computer_science",  "write",  "api",  "programming",  "descriptors",  "Unix"]
+++


In Unix, a _file descriptor_ is a __process-unique__ identifier (_handle_) for a file or other input/output resource, such as a [Unix pipes](/wiki/Unix pipes/) or network socket.

File descriptors have non-negative integer values.

File descriptors index into a per-process file descriptor table maintained by the kernel, that in turns indexes into a system-wide table of files opened by all process, called the __file table__. This table records the _mode_ with which the file was opened. It also indexes into a third table called the __inode table__ that describes the actual underlying files.

To perform input or output, the process passes the file descriptor to the kernel through a system call, and the kernel will access the file on behalf of the process.

In other words, when you open a file, the operating system creates an entry to represent that file and store the information about that opened file. These entries are represented by integers. This entry number is the file descriptor. A network socket or a unix domain socket is also represented by integers, called socket descriptors. So it is just an integer that uniquely represents an opened file for the process.

When a file is closed, the descriptor associated gets freed and is available for further allotment. This is why you can run out of file descriptors, if you open a lot of files at once, which will prevent unix systems from running, since they open descriptors in `/proc`

Remember that FD are bound to a process ID.


# References
- https://en.wikipedia.org/wiki/File_descriptor
- https://stackoverflow.com/questions/5256599/what-are-file-descriptors-explained-in-simple-terms
