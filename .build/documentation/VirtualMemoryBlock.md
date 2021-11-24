# VirtualMemoryBlock

``` swift
public class VirtualMemoryBlock
```

## Initializers

### `init(infoStack:sizeBlock:kind:)`

``` swift
public init(infoStack: InfoStack, sizeBlock : Int, kind : SegmentType)
```

## Methods

### `realMemoryAddress(address:)`

``` swift
public func realMemoryAddress(address : Int) throws ->  (address: Int, type: TypeSymbol)  
```

### `readInfo(address:)`

``` swift
public func readInfo(address : Int) throws -> (Any?, TypeSymbol) 
```

### `insertInMemory(address:value:)`

``` swift
public func insertInMemory(address : Int, value : Any) throws 
```
