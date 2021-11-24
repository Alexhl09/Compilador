# AvailabilityRenderItem

Availability information of a symbol on a specific platform.

``` swift
public struct AvailabilityRenderItem: Codable, Hashable, Equatable 
```

## Inheritance

`Codable`, `Equatable`, `Hashable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `name`

The name of the platform on which the symbol is available.

``` swift
public var name: String?
```

### `introduced`

The version of the platform SDK introducing the symbol.

``` swift
public var introduced: String?
```

### `deprecated`

The version of the platform SDK deprecating the symbol.

``` swift
public var deprecated: String?
```

### `obsoleted`

The version of the platform SDK marking the symbol as obsolete.

``` swift
public var obsoleted: String?
```

### `message`

A message associated with the availability of the symbol.

``` swift
public var message: String?
```

Use this property to provide a deprecation reason or instructions how to
update code that uses this symbol.

### `renamed`

The new name of the symbol, if it was renamed.

``` swift
public var renamed: String?
```

### `unconditionallyDeprecated`

If `true`, the symbol is deprecated on this or all platforms.

``` swift
public var unconditionallyDeprecated: Bool?
```

### `unconditionallyUnavailable`

If `true`, the symbol is unavailable on this or all platforms.

``` swift
public var unconditionallyUnavailable: Bool?
```

### `isBeta`

If `true`, the symbol is introduced in a beta version of this platform.

``` swift
public var isBeta: Bool?
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
