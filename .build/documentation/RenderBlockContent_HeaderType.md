# RenderBlockContent.HeaderType

The table headers style.

``` swift
public enum HeaderType: String, Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`, `String`

## Enumeration Cases

### `row`

The first row in the table contains column headers.

``` swift
case row
```

### `column`

The first column in the table contains row headers.

``` swift
case column
```

### `both`

Both the first row and column contain headers.

``` swift
case both
```

### `none`

The table doesn't contain headers.

``` swift
case none
```
