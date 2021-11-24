# DocumentationCoverageLevel

Specifies whether the documentation coverage feature is enabled and, if it is, what amount of specificity is selected.

``` swift
public enum DocumentationCoverageLevel: String, Codable, CaseIterable 
```

## Inheritance

`CaseIterable`, `Codable`, `String`

## Enumeration Cases

### `none`

No documentation coverage data should be emitted and no documentation coverage information should be displayed in console

``` swift
case none
```

### `brief`

Documentation coverage data should be emitted and a high-level summary should be displayed in console

``` swift
case brief
```

### `detailed`

Documentation coverage data should be emitted and a per-symbol summary should be displayed in console

``` swift
case detailed
```
