# ObservablePropertyType

This is the protocol that the state the store holds must implement.

``` swift
public protocol ObservablePropertyType 
```

To use a custom state type, this protocol must be implemented on that object.

This is useful if you want to plug in a reactive programming library and use
that for state instead of the built-in ObservableProperty type.

## Requirements

### ValueType

The type of the value that `Self` will hold.

``` swift
associatedtype ValueType
```

> 

### value

The value to be observed and mutated.

``` swift
var value: ValueType 
```
