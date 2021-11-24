# KernelCommunicator

A struct with functions that the kernel and the code running inside the
kernel use to talk to each other.

``` swift
public struct KernelCommunicator 
```

Note that it would be more Jupyter-y for the communication to happen over
ZeroMQ. This is not currently possible, because ZeroMQ sends messages
asynchronously using IO threads, and LLDB pauses those IO threads, which
prevents them from sending the messages.

## Properties

### `jupyterSession`

``` swift
public let jupyterSession: JupyterSession
```

## Methods

### `afterSuccessfulExecution(run:)`

Register a handler to run after the kernel successfully executes a cell
of user code. The handler may return messages. These messages will be
sent to the Jupyter client.

``` swift
public mutating func afterSuccessfulExecution(
      run handler: @escaping () -> [JupyterDisplayMessage]) 
```

### `handleParentMessage(_:)`

Register a handler to run when the parent message changes.

``` swift
public mutating func handleParentMessage(_ handler: @escaping (ParentMessage) -> ()) 
```

### `triggerAfterSuccessfulExecution()`

The kernel calls this after successfully executing a cell of user code.
Returns an array of messages, where each message is returned as an array
of parts, where each part is returned as an address to the memory containing the part's
bytes and a count of the number of bytes.

``` swift
public mutating func triggerAfterSuccessfulExecution() -> [[(address: UInt, count: Int)]] 
```

### `updateParentMessage(to:)`

The kernel calls this when the parent message changes.

``` swift
public mutating func updateParentMessage(to parentMessage: ParentMessage) 
```
