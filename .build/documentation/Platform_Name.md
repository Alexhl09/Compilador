# Platform.Name

``` swift
public struct Name: Hashable, CustomStringConvertible, Codable, Equatable 
```

## Inheritance

`Codable`, `CustomStringConvertible`, `Equatable`, `Hashable`

## Nested Type Aliases

### `ID`

``` swift
public typealias ID = UInt64
```

## Initializers

### `init(_:id:)`

Initialize a platform with the given display name and id.
Id is an integer used to shift bits and generate a mask for fast processing.

``` swift
public init(_ name: String, id: Int) 
```

#### Parameters

  - name: The name of the platform used also for display. Note: case sensitive.
  - id: The ID of the platform.

## Properties

### `name`

The name of the platform, suitable for display.

``` swift
public let name: String
```

### `mask`

The assigned mask suitable to be used for filtering content.

``` swift
public let mask: ID
```

### `description`

``` swift
public var description: String 
```

### `isApplePlatform`

Returns a boolean indicating if the platform is an Apple defined one.

``` swift
public var isApplePlatform: Bool 
```

### `undefined`

``` swift
public static let undefined 
```

### `xcode`

``` swift
public static let xcode 
```

### `macOS`

``` swift
public static let macOS 
```

### `iOS`

``` swift
public static let iOS 
```

### `watchOS`

``` swift
public static let watchOS 
```

### `tvOS`

``` swift
public static let tvOS 
```

### `macCatalyst`

``` swift
public static let macCatalyst 
```

### `any`

``` swift
public static let any 
```

### `apple`

``` swift
public static let apple 
```

### `all`

``` swift
public static let all 
```

## Methods

### `from(string:)`

``` swift
public static func from(string: String) -> Platform.Name 
```

## Operators

### `==`

``` swift
public static func == (lhs: Platform.Name, rhs: Platform.Name) -> Bool 
```
