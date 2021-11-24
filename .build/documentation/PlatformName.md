# PlatformName

A supported platform's name representation.

``` swift
public struct PlatformName: Codable, Hashable, Equatable 
```

## Inheritance

`Codable`, `Equatable`, `Hashable`

## Initializers

### `init(rawValue:aliases:displayName:)`

Creates a new platform name value.

``` swift
public init(rawValue: String, aliases: [String] = [], displayName: String? = nil) 
```

#### Parameters

  - rawValue: The raw source string.
  - aliases: Any aliases for the platform.
  - displayName: An optional name for presentation purposes.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `rawValue`

``` swift
public var rawValue: String
```

### `aliases`

Other known identifiers for the same platform (aka "macosx" for "macOS").

``` swift
public var aliases: [String] = []
```

### `displayName`

The name to use in render JSON. If `nil` returns `rawValue`.

``` swift
public var displayName: String
```

### `macOS`

Apple's macOS operating system.

``` swift
public static let macOS 
```

### `macOSAppExtension`

``` swift
public static let macOSAppExtension 
```

### `iOS`

Apple's iOS operating system.

``` swift
public static let iOS 
```

### `iOSAppExtension`

``` swift
public static let iOSAppExtension 
```

### `watchOS`

Apple's watchOS operating system.

``` swift
public static let watchOS 
```

### `watchOSAppExtension`

``` swift
public static let watchOSAppExtension 
```

### `tvOS`

Apple's tvOS operating system.

``` swift
public static let tvOS 
```

### `tvOSAppExtension`

``` swift
public static let tvOSAppExtension 
```

### `linux`

A Linux-based operating system, but not a specific distribution.

``` swift
public static let linux 
```

### `catalyst`

The Catalyst platform.

``` swift
public static let catalyst 
```

### `catalystOSAppExtension`

``` swift
public static let catalystOSAppExtension 
```

### `swift`

The Swift toolchain platform.

``` swift
public static let swift 
```

### `sortedPlatforms`

All supported platforms sorted for presentation.

``` swift
public static let sortedPlatforms: [PlatformName] = [
        .iOS, .iOSAppExtension,
        .macOS, .macOSAppExtension,
        .catalyst, .catalystOSAppExtension,
        .tvOS, .tvOSAppExtension,
        .watchOS, .watchOSAppExtension,
        .swift
    ]
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```

## Operators

### `==`

Compares platform names independently of any known aliases differences or possible incomplete display names.

``` swift
public static func == (lhs: PlatformName, rhs: PlatformName) -> Bool 
```
