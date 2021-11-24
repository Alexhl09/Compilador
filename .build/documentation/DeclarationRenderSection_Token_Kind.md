# DeclarationRenderSection.Token.Kind

The list of all expected tokens in a declaration.

``` swift
public enum Kind: String, Codable, RawRepresentable 
```

## Inheritance

`Codable`, `RawRepresentable`, `String`

## Enumeration Cases

### `keyword`

A known keyword, like "class" or "var".

``` swift
case keyword
```

### `attribute`

An attribute, for example, "@main".

``` swift
case attribute
```

### `number`

A numeric literal, like "1.25" or "0xff".

``` swift
case number
```

### `string`

A string literal.

``` swift
case string
```

### `identifier`

An identifier, for example a property or a function name.

``` swift
case identifier
```

### `typeIdentifier`

A type identifier, for example, an integer or raw data.

``` swift
case typeIdentifier
```

### `genericParameter`

A generic parameter in a function signature.

``` swift
case genericParameter
```

### `text`

A plain text, such as whitespace or punctuation.

``` swift
case text
```

### `internalParam`

A parameter name to use inside a function body.

``` swift
case internalParam
```

### `externalParam`

A parameter name to use when calling a function.

``` swift
case externalParam
```

### `label`

A label that precedes an identifier.

``` swift
case label
```
