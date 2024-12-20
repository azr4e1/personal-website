+++
toc = true
title = "Btrfs introduction"
author = "Lorenzo Drumond"
date = "2024-04-22T18:05:58"
tags = ["introduction",  "linux",  "fs",  "filesystem",  "btrfs",  "cow",  "on",  "write",  "copy"]
+++



## What is a filesystem

A filesystem allows your PC to find the data that is stores on disk.

Any type of non-volatile storage device is a huge collection of storage blocks.

Blocks are the most granular addressable storage unit. Every file on the PC is stored across one or more blocks. A block is typically 4096 bytes.

Filesystems allow us to find the content of our files from the vast amount of storage blocks, via the so-called _inodes_.

An inode contains information about a file (but not the filename) in a
specially formatted storage block. The inode contains the metadata of the
file. The filename is like a pointer to its inode, which in turn will point
to the blocks containing the file actual data.

The structure of inodes is vital to every filesystem.

## Copy-on-Write Filesystems

Btrfs is a CoW (copy-on-write) filesystem. When a file is changed and
written back to disk, it is not written back where it was before. Instead,
it is copied and stored in an entirely new location on disk. Btrfs makes
sure that the data is written to previously unoccupied blocks.

The advantage is that a history of the modified and edited files can be kept. Btrfs will keep the reference to the old file somewhere where it can be easily accessed, called a _snapshot_.

Filesystem metadata are also CoW: the filesystem is never overwritten, so
an interruption can't leave it in a partially written state.

 ## Copy-on-Write for files

Filenames are like pointers to the inodes of the files they belong to.
Upon writing a file, Btrfs creates a copy of the modified file content
(data), along with a new inode (the metadata), and then makes your
filename point to this new inode. The old one remains untouched.

One thing important to keep in mind is that a CoW filesystem keeps the old
blocks intact and writes changed data and metadata somewhere new; only the
changed data blocks are copied, not the whole file.

If there are no more unused blocks to write new content to, Btrfs will
reclaim space from data blocks occupied by old file versions (unless part
of a snapshot).

## Copy-on-Write for folders

A folder is a special type of file: the filesystem interprets the
underlying content directly. A folder has some metadata associated with it
(inode), that governs access permissions or modification time. In its
simplest form, the data stored in a folder is a list of references to
inodes, where each inode is in turn another file or folder.

When the new inode of a modified file is created, to make it show up in
the filesystem, all the directories entries containing a reference to it
are updates as well.

This is a recursive process, since a folder is itself a file with an
inode, that occurs all the way up the filesystem tree, until root.
Therefore the filesystem tree can be traversed in its previous state.

## References
- https://fedoramagazine.org/working-with-btrfs-general-concepts/
