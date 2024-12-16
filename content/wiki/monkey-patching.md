+++
title = "Monkey Patching"
author = "Lorenzo Drumond"
date = "2024-03-18T01:56:01"
tags = ["runtime",  "python",  "coding",  "monkey",  "computer_science",  "interpreted",  "class",  "on_the_fly",  "programming",  "method",  "patching"]
+++


# Monkey Patching
Monkey Patching is the dynamic replacement of attributes at runtime.

E.g.:
```python
from SomeOtherProduct.SomeModule import SomeClass

def speak(self):
  return "ook ook eee eee eee!"

SomeClass.speak = speak
```

The code for the method `speak` of the class `SomeClass` has been replaces at runtime.

Consider a class that has a method `get_data`. This method does an external lookup, and various methods in the class call it. However, in a unit test, you don't want to depend on the external data source - so you dynamically replace the `get_data` method with a stub that returns some fixed data.

Use caution when monkeypatching:

1. If anything else besides your test logic calls `get_data` as well, it will also call your monkey-patched replacement rather than the original.
2. If some variable or attributes exists that also points to the `get_data` function by the time it gets replaces, this alias will not change its meaning and will continue to point to the original `get_data`.

# References
- https://stackoverflow.com/questions/5626193/what-is-monkey-patching
