# DocCSymbolRepresentable

A type that can be converted to a DocC symbol.

``` swift
public protocol DocCSymbolRepresentable: Equatable 
```

## Inheritance

`Equatable`

## Default Implementations

### `asLinkComponent`

The given symbol information as a symbol link component.

``` swift
var asLinkComponent: AbsoluteSymbolLink.LinkComponent 
```

The component will include a disambiguation suffix
based on the included information in the symbol. For example, if the symbol
includes a kind identifier and a precise identifier, both
will be represented in the link component.

## Requirements

### kindIdentifier

A namespaced, unique identifier for the kind of symbol.

``` swift
var kindIdentifier: String? 
```

For example, a Swift class might use `swift.class`.

### preciseIdentifier

A unique identifier for this symbol.

``` swift
var preciseIdentifier: String? 
```

For Swift, this is the USR.

### title

The case-sensitive title of this symbol as would be used in documentation.

``` swift
var title: String 
```

> Note: DocC embeds function parameter information directly in the title.
> For example: `functionName(parameterName:secondParameter)`
> or `functionName(_:firstNamedParameter)`.
