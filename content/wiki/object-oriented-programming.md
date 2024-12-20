+++
toc = true
title = "Object Oriented Programming"
author = "Lorenzo Drumond"
date = "2024-07-02T13:51:29"
tags = ["programming",  "object_oriented",  "oop",  "computer_science"]
+++



Object-Oriented Programming (OOP) is a programming paradigm based on the concept of "objects," which can contain data and code. The data is in the form of fields (often known as attributes or properties), and the code is in the form of procedures (often known as methods). OOP aims to implement real-world entities like inheritance, hiding, and polymorphism, thereby creating reusable and modular code.

### Four Main Pillars of OOP

1. **Abstraction**:
   - **Definition**: Abstraction is the concept of hiding the complex implementation details and showing only the essential features of the object. It allows a programmer to focus on interactions at a high level without worrying about the internal complexities.
   - **Example**: When you use a car, you interact with its interfaces like the steering wheel, pedals, and dashboard, without needing to know the internal workings of the engine or the transmission system.

2. **Encapsulation**:
   - **Definition**: Encapsulation is the practice of bundling the data (attributes) and the methods (functions) that operate on the data into a single unit, known as a class. It also involves restricting direct access to some of the object's components, which is a means of preventing unintended interference and misuse of the data.
   - **Example**: A class `BankAccount` has private attributes like `balance` and methods like `deposit()` and `withdraw()`. The actual balance cannot be altered directly; it can only be modified using the methods provided.

3. **Inheritance**:
   - **Definition**: Inheritance is a mechanism where a new class (called a subclass or derived class) is created from an existing class (called a superclass or base class). The subclass inherits all the attributes and methods from the superclass, allowing for code reuse and the creation of a hierarchical relationship between classes.
   - **Example**: If you have a class `Animal` with methods like `eat()` and `sleep()`, you can create a subclass `Dog` that inherits these methods and also adds its own method `bark()`.

4. **Polymorphism**:
   - **Definition**: Polymorphism allows objects to be treated as instances of their parent class rather than their actual class. It is the ability of different objects to respond, each in its own way, to identical messages (methods). The most common use of polymorphism is when a parent class reference is used to refer to a child class object.
   - **Example**: Suppose there is a method `makeSound()` in the `Animal` class. The subclasses `Dog` and `Cat` can override this method to produce sounds like barking and meowing, respectively. When you call `makeSound()` on an `Animal` reference that points to a `Dog` object, it will produce a bark, and if it points to a `Cat` object, it will produce a meow.

   Polymorphism in programming is the ability to present the same interface (function or method signatures) for many different underlying forms (data types).

## Abstraction VS Encapsulation

- Abstraction is about creating a simple interface for complex behavior. It focuses on what's exposed
- Encapsulation is about hiding internal state. It focuses on tucking implementation details away so no one depends on them.

Abstraction is more about reducing complexity, encapsulation is more about maintaining integrity of system internals.

### Summary

Object-Oriented Programming enhances the modularity and reusability of code by organizing it around objects, which are instances of classes. The four main pillars—abstraction, encapsulation, inheritance, and polymorphism—each contribute to making software design more intuitive, flexible, and maintainable.

## Instance

In object-oriented programming, an instance is a concrete occurrence of any object. "Instance" is synonymous with "object" as they are each a particular value. "Instance" emphasizes the distinct identity of the object. The creation of an instance is called instantiation.

## References
