# FileTypeReference

A reference to a type of file.

``` swift
public struct FileTypeReference: RenderReference 
```

This is not a reference to a specific file, but rather to a type of file. Use a file type reference together with a file reference to display an icon for that file type
alongside the content of that file. For example, a property list file icon alongside the content of a specific property list file.

## Inheritance

[`RenderReference`](/RenderReference)

## Initializers

### `init(identifier:displayName:iconBase64:)`

Creates a new file type reference.

``` swift
public init(identifier: RenderReferenceIdentifier, displayName: String, iconBase64: Data) 
```

#### Parameters

  - identifier: The identifier of this reference.
  - displayName: The display name of the file type.
  - iconBase64: The icon for this file type, encoded in Base64.

## Properties

### `type`

``` swift
public var type: RenderReferenceType = .fileType
```

### `identifier`

The identifier of this reference.

``` swift
public var identifier: RenderReferenceIdentifier
```

### `displayName`

The display name of the file type.

``` swift
public var displayName: String
```

### `iconBase64`

The icon for this file type, encoded in Base64.

``` swift
public var iconBase64: Data
```
