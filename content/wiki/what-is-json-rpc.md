+++
toc = true
title = "What is JSON-RPC"
author = "Lorenzo Drumond"
date = "2024-03-17T17:17:41"
tags = ["calling",  "computer_science",  "stub",  "sub_routing",  "remote_procedure_calling",  "notifications",  "programming",  "socket",  "network",  "routine",  "rpc",  "JSON",  "internet"]
+++


JSON-RPC is a remote procedure call (RPC) protocol encoded in JSON.

JSON-RPC allows for notifications (data sent to the server that does not require a response) and for multiple calls to be sent to the server which may be answered asynchronously.

JSON-RPC works by sending a request to a server implementing this protocol. THe client in that case is typically software intending to call a single method of a remote system. Multiple input parameters can be passed to the remote method as an array or object, whereas the method itself can return multiple output data as well.

All transfer types are single objects, serialized using JSON. A request is a call to a specific method provided by a remote system. It can contain three members:

1. `method`: a string with the name of the method to be invoked. Method names that begin with `rpc.` are reserved for rpc-internal methods.
2. `params`: an Object or Array of values to be passed as parameters to the defined method. This member may be omitted.
3. `id`: a string or non-fractional number used to match the response with the request that it is replying to. This member may be omitted if no response should be returned.

The receiver of the request must reply with a valid response to all received requests. A response can contain the members mentioned below:

1. `result`: the data returned by the invoked method. If an error occurred while invoking the method, this member must not exist.
2. `error`: an error object if there was an error invoking the method, otherwise this member must not exist. The object must contain members _code_ (integer), and _message_ (string). An optional _data_ member can contain further server-specific data. There are pre-defined error codes which follow those defined for XML-RPC
3. `id`: the id of the request it is responding to.

Since there are situations where no response is needed or even desired, notifications were introduced. A notification is similar to a request except for the id, which is not needed because no response will be returned. In this case the `id` property should be omitted, or be `null`

## References
- https://en.wikipedia.org/wiki/JSON-RPC
