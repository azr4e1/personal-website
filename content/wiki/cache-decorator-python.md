+++
title = "Cache decorator python"
author = "Lorenzo Drumond"
date = "2024-01-04T11:47:17"
tags = ["snippets",  "code",  "tricks",  "cache",  "caching",  "python",  "computer_science",  "programming"]
+++


# Cache decorator python
Memoize (cache) a function in Python by using this decorator:

```python
# use this decorator to preserve the
# name and docstring of the original function
from functools import wraps

def memoize(func):
    cache = {}
    @wraps(func)
    def wrapper(*args):
        if args in cache:
            return cache[args]
        else:
            result = func(*args)
            cache[args] = result

            return result

    return wrapper
```

# References
- [caching](/wiki/caching/)
