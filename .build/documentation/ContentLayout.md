# ContentLayout

The layout in which the content should be presented.

``` swift
public enum ContentLayout 
```

## Inheritance

`Codable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `fullWidth`

A full-width layout.

``` swift
case fullWidth(content: [RenderBlockContent])
```

### `contentAndMedia`

A layout for a piece of media that has an attached description.

``` swift
case contentAndMedia(content: ContentAndMediaSection)
```

### `columns`

A multi-column layout.

``` swift
case columns(content: [ContentAndMediaSection])
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
