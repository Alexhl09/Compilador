# DataAsset.Context

A context in which you intend clients to use a data asset.

``` swift
public enum Context: String, CaseIterable, Codable 
```

## Inheritance

`CaseIterable`, `Codable`, `String`

## Enumeration Cases

### `display`

An asset that a user intends to view alongside documentation content.

``` swift
case display
```

### `download`

An asset that a user intends to download.

``` swift
case download
```
