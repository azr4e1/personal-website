+++
toc = true
title = "Constructors in OOP"
author = "Lorenzo Drumond"
date = "2024-07-27T17:00:22"
tags = ["programming",  "OOP",  "boot_dev"]
+++



In class-based, object-oriented programming [object-oriented-programming](/wiki/object-oriented-programming/), a constructor (abbreviation: ctor) is a special type of function called to create an object. It prepares the new object for use, often accepting arguments that the constructor uses to set required member variables.

A constructor resembles an instance method, but it differs from a method in that it has no explicit return type, it is not implicitly inherited and it usually has different rules for scope modifiers. Constructors often have the same name as the declaring class. They have the task of initializing the object's data members and of establishing the invariant of the class, failing if the invariant is invalid. A properly written constructor leaves the resulting object in a valid state. Immutable objects must be initialized in a constructor.

## References
