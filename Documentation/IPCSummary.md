# Port Objects Design Summary

!!! DRAFT: to be filled in with details as implementation proceeds

MINTIA requires an IPC mechanism; the selected solution to this is a form of "port object". The requirements for port objects are as follows:

1. Message passing, with variable length messages.
2. Messages can be enqueued by system code at up to IPLDPC, provided the port's continued existence is guaranteed for that time by a pointer reference. This is needed for async I/O completion, since that occurs at IPLDPC, and perhaps for harderrors, since that may not want to call through normal APIs.
3. Speedy synchronous message passing.
4. Asynchronous message passing is available.
5. Highly multithreadable. Requests tagged with "conversation IDs" to facilitate back-and-forths between client threads and server threads without needing multiple client ports to a single process (or multiple server ports).
6. Easy passing of object handles without too much handshaking and in a manner that is not practically abusable by the client (by i.e. dumping handles into the server process until it reaches its quota and can't do anything).

## Connections & Client IDs

Server ports shall not be directly opened by path, but may be placed in the object namespace. Client ports forbid both. Both types forbid handle inheritance and duplication.

From the client perspective, a connection is made to a server port by providing its object namespace path (i.e., `//:/AuthSrv`), along with a message in which can be passed application-specific information, to the system service `OSPortConnect`. When this service returns, the status code will indicate whether the connection succeeded, and if so, will provide a handle to a client port object which may be used to communicate with the server.

From the server perspective, it will receive a message indicating a connection was requested; meanwhile the pending client is blocked. The contents of the message will be defined by whatever message the client passed to `OSPortConnect`. The client has already been given a "client ID" by this point, a unique identifier for the connection, which serves as an index into an ExHandleTable attached to the server port. After inspecting the connection request, the server will call `OSPortAccept` to either accept or reject the connection, supplying the identifying client ID as part of the header for an associated reply message. It can also supply an arbitrary 32-bit context value, which will be given back to it every time it receives a message from a client. This can be used to conveniently store a pointer to some userspace context structure representing that client.

The client receives a new port object representing the connection, but the server does not. Any message the client sends to its port object will go to the server's queue, but the server must specify the client ID it wishes to route a message to when it sends one to its own port object. This is to reduce overhead from allocating two objects for every connection; this way, it's just one.

## Passing Handles

To facilitate passing handles, the system service for synchronous message passing will have the capacity to transfer a handle to the server at the same time the message is sent. The reason it must be synchronous is elucidated by explaining how this will work. When a handle is sent using this API, it will be converted to a pointer by ObReferenceByHandle. When the server receives this message from its port, it will also receive a handle to this object. During the interim period, the object is kept referenced by pointer. If the client's wait is interrupted at any point and the message has not been consumed, the message is unlinked from the server's message queue and the object is dereferenced. It works like this for these reasons:

1. Preventing the server from being inundated by handles. While it can be unilaterally granted a handle, the maximum number of handles it can be maliciously given are limited to the number of server threads accepting requests, and meaningless ones can simply be closed, giving the server full control over this system of handle passing.
2. Preventing the system from being inundated by referenced objects. By restricting handle passing to synchronous IPC, the maximum length of time an object can have a hanging reference remains limited to the lifetime of the requesting thread. It can be terminated at any time and the reference promptly returned to the system without needing extra context placed in the thread structure and deletion codepath.
3. Reduces the overhead required to pass a handle to a server. The handle can be passed "in-line" with the associated server API request and the server doesn't need to ask for it in an extra step.
4. Works easily with the "conversation ID" mechanism described below for multithreaded client/server communication through a single port pair.

The primary drawback of this scheme is that the server may not grant object handles to the client, because it requires synchronous IPC which would therefore tie up a server thread. You want clients to be the originators of most objects shared between them and the server (especially, for instance, shared memory section objects), so that the client process is charged quota for those objects and not the server process, so it is unclear how inconvenient this will actually turn out to be for the design of various services.

## Conversation IDs

A problem arises when considering how to deal with multithreading both the server and client process. The server process ought to be multithreaded (2-4 threads) in order to increase throughput when a client's request has caused it to block, and the client ought to be multithreaded for any number of application-specific reasons. One example of the problem, in the scheme of IPC already described (1 server port, many client ports), is as follows: Suppose a client process asynchronously made a request to a server, and then moved on with his life. Imagine that another thread then does the same. Now, the server goes to reply to the original request. You are now left with a situation where the IPC system has little idea of how to route that reply. You'd think that a request should typically be dealt with by the originating thread, but now it's all jumbled and either thread may receive the reply. In principle this is still workable but the state machine required of the participating processes will be very complex.

One solution to this problem is "conversation IDs". When a request (or some other beginning-the-conversation event) is made, the conversation ID is incremented by one, and attached to the request message. Any replies sent, back and forth in a chain, maintain that conversation ID. When you wait for a reply to a message, or try to asynchronously read one, you may specify the conversation ID you are looking for and it can unlink the first message it finds with that ID from potentially deep within the message queue, and give you that instead of the usual "whatever is at the front".

Conversation IDs 0 thru 31 are reserved for application-specific use. 0 has the special meaning of "no conversation", or "new conversation".

## Disconnection

A server or client port is disconnected when it is closed by the owning process. Because port handles are not inheritable, this will always cause the deletion of the port object. If it is a server, all of its clients will receive a disconnection message in their client ports, which will be permanently detached and an error status will be returned upon further attempts to use them. If it is a client, the server will receive a disconnection message and its client ID will be unassigned from the server port.

## System Service API

The system service API for port objects is as follows:

    OSPortCreate { flags maxlen permissions name -- porthandle ok }

Creates a server port with the provided permissions and name. `maxlen` specifies the maximum length of messages that may be sent back and forth from this port to its clients and vice versa.

    OSPortConnect { rxmsg txmsg timeout path -- porthandle ok }

Tries to pass a message and connect to the server port at the given object namespace path. If successful, a client port handle is returned and a reply message is passed to the given buffer. The txmsg and rxmsg may be the same buffer if the caller ensures there is enough space.

    OSPortAccept { context txmsg reject porthandle -- ok }

Accept or reject a connection request on the given server port. The client to accept or reject is specified by the ID in the txmsg. An optional context value can be supplied which will be passed back to the server whenever it receives a message from this client.

    OSPortSendAndWaitReceive { rxmsg txmsg timeout porthandle -- ok }

Send a message to a port and wait for a message. Useful for server replies to client requests; enables a server to reply and wait for the next request in a single system call. Both `rxmsg` and `txmsg` are optional. With a `txmsg` but no `rxmsg` this service can be used to asynchronously send a message to another port; with a `rxmsg` and a `timeout` of 0 this service can be used to nonblockingly poll for a message to be received.

    OSPortSendAndWaitReply { rxmsg txmsg timeout porthandle -- ok }

Send a message to a port and wait for a reply to that message. This always starts a new conversation and will wait for replies only to that particular conversation ID. A `txhandle` may optionally be specified to pass to the recipient, and will be duplicated to the recipient's handle table with the specified `txaccess` at the time the recipient receives this message. `txaccess` must be a subset of the permissions the sender actually possesses on this handle, and the handle must be inheritable.

    OSPortOpenProcessByClientID { access clientid porthandle -- processhandle ok }

Open a process handle by its client ID with the given `access`.