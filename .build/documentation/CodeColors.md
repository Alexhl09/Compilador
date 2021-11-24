# CodeColors

A collection of colors that a renderer uses to highlight code.

``` swift
public struct CodeColors: Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(colors:)`

Creates a collection of colors given key-color pairs.

``` swift
public init(colors: [CodeColorsPreferenceKey: SRGBColor] = [:]) 
```

### `init(background:text:keyword:identifier:parameterName:numberLiteral:stringLiteral:typeAnnotation:docComment:docCommentField:comment:commentURL:buildConfigKeyword:buildConfigId:)`

Creates a collection of colors given the given values.

``` swift
public init(
        background: SRGBColor?,
        text: SRGBColor?,
        keyword: SRGBColor?,
        identifier: SRGBColor?,
        parameterName: SRGBColor?,
        numberLiteral: SRGBColor?,
        stringLiteral: SRGBColor?,
        typeAnnotation: SRGBColor?,
        docComment: SRGBColor?,
        docCommentField: SRGBColor?,
        comment: SRGBColor?,
        commentURL: SRGBColor?,
        buildConfigKeyword: SRGBColor?,
        buildConfigId: SRGBColor?
    ) 
```

#### Parameters

  - background: The background color of the code area.
  - text: The color the renderer uses for plain text.
  - keyword: The color the renderer uses for keywords.
  - identifier: The color the renderer uses for identifiers.
  - parameterName: The color the renderer uses for parameter names.
  - numberLiteral: The color the renderer uses for number literals.
  - stringLiteral: The color the renderer uses for string literals.
  - typeAnnotation: The color the renderer uses for type annotations.
  - docComment: The color the renderer uses for documentation comments.
  - docCommentField: The color the renderer uses for documentation comment fields.
  - comment: The color the renderer uses for comments.
  - commentURL: The color the renderer uses for URLs in comments.
  - buildConfigKeyword: The color the renderer uses for keywords in build configuration code.
  - buildConfigId: The color the renderer uses for identifiers in build configuration code.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `colors`

The content color customizations for this collection.

``` swift
public var colors 
```

### `background`

The color the renderer uses for code area backgrounds.

``` swift
public var background: SRGBColor? 
```

### `lineHighlight`

The color the renderer uses for highlighted lines.

``` swift
public var lineHighlight: SRGBColor? 
```

### `text`

The color the renderer uses for plain text.

``` swift
public var text: SRGBColor? 
```

### `keyword`

The color the renderer uses for keywords.

``` swift
public var keyword: SRGBColor? 
```

### `identifier`

The color the renderer uses for identifiers.

``` swift
public var identifier: SRGBColor? 
```

### `parameterName`

The color the renderer uses for parameter names.

``` swift
public var parameterName: SRGBColor? 
```

### `numberLiteral`

The color the renderer uses for number literals.

``` swift
public var numberLiteral: SRGBColor? 
```

### `stringLiteral`

The color the renderer uses for string literals.

``` swift
public var stringLiteral: SRGBColor? 
```

### `typeAnnotation`

The color the renderer uses for type annotations.

``` swift
public var typeAnnotation: SRGBColor? 
```

### `docComment`

The color the renderer uses for documentation comments.

``` swift
public var docComment: SRGBColor? 
```

### `docCommentField`

The color the renderer uses for documentation comment fields.

``` swift
public var docCommentField: SRGBColor? 
```

### `comment`

The color the renderer uses for comments.

``` swift
public var comment: SRGBColor? 
```

### `commentURL`

The color the renderer uses for URLs in comments.

``` swift
public var commentURL: SRGBColor? 
```

### `buildConfigKeyword`

The color the renderer uses for keywords in build configuration code.

``` swift
public var buildConfigKeyword: SRGBColor? 
```

### `buildConfigId`

The color the renderer uses for identifiers in build-configuration code.

``` swift
public var buildConfigId: SRGBColor? 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
