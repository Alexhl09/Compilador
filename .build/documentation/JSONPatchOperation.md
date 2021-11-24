# JSONPatchOperation

A patch operation to update a JSON value.

``` swift
public enum JSONPatchOperation: Codable 
```

Values of this type follow the [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) format.

## Topics

### Applying Patches

  - `JSONPatchApplier`

### Operations

  - `PatchOperation`

## Inheritance

`Codable`

## Initializers

### `init(variantPatchOperation:pointer:)`

Creates a patch to update a JSON value.

``` swift
public init<Value>(variantPatchOperation: VariantPatchOperation<Value>, pointer: JSONPointer) 
```

Values of this type follow the [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) format.

#### Parameters

  - variantPatchOperation: The patch to apply.
  - pointer: The pointer to the value to update.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `replace`

A replacement operation.

``` swift
case replace(pointer: JSONPointer, value: AnyCodable)
```

#### Parameters

  - pointer: The pointer to the value to replace.
  - value: The value to use in the replacement.

### `add`

``` swift
case add(pointer: JSONPointer, value: AnyCodable)
```

### `remove`

A remove operation.

``` swift
case remove(pointer: JSONPointer)
```

#### Parameters

  - pointer: The pointer to the value to remove.

## Properties

### `pointer`

The pointer to the value to modify.

``` swift
public var pointer: JSONPointer 
```

### `operation`

The operation to apply.

``` swift
public var operation: PatchOperation 
```

## Methods

### `replace(pointer:encodableValue:)`

A replacement operation.

``` swift
public static func replace(pointer: JSONPointer, encodableValue: Encodable) -> JSONPatchOperation 
```

#### Parameters

  - pointer: The pointer to the value to replace.
  - encodedValue: The value to use in the replacement.

### `add(pointer:encodableValue:)`

``` swift
public static func add(pointer: JSONPointer, encodableValue: Encodable) -> JSONPatchOperation 
```

### `removingPointerFirstPathComponent()`

Returns the patch operation with the first path component of the pointer removed.

``` swift
public func removingPointerFirstPathComponent() -> Self 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
