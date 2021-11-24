# JSONPatchApplier.Error

An error that occured during the application of a JSON patch.

``` swift
public enum Error: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `invalidObjectPointer`

An error indicating that the pointer of a patch operation is invalid for a JSON object.

``` swift
case invalidObjectPointer(JSONPointer, component: String, availableKeys: [String])
```

#### Parameters

  - component: The component that's causing the pointer to be invalid in the JSON object.
  - availableKeys: The keys available in the JSON object.

### `invalidArrayPointer`

An error indicating that the pointer of a patch operation is invalid for a JSON array.

``` swift
case invalidArrayPointer(JSONPointer, index: String, arrayCount: Int)
```

#### Parameters

  - index: The index component that's causing the pointer to be invalid in the JSON array.
  - arrayCount: The size of the JSON array.

### `invalidValuePointer`

An error indicating that the pointer of a patch operation is invalid for a JSON value.

``` swift
case invalidValuePointer(JSONPointer, component: String, jsonValue: String)
```

#### Parameters

  - component: The component that's causing the pointer to be invalid, since the JSON element is a non-traversable value.
  - jsonValue: The string-encoded description of the JSON value.

### `invalidPatch`

An error indicating that a patch operation is invalid.

``` swift
case invalidPatch
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```

## Methods

### `invalidObjectPointer(_:component:availableObjectKeys:)`

An error indicating that the pointer of a patch operation is invalid for a JSON object.

``` swift
public static func invalidObjectPointer<Keys: Collection>(
            _ pointer: JSONPointer,
            component: String,
            availableObjectKeys: Keys
        ) -> Self where Keys.Element == String 
```

#### Parameters

  - component: The component that's causing the pointer to be invalid in the JSON object.
  - availableObjectKeys: The keys available in the JSON object.
