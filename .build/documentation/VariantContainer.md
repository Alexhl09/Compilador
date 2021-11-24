# VariantContainer

A type that contains variant collections.

``` swift
public protocol VariantContainer 
```

This protocol provides utility APIs for types that contain `VariantCollection` values.

## Default Implementations

### `setVariantDefaultValue(_:keyPath:)`

Sets the given value, if present, as the default value of the variant collection at the given key path.

``` swift
mutating func setVariantDefaultValue<Value>(
        _ newValue: Value?,
        keyPath: WritableKeyPath<Self, VariantCollection<Value>?>
    ) 
```

If a variant collection is present, this function updates its default value to the given value. Otherwise, it creates a new variant container with the given
value as its default value.

### `getVariantDefaultValue(keyPath:)`

Returns the default value of the variant collection at the given key path, if present.

``` swift
func getVariantDefaultValue<Value>(
        keyPath: WritableKeyPath<Self, VariantCollection<Value>?>
    ) -> Value? 
```

### `setVariantDefaultValue(_:keyPath:)`

Sets the given value as the default value of the variant collection at the given key path.

``` swift
mutating func setVariantDefaultValue<Value>(
        _ newValue: Value,
        keyPath: WritableKeyPath<Self, VariantCollection<Value>>
    ) 
```

### `getVariantDefaultValue(keyPath:)`

Returns the default value of the variant collection at the given key path.

``` swift
func getVariantDefaultValue<Value>(
        keyPath: WritableKeyPath<Self, VariantCollection<Value>>
    ) -> Value 
```
