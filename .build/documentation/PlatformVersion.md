# PlatformVersion

A pair of a version number and beta information for a platform.

``` swift
public struct PlatformVersion: Equatable 
```

## Topics

### Semantic Versions

  - `VersionTriplet`

  - `Version`

## Inheritance

`Equatable`

## Initializers

### `init(_:beta:)`

Creates a new version and beta pair for a platform.

``` swift
public init(_ version: VersionTriplet, beta: Bool) 
```

#### Parameters

  - version: The version number for the platform.
  - beta: If the platform is considered in beta.

## Properties

### `version`

The version number for the platform.

``` swift
public let version: VersionTriplet
```

### `beta`

If `true`, this is a beta version.

``` swift
public let beta: Bool
```
