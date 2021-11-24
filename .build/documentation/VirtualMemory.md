# VirtualMemory

``` swift
public class VirtualMemory 
```

## Initializers

### `init(globalInfo:constantsInfo:activeFunc:constants:)`

``` swift
public init(globalInfo : InfoStack, constantsInfo : InfoStack, activeFunc : ActivationRecord, constants: [String: Int])
```

## Methods

### `getInfoByAddress(address:)`

``` swift
public func getInfoByAddress(address: Int) throws -> (Any?, TypeSymbol)
```

### `insertValue(address:value:)`

``` swift
public func insertValue(address: Int, value : Any)  throws  
```

### `getType(address:)`

``` swift
public func getType(address : Int) throws -> SegmentType 
```
