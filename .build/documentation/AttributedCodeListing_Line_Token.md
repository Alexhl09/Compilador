# AttributedCodeListing.Line.Token

An element in a line of code.

``` swift
public enum Token: Hashable, CustomStringConvertible 
```

## Inheritance

`CustomStringConvertible`, `Hashable`

## Enumeration Cases

### `plain`

Text in a code line with no indicated semantic meaning.

``` swift
case plain(String)
```

### `keyword`

A keyword reserved by the language.

``` swift
case keyword(String)
```

Example keywords in the Swift programming language are `func` and `typealias`.

### `identifier`

An identifier name, such as the name of a symbol.

``` swift
case identifier(String)
```

### `numberLiteral`

A number literal as written in code.

``` swift
case numberLiteral(String)
```

### `stringLiteral`

A string literal as written in code.

``` swift
case stringLiteral(String)
```

### `parameterName`

The name of a parameter in a function-like construct.

``` swift
case parameterName(String)
```

### `genericTypeParameterName`

The name of a generic type parameter.

``` swift
case genericTypeParameterName(String)
```

### `attribute`

An attribute, typically associated with the declaration of a symbol.

``` swift
case attribute(name: String, contents: String?)
```

An attribute consists of a name and a content. The name of the attribute includes syntactic markers, such as the `@` in
Swift. The contents of an attribute are the text that follows the name in the attribute's declaration.

### `typeAnnotation`

An annotation in code that indicates the type name of an identifier.

``` swift
case typeAnnotation(name: String, usr: String?)
```

A type annotation has a name and a unique identifier for the type, if known.

## Properties

### `description`

``` swift
public var description: String 
```
