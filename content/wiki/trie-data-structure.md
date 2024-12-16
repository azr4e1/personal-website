+++
title = "Trie Data Structure"
author = "Lorenzo Drumond"
date = "2024-08-22T09:48:52"
tags = ["data",  "function",  "memory",  "structure",  "search",  "computer_science",  "boot_dev",  "hash",  "trie",  "programming"]
+++


# Trie Data Structure

At its core, a trie is often represented as a nested tree of dictionaries where each key is a character, and it maps to the next character in the word. For example, the words "hello", "help" and "hi" would be represented as:

```
{
  "h": {
    "e": {
      "l": {
        "l": {
          "o": {
            "*": True
          }
        },
        "p": {
          "*": True
        }
      }
    },
    "i": {
      "*": True
    }
  }
}
```

A trie is also often referred to as a "prefix tree" because it can be used to efficiently find all of the words that start with a given prefix.

You would typically be interested in a trie if you want to do some kind of prefix matching. For example, if you wanted to find all the words in a dictionary that start with a given prefix, a trie works great!

Remember, a hashtable is only good for exact matches. A trie allows you to look up all of the words that match a given prefix.

Tries are super efficient when it comes to finding substrings in a large document of text.

# References

Next -> [graph-data-structure](/wiki/graph-data-structure/)
