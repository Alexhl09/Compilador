# Placeholder

The Placeholder object, is used to create placeholders

``` swift
public struct Placeholder 
```

## Initializers

### `init(data:style:key:)`

Create a placeholder by using the data and style objects

``` swift
public init(data: PlaceholderData, style: PlaceholderStyle, key: PlaceholderKey) 
```

#### Parameters

  - data: the data of the placeholder
  - style: the style of the placeholder
  - key: the unique key of the placeholder

### `init(cellIdentifier:key:)`

Create a placeholder by using custom xib file

``` swift
public init(cellIdentifier: String, key: PlaceholderKey) 
```

#### Parameters

  - cellIdentifier: The identifier of the cell to use as a placeholder
  - key: the unique key of the placeholder

## Properties

### `data`

The data of the placeholer

``` swift
public var data: PlaceholderData?
```

### `style`

The style of the placeholder

``` swift
public var style: PlaceholderStyle?
```

### `cellIdentifier`

The cell identifier of the placeholder

``` swift
public let cellIdentifier: String?
```

### `key`

The key of the placeholder, each placeholder should have an unique key

``` swift
public let key: PlaceholderKey
```
