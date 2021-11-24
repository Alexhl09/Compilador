# Platform.Version

``` swift
public struct Version 
```

## Inheritance

`Codable`, `Comparable`, `CustomStringConvertible`, `Equatable`, `Hashable`

## Initializers

### `init?(string:)`

Initialize a `PlatformVersion` using a given string.
Ex:​ "10.15.1" or "9.3.1".

``` swift
public init?(string: String) 
```

#### Parameters

  - string: The string to parse to initialize the `PlatformVersion`.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

### `init(uint32:)`

``` swift
public init(uint32: UInt32) 
```

## Properties

### `majorVersion`

``` swift
public var majorVersion: Int
```

### `minorVersion`

``` swift
public var minorVersion: Int
```

### `patchVersion`

``` swift
public var patchVersion: Int
```

### `description`

``` swift
public var description: String 
```

### `uint32`

``` swift
public var uint32: UInt32 
```

## Methods

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```

## Operators

### `==`

``` swift
public static func == (lhs: Platform.Version, rhs: Platform.Version) -> Bool 
```

### `<`

``` swift
public static func < (lhs: Platform.Version, rhs: Platform.Version) -> Bool 
```
