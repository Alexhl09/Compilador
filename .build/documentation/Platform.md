# Platform

``` swift
public struct Platform: Hashable, CustomStringConvertible, Codable, Equatable 
```

## Inheritance

`Codable`, `CustomStringConvertible`, `Equatable`, `Hashable`

## Initializers

### `init(name:version:)`

Initialize a `Platform` with the given name and version.

``` swift
public init(name: Name, version: Version) 
```

## Properties

### `name`

The name of the platform such as `macOS`, `iOS` or `linux`.

``` swift
public let name: Name
```

### `version`

The version of the platform, such as `10.15`, `6.2.1` or `12.2.5`.

``` swift
public let version: Version
```

### `description`

``` swift
public var description: String 
```
