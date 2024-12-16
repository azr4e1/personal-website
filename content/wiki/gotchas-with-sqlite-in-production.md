+++
title = "Gotchas with SQLite in Production"
author = "Lorenzo Drumond"
date = "2024-07-19T11:51:33"
+++


# Gotchas with SQLite in Production

SQLite is a database library that allows to store databases in files. It is higlhy scalable and keeps the application stack simple.

There are few gotchas:

## Configuration

It is not configured for multi-threaded access OOTB

```sqlite
PRAGMA foreign_keys = ON;
PRAGMA journal_mode=WAL;
PRAGMA synchronous=NORMAL;
PRAGMA mmap_size = 134217728;
PRAGMA journal_size_limit = 27103364;
PRAGMA cache_size=2000;
```

## No connections over the network

Single file design makes it more difficutl to connect to the database from another machine. This makes it hard to guarantee availability of the database.

## Network and ephemeral file systems

To solve above problem you could put the SQLite database on a network file system, but these don't have locks and you risk to get a corrupted database.

## Concurrency

SQLite limits writing to only one thread at a time, and the writing is per database.

To make this faster with SQLite, you can split your tables across multiple
databases. This way, each database can write to its set of tables in parallel.
Before going down this road, consider using MySQL or Postgres instead, as they
might make your application code simpler.

## Transactions

SQLite implements serializable transactions by using a write lock on the whole database for the duration of the transaction. This means that if you have a long-running transaction, you are blocking all other transactions and write operations for the duration of the transaction.

When working with transactions you should always use `BEGIN IMMEDIATE` instead of a regular `BEGIN`. The reason for this is that a read transaction cannot be upgraded to a write transaction, so you’ll be seeing `database is locked` errors not retrying until the `BUSY_TIMEOUT` runs out.

## Backups

You might be tempted to copy/paste the SQLite file to create a backup, but this is a bad idea as it can corrupt the backup file. Instead, you should always use the `VACUUM INTO` command to create a full backup.

## Migrations

SQLite has limited support for the `ALTER` statement, which relational schema migrations rely upon. Only adding and dropping columns and renaming tables are supported. This can make your database migrations more complicated.

# References
- https://blog.pecar.me/sqlite-prod
