+++
toc = true
hideReply = true
title = "Quick Python tips and facts"
author = "Lorenzo Drumond"
date = "2024-07-22T14:22:05"
tags = ["wise",  "computer_science",  "scope",  "boot_dev",  "None",  "tips",  "python",  "programming"]
+++



## None object

None is useful as a placeholder. If you know you need to capture a value into a variable, but don't have the value yet, you can create the variable and assign it to `None`. NB: None has type `NoneType`.

When printint, it can be useful to print `type(None)` instead of just none, as the latter would print exactly the same as `"None"`.

## None return

When no return value is specified in a function, it will automatically return None. For example, maybe it's a function that prints some text to the console, but doesn't explicitly return a value.

## main function

The `main()` function is a convention used in many programming languages to specify the entry point of an application. By defining a single `main` function, and only calling `main()` at the end of the entire program we ensure that all of our functions are defined before they're called.

## Scope

Scope refers to where a variable or function name is available to be used. For example, when we create variables in a function (such as by giving names to our parameters), that data is not available outside of that function.

In Python, variables are scoped within their functions. So, for example, defining a variable inside an if block or a for loop block will make the variable available to the function the block is defined in, but not to the outer function/global scope.

## Division of integers

In Python, numbers without a decimal part are called integers.

A float is the number type that allows for decimal values.

When dividing two integers in Python, the result is actually a `float`.

## Scientific notation

You can represent numbers in scientific notation like so: `1024 = 1.024e3`

## Underscore separators

You can make big numbers more legible using underscores: `100000000000000000 = 100_000_000_000_000_000`

## binary conversion

The built-in int function can convert a binary string to an integer. It takes a second argument that specifies the base of the number (binary is base 2). For example:

```python
binary_string = "100"

num = int(binary_string, 2)
```

## Infinity

The built-in `float()` function can create a numeric floating point value of negative infinity. Because every value will be greater than negative infinity, we can use it to help us accomplish our goal of finding the max value.

```python
negative_infinity = float("-inf")
positive_infinity = float("inf")
```

## Dictionaries order

As of Python version 3.7, dictionaries are ordered. In Python 3.6 and earlier, dictionaries were unordered.

Because dictionaries are ordered, the items have a defined order, and that order will not change.

Unordered means that the items do not have a defined order, so you couldn't refer to an item by using an index.

The takeaway is that if you're on Python 3.7 or later, you'll be able to iterate over dictionaries in the same order every time.

## Classes

A class is a special type of value in an object-oriented programming language like Python. It's similar to a dictionary in that it usually stores other types inside itself.

Just like a string, integer or float, a class is a type, but instead of being a built-in type, your classes are custom types that you define.

An object is just an instance of a class type.

"Classes" are custom new types that we define as the programmer. Each new instance of a class is an "object".

One thing that makes classes cool is that we can define methods on them. A method is a function that's tied directly to a class and has access to all its properties.

Methods are nested within the class declaration. Their first parameter is always the instance of the class that the method is being called on. By convention, it's called "self". Because self is a reference to the object, you can use it to read and update the properties of the object.

Notice that methods are called directly on an object using the dot operator.

```pythonb
my_object.my_method()
```

### methods vs functions

A method has all the same properties as a function, but it is tied directly to a class and has access to all its properties.

A method automatically receives the object it was called on as its first parameter.

A method can operate on data that is contained within the class. In other words, you won't always see all the "outputs" in the return statement because the method might just mutate the object's properties directly.

## OOP VS Functional

Because functions are more explicit, some developers argue that functional programming [functional-programming]] is better than object-oriented programming [[object-oriented-programming](/wiki/functional-programming]] is better than object-oriented programming [[object-oriented-programming/). In reality, neither paradigm is "better", and the best developers learn and understand both styles and use them as they see fit.

For example, while methods are more implicit and often make code more difficult to read, they also make it easier to group a program's data and behavior in one place, which can lead to a more organized codebase.

## Constructors

In Python, if you name a method `__init__`, that's the constructor and it is called when a new object is created. [constructors-in-oop](/wiki/constructors-in-oop/)

## Instance vs Class variables

Instance variables vary from object to object and are _declared in the constructor_.

Class variables remain the same between instances of the same class and are _declared at the top level of a class definition_.

## Encapsulation in Python

Encapsulation is the practice of grouping all data and method related to each other in a single unit like a class. It also enforces the ability to read or not some of that data by the code calling the class. [object-oriented-programming](/wiki/object-oriented-programming/)

Python is a dynamic language, and that makes it difficult for the interpreter to enforce some of the safeguards that languages like Go do. That's why encapsulation in Python is achieved mostly by convention rather than by force.

Prefixing methods and properties with a double underscore is a strong suggestion to the users of your class that they shouldn't be touching that stuff. If a developer wants to break convention, there are ways to get around the double underscore rule.

## Args and kwargs

In Python, *args and **kwargs allow a function to accept and deal with a variable number of arguments.

- *args collects positional arguments into a tuple
- **kwargs collects keyword (named) arguments into a dictionary

```python
def print_arguments(*args, **kwargs):
    print(f"Positional arguments: {args}")
    print(f"Keyword arguments: {kwargs}")

print_arguments("hello", "world", a=1, b=2)
```

Any positional arguments must come before keyword arguments.


## References
- boot.dev
