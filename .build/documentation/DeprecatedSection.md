# DeprecatedSection

A section that contains deprecation information.

``` swift
public struct DeprecatedSection: Section 
```

## Inheritance

[`Section`](/Section)

## Initializers

### `init(content:)`

Creates a new deprecation section with the given markup content.

``` swift
public init(content: [Markup]) 
```

### `init(text:)`

Creates a new deprecation section with the given plain text.

``` swift
public init(text: String) 
```

## Properties

### `title`

``` swift
public static var title: String? 
```

### `content`

``` swift
public var content: [Markup]
```
