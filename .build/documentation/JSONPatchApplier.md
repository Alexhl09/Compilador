# JSONPatchApplier

A utility type for applying JSON patches.

``` swift
public struct JSONPatchApplier 
```

Use this type to apply `JSONPatchOperation` values onto JSON.

## Initializers

### `init()`

Creates a new JSON patch applier.

``` swift
public init() 
```

## Methods

### `apply(_:to:)`

Applies the given patch onto the given JSON data.

``` swift
public func apply(_ patch: JSONPatch, to jsonData: Data) throws -> Data 
```

#### Parameters

  - patch: The patch to apply.
  - jsonData: The data on which to apply the patch.

#### Throws

This function throws an `Error` if the application was not successful.

#### Returns

The JSON data with the patch applied.
