+++
toc = true
hideReply = true
title = "Fatalf and Errorf in Go testing"
author = "Lorenzo Drumond"
date = "2024-01-19T14:39:46"
tags = ["programming",  "testing",  "golang"]
+++


`testing.Fatalf` and `testing.Errorf` are two functions used in Go testing.

These are used when we need to mark a test case as failed.

The difference between these two is that the second one will mark a case as failed, but it will continue with the test. The first one will exit the test immediately: things are so broken that there's no point continuing.

## References
