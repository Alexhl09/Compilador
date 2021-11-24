# Tile.Identifier

A tile type to identify the tile during building page layout.

``` swift
public enum Identifier: String, Codable 
```

## Inheritance

`Codable`, `String`

## Enumeration Cases

### `documentation`

Identifies a tile that links to documentation.

``` swift
case documentation = "documentation"
```

### `sampleCode`

Identifies a tile that links to sample code.

``` swift
case sampleCode = "sampleCode"
```

### `downloads`

Identifies a tile that links to downloads.

``` swift
case downloads = "downloads"
```

### `videos`

Identifies a tile that links to videos.

``` swift
case videos = "videos"
```

### `forums`

Identifies a tile that links to forum topics.

``` swift
case forums = "forums"
```
