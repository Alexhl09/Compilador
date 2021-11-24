# OptionalProtocol

An optional protocol for use in type constraints.

``` swift
public protocol OptionalProtocol 
```

## Requirements

### Wrapped

The type contained in the otpional.

``` swift
associatedtype Wrapped
```

### init(reconstructing:​)

``` swift
init(reconstructing value: Wrapped?)
```

### optional

Extracts an optional from the receiver.

``` swift
var optional: Wrapped? 
```
