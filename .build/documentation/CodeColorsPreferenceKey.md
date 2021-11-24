# CodeColorsPreferenceKey

Represents a code color-customization point for clients.

``` swift
public struct CodeColorsPreferenceKey: Hashable, Codable 
```

A key defines a code-listing component that renderers use for syntax highlighting.

> 

## Inheritance

`Codable`, `Hashable`

## Initializers

### `init(rawValue:)`

Initializes a code color-preference key from a raw value.

``` swift
public init(rawValue: String) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `background`

The background color key for the code area.

``` swift
public static let background 
```

### `lineHighlight`

The color key renderers use for highlighted lines.

``` swift
public static let lineHighlight 
```

### `text`

The color key renderers use for plain text.

``` swift
public static let text 
```

### `keyword`

The color key renderers use for keywords.

``` swift
public static let keyword 
```

### `identifier`

The color key renderers use of identifiers.

``` swift
public static let identifier 
```

### `parameterName`

The color key renderers use for parameter names.

``` swift
public static let parameterName 
```

### `numberLiteral`

The color key renderers use for number literals.

``` swift
public static let numberLiteral 
```

### `stringLiteral`

The color key renderers use for string literals.

``` swift
public static let stringLiteral 
```

### `typeAnnotation`

The color key renderers use for type annotations.

``` swift
public static let typeAnnotation 
```

### `selection`

The color key renderers use for selected text.

``` swift
public static let selection 
```

### `docComment`

The color key renderers use for documentation comments.

``` swift
public static let docComment 
```

### `docCommentField`

The color key renderers use for documentation comment fields.

``` swift
public static let docCommentField 
```

### `comment`

The color key renderers use for comments.

``` swift
public static let comment 
```

### `commentURL`

The color key renderers use for URLs in comments.

``` swift
public static let commentURL 
```

### `buildConfigKeyword`

The color key renderers use for keywords in build configuration code.

``` swift
public static let buildConfigKeyword 
```

### `buildConfigId`

The color key renderers use for identifiers in build configuration code.

``` swift
public static let buildConfigId 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
