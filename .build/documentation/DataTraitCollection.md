# DataTraitCollection

A collection of environment traits for an asset variant.

``` swift
public struct DataTraitCollection: Hashable, Codable 
```

Traits describe properties of a rendering environment, such as a user-interface style (light or dark mode) and display-scale
(1x, 2x, or 3x). A trait collection is a combination of traits and describes the rendering environment in which an asset variant is best
suited for, e.g., an environment that uses the dark mode user-interface style and a display-scale of 3x.

## Inheritance

`Codable`, `Hashable`

## Initializers

### `init()`

Creates a new trait collection with traits set to their default, unspecified, values.

``` swift
public init() 
```

### `init(traitsFrom:)`

Returns a new trait collection consisting of traits merged from a specified array of trait collections.

``` swift
public init(traitsFrom traitCollections: [DataTraitCollection]) 
```

### `init(from:)`

Creates a trait collection from an array of raw values.

``` swift
public init(from rawValues: [String]) 
```

### `init(userInterfaceStyle:displayScale:)`

Creates a trait collection that contains only the specified user-interface style and display-scale traits.

``` swift
public init(userInterfaceStyle: UserInterfaceStyle? = nil, displayScale: DisplayScale? = nil) 
```

## Properties

### `userInterfaceStyle`

The style associated with the user-interface.

``` swift
public var userInterfaceStyle: UserInterfaceStyle?
```

### `displayScale`

The display-scale of the trait collection.

``` swift
public var displayScale: DisplayScale?
```

### `allCases`

Returns all the asset's registered variants.

``` swift
public static var allCases: [DataTraitCollection] 
```

## Methods

### `toArray()`

Returns an array of raw values associated with the trait collection.

``` swift
public func toArray() -> [String] 
```
