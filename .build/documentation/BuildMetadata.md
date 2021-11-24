# BuildMetadata

A value that encapsulates metadata for a documentation bundle that DocC built.

``` swift
public struct BuildMetadata: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(bundleDisplayName:bundleIdentifier:)`

Creates a build metadata value for a documentation bundle built by DocC.

``` swift
public init(bundleDisplayName: String, bundleIdentifier: String) 
```

#### Parameters

  - bundleDisplayName: The display name of the documentation bundle.
  - bundleIdentifier: The bundle identifier of the documentation bundle.

## Properties

### `schemaVersion`

The current version of the build metadata schema.

``` swift
public var schemaVersion 
```

### `bundleDisplayName`

The display name of the documentation bundle that DocC built.

``` swift
public var bundleDisplayName: String
```

### `bundleIdentifier`

The bundle identifier of the documentation bundle that DocC built.

``` swift
public var bundleIdentifier: String
```
