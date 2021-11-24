# IndexingRecord.Kind

The kind of documentation for a search result.

``` swift
public struct Kind: RawRepresentable, Equatable 
```

## Inheritance

`Codable`, `Equatable`, `RawRepresentable`

## Initializers

### `init(rawValue:)`

``` swift
public init(rawValue: String) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `rawValue`

``` swift
public var rawValue: String
```

### `overview`

A Technology "Overview" page.

``` swift
public static let overview 
```

### `tutorial`

A "Tutorial" page.

``` swift
public static let tutorial 
```

### `article`

An "Article" page.

``` swift
public static let article 
```

### `tutorialSection`

A tutorial section.

``` swift
public static let tutorialSection 
```

### `symbol`

A symbol page.

``` swift
public static let symbol 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
