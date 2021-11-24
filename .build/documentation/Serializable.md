# Serializable

Defines an object that can be represented as raw Data and therefore serialized to/deserialized from disk.

``` swift
public protocol Serializable: LMDBData, RawRepresentable where RawValue == Data 
```

## Inheritance

[`LMDBData`](/LMDBData), `RawRepresentable`
