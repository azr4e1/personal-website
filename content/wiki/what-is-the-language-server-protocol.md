+++
toc = true
hideReply = true
title = "What is the Language Server Protocol"
author = "Lorenzo Drumond"
date = "2024-03-16T14:59:25"
tags = ["json",  "editor",  "data",  "exchange",  "descriptor",  "coding",  "socket",  "completion",  "lsp",  "programming",  "language_server_protocol"]
+++


A language server protocol is a software that analysis the current state of a project in terms of error, syntax, format, and will exchange this information to an external program through a json format.

The idea behind the Language Server Protocol (LSP) is to standardize the protocol for how tools and servers communicate, so a single Language Server can be re-used in multiple development tools, and tools can support languages with minimal effort.

A development tool will interact with the LSP by means of JSON-RPC protocl [what-is-rpc](/wiki/what-is-rpc/), and the LSP will reply sending the relevant information like diagnostics and completion.

E.g.:

1. The user opens a file (referred to as a document) in the tool: The tool notifies the language server that a document is open (`textDocument/didOpen`). From now on, the truth about the contents of the document is no longer on the file system but kept by the tool in memory. The contents now has to be synchronized between the tool and the language server.
2. The user makes edits: The tool notifies the server about the document change (`textDocument/didChange`) and the language representation of the document is updated by the language server. As this happens, the language server analyses this information and notifies the tool with the detected errors and warnings (`textDocument/publishDiagnostics`).
3. The user executes "Go to Definition" on a symbol of an open document: The tool sends a `textDocument/definition` request with two parameters: (1) the document URI and (2) the text position from where the "Go to Definition" request was initiated to the server. The server responds with the document URI and the position of the symbol’s definition inside the document.
4. The user closes the document (file): A `textDocument/didClose` notification is sent from the tool informing the language server that the document is now no longer in memory. The current contents are now up to date on the file system.

The data types exchanged between the development tool and the LSP are language agnostic. This means that a single tool can implement the middleware to communicate with all the LSP, therefore adding support for every language that has an LSP.

When a user is working with different languages, a development tool usually starts a language server for each programming language.

Not every language server can support all features defined by the protocol. LSP therefore provides ‘capabilities’. A capability groups a set of language features. A development tool and the language server announce their supported features using capabilities.

Example of payload:

`textDocument/definition` request:
```json
{
    "jsonrpc": "2.0",
    "id" : 1,
    "method": "textDocument/definition",
    "params": {
        "textDocument": {
            "uri": "file:///p%3A/mseng/VSCode/Playgrounds/cpp/use.cpp"
        },
        "position": {
            "line": 3,
            "character": 12
        }
    }
}
```

`textDocument/definition` response:
```json
{
    "jsonrpc": "2.0",
    "id": 1,
    "result": {
        "uri": "file:///p%3A/mseng/VSCode/Playgrounds/cpp/provide.cpp",
        "range": {
            "start": {
                "line": 0,
                "character": 4
            },
            "end": {
                "line": 0,
                "character": 11
            }
        }
    }
}
```


## References
- https://microsoft.github.io/language-server-protocol/
