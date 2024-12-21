+++
toc = true
hideReply = true
title = "Python Storage VS Memory"
author = "Lorenzo Drumond"
date = "2024-08-20T08:40:34"
tags = ["storage",  "tricks",  "memory",  "python",  "tips",  "programming"]
+++



Understanding the difference between storage (disk) and memory (RAM) is crucial. Memory operations are faster but volatile, while storage is persistent but slower. In performance-critical applications, keeping frequently accessed data in memory and minimising storage I/O is essential for speed.

Example:

```python
import mmap

with open("data.txt", "r+b") as f:
    mmapped_file = mmap.mmap(f.fileno(), 0)
    print(mmapped_file.readline())
    mmapped_file.close()
```

Memory-mapped files allow you to treat disk storage as if it were memory, speeding up access times for large files.

## References
