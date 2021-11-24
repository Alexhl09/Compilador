# DocumentationExtension.Behavior

The merge behavior in a documentation extension.

``` swift
public enum Behavior: String, CaseIterable, Codable, DirectiveArgumentValueConvertible 
```

## Inheritance

`CaseIterable`, `Codable`, [`DirectiveArgumentValueConvertible`](/DirectiveArgumentValueConvertible), `String`

## Initializers

### `init?(rawDirectiveArgumentValue:)`

``` swift
public init?(rawDirectiveArgumentValue: String) 
```

## Enumeration Cases

### `append`

Append the documentation-extension content to the in-source content and process them together.

``` swift
case append = "append"
```

### `override`

Completely override any in-source content with the content from the documentation-extension.

``` swift
case override = "override"
```

## Properties

### `description`

A plain-text representation of the behavior.

``` swift
public var description: String 
```
