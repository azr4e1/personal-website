+++
title = "What is RPC"
author = "Lorenzo Drumond"
date = "2024-03-16T15:10:35"
tags = ["calling",  "computer_science",  "stub",  "remote_procedure_calling",  "sub_routing",  "programming",  "socket",  "network",  "routine",  "rpc",  "internet"]
+++


"Remote Procedure Call" is a software communication protocol that one program can use to request a service from a program located in another computer on a network without having to understand the network's details. RPC is used to call other processes on the remote systems like a local system. A procedure call is also sometimes known as a function call or a subroutine call.

RPC uses the client-server model. The requesting program is a client, and the service-providing program is the server. Like a local procedure call, an RPC is a synchronous operation requiring the requesting program to be suspended until the results of the remote procedure are returned.

When program statements that use the RPC framework are compiled into an executable program, a stub (dummy implementation) is included in the compiled code that acts as the representative of the remote procedure code. When the program is run and the procedure call is issued, the stub receives the request and forwards it to a client runtime program in the local computer. The first time the client stub is invoked, it contacts a name server to determine the transport address where the server resides.

During an RPC, the following steps take place:

1. The client calls the client stub. The call is a local procedure call with parameters pushed onto the stack in the normal way.
2. The client stub packs the procedure parameters into a message and makes a system call to send the message. The packing of the procedure parameters is called marshalling.
3. The client's local OS sends the message from the client machine to the remote server machine.
4. The server OS passes the incoming packets to the server stub.
5. The server stub unpacks the parameters -- called unmarshalling -- from the message.
6. When the server procedure is finished, it returns to the server stub, which marshals the return values into a message. The server stub then hands the message to the transport layer.
7. The transport layer sends the resulting message back to the client transport layer, which hands the message back to the client stub.
8. The client stub unmarshalls the return parameters, and execution returns to the caller.


# References
- https://www.techtarget.com/searchapparchitecture/definition/Remote-Procedure-Call-RPC
- https://en.wikipedia.org/wiki/Remote_procedure_call

Next -> [what-is-json-rpc](/wiki/what-is-json-rpc/)
