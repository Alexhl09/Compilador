# VariantPatchOperation

A patch to update a render node value.

``` swift
public enum VariantPatchOperation<Value: Codable> 
```

## Enumeration Cases

### `replace`

A replacement operation.

``` swift
case replace(value: Value)
```

#### Parameters

  - value: The value to use in the replacement.

### `add`

``` swift
case add(value: Value)
```

### `remove`

A removal operation.

``` swift
case remove
```

## Properties

### `operation`

The operation to apply.

``` swift
public var operation: PatchOperation 
```
