# Version

An arbitrary-length version tuple.

``` swift
public struct Version: Codable, RandomAccessCollection, ExpressibleByArrayLiteral, CustomStringConvertible, Equatable 
```

## Inheritance

`Codable`, `CustomStringConvertible`, `Equatable`, `ExpressibleByArrayLiteral`, `RandomAccessCollection`

## Initializers

### `init(arrayLiteral:)`

Creates a new version with the given components.

``` swift
public init(arrayLiteral elements: Int...) 
```

#### Parameters

  - elements: The components of a version, for example: 1, 0, 3.

### `init?(versionString:)`

Creates a new version from the given string representation.

``` swift
public init?(versionString: String) 
```

> 

#### Parameters

  - versionString: A version as a string.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `startIndex`

The start index of the version-components tuple.

``` swift
public var startIndex: Int 
```

### `endIndex`

The end index of the version-components tuple.

``` swift
public var endIndex: Int 
```

### `description`

The string representation of the version.

``` swift
public var description: String 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
