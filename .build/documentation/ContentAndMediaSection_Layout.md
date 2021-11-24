# ContentAndMediaSection.Layout

The kind of layout to use when rendering a section.
Content is always leading, and media is always trailing.

``` swift
public enum Layout: String, Codable 
```

## Inheritance

`Codable`, `String`

## Enumeration Cases

### `horizontal`

Content should be laid out horizontally, with the media on the trailing side.

``` swift
case horizontal
```

### `vertical`

Content should be laid out vertically, with the media trailing the content.

``` swift
case vertical
```
