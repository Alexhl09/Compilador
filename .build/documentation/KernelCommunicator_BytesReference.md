# KernelCommunicator.BytesReference

A reference to memory containing bytes.

``` swift
public class BytesReference 
```

As long as there is a strong reference to an instance, that instance's
`unsafeBufferPointer` refers to memory containing the bytes passed to
that instance's constructor.

We use this so that we can give the kernel a memory location that it can
read bytes from.

## Properties

### `unsafeBufferPointer`

``` swift
public var unsafeBufferPointer: UnsafeBufferPointer<CChar> 
```
