# NavigatorItem

The `NavigatorItem` class describes a single entry in a navigator, providing the necessary information to display and process (such as filtering) a single item.

``` swift
public final class NavigatorItem: Serializable, Codable, Equatable, CustomStringConvertible, Hashable 
```

## Inheritance

`Codable`, `CustomStringConvertible`, `Equatable`, `Hashable`, [`Serializable`](/Serializable)

## Initializers

### `init(pageType:languageID:title:platformMask:availabilityID:)`

Initialize a `NavigatorItem` with the given data.

``` swift
public init(pageType: UInt8, languageID: UInt8, title: String, platformMask: UInt64, availabilityID: UInt64) 
```

#### Parameters

  - pageType: The type of the page, such as "article", "tutorial", "struct", etc...
  - languageID: The numerical identifier of the language.
  - title: The user facing page title.
  - platformMask: The mask indicating for which platform the page is available.
  - availabilityID: The identifier of the availability information of the page.

### `init?(rawValue:)`

Initialize a `NavigatorItem` using raw data.

``` swift
required public init?(rawValue: Data) 
```

  - Parameters rawValue: The `Data` from which the instance should be deserialized from.

## Properties

### `pageType`

The page type of the item.

``` swift
public let pageType: UInt8
```

### `languageID`

The language identifier of the item.

``` swift
public let languageID: UInt8
```

### `title`

The title of the entry.

``` swift
public let title: String
```

### `platformMask`

The platform information of the item.

``` swift
public let platformMask: UInt64
```

### `availabilityID`

The availability information of the item.

``` swift
public let availabilityID: UInt64
```

### `rawValue`

Returns the `Data` representation of the current `NavigatorItem` instance.

``` swift
public var rawValue: Data 
```

### `description`

``` swift
public var description: String 
```

## Methods

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

## Operators

### `==`

``` swift
public static func == (lhs: NavigatorItem, rhs: NavigatorItem) -> Bool 
```
