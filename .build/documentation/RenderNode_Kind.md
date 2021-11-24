# RenderNode.Kind

The kind of content represented by this node.

``` swift
public enum Kind: String, Codable 
```

## Inheritance

`Codable`, `String`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `symbol`

``` swift
case symbol
```

### `article`

``` swift
case article
```

### `tutorial`

``` swift
case tutorial = "project"
```

### `section`

``` swift
case section
```

### `overview`

``` swift
case overview
```
