# DefaultAvailability.ModuleAvailability

A platform name and version number pair.

``` swift
public struct ModuleAvailability: Codable, Hashable 
```

## Inheritance

`Codable`, `Hashable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `platformName`

The name of the platform, e.g. "macOS".

``` swift
public var platformName: PlatformName
```

### `platformVersion`

A string representation of the version for this platform.

``` swift
public var platformVersion: String
```
