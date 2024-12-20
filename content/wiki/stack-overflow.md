+++
toc = true
title = "Stack Overflow"
author = "Lorenzo Drumond"
date = "2023-12-21T17:59:15"
tags = ["overflow",  "stack",  "computer_science",  "programming",  "memory"]
+++


This is a phenomenon that happens when the call stack ([heap-and-stack](/wiki/heap-and-stack/)) of an application exceeds its set limits.

A stack ([stack-data-structure](/wiki/stack-data-structure/)) is a data structure similar to a pile of books. The call stack contains
the functions and methods of the application, and their local variables, in order of call.

The size of the stack depends on many factor, like language, machine, threads and memory.

When a program attempts to use more space than is available on the call stack, the stack is said to
_overflow_, resulting in a crash.


For simplicity's sake, let's just focus on the runtime's call frames to understand why a stack is used. A call frame is just an area of memory that is set aside by the language to keep track of a function call in progress. Call frames are born when a function is called, and they die when a function returns.

In other words:

1. Calling a function pushes a call frame onto the runtime stack
2. Returning from a function pops the top frame off the stack.


A stack overflow occurs if the number of calls in the stack exceeds the limit. The limit depends on many factors, including the programming language, machine architecture, multi-threading, and the amount of available memory. When a program goes over the limit, that stack is said to overflow which typically results in the program crashing.

Python, unlike lower-level languages like C, prevents the interpreter stack from growing so large that a stack overflow occurs. Instead, a runtime exception is thrown.

## References

Next -> [queue-data-structure](/wiki/queue-data-structure/)
