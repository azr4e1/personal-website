+++
toc = true
hideReply = true
title = "Heap and Stack"
author = "Lorenzo Drumond"
date = "2023-12-21T17:49:37"
tags = ["programming",  "heap",  "computer_science",  "memory",  "garbage_collector",  "stack"]
+++


Memory of an application running is stored in three main parts:
- Machine Code: application code is converted into instruction the computer can understand
- Heap
- Stack

## Stack
Portion of memory structured as a stack (LIFO - Last In, First Out, [stack-data-structure](/wiki/stack-data-structure/)).

In the context of an application we have the _call stack_, which keeps track of the methods
that control should be returned to after the current method is finished: whenever a new method
is called, that method is going to be added to the top of the call stack until it's finished
executing.

The call stack also keeps track of the local variables in the methods.

## Heap
Heap is another data structure in memory, that allows to store variables in any order.

The heap has more overhead to access variables, but they can be accessed at any order
and at any given time.

The heap is used for data that's going to outlive what's on the call stack, like
a variable that needs to be added across different methods.


## value and reference types
Value type are stored as is in memory, while reference type only store a pointer
to the actual value in memory (e.g. array variable is actually a pointer to
the start of an array).

The values for reference types are always stored on the heap.

The values for value types are store in the stack if they are local, on the
heap if they are meant to be more accessible (global, variables of a class, etc)


A local value is not accessible outside the method because it's stored in the stack.
When the method is finish, it and its local variables are dropped from the stack.

If we define a reference variable inside a method, its pointer will be stored
in the stack, while the actual value is stored in the heap. However we
still can't access it outside the method because its pointer is gone
when the method is finished.

This means that lots of blocks of memory in the heap are left unreferenced,
which are taken care by the garbage collector: it checks the heap for any unreferenced
block of memory and frees it ([garbage-collectors](/wiki/garbage-collectors/)).

## Exceptions
Anonymous functions in some languages can be created and called inside another method.
They have access to the other variables declared in the method, therefore those
variables need to be temporarily stored in the heap until the anonymous function
has finished, and then they'll be garbage collected

Aynchronous methods run in their own thread. Multiple thread will have their own
call stack. Since each thread can finish independently from each other, to be
able to access the results of the asynchronous routine, it needs to be stored
on the heap.

## References
