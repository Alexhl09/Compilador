# DocumentationDataVariantsTrait

The trait associated with a variant of some piece of information about a documentation node.

``` swift
public struct DocumentationDataVariantsTrait: Hashable 
```

## Inheritance

`Hashable`

## Initializers

### `init(interfaceLanguage:)`

Creates a new trait given an interface language.

``` swift
public init(interfaceLanguage: String? = nil) 
```

#### Parameters

  - interfaceLanguage: The language in which a documentation node is relevant.

## Properties

### `swift`

The Swift programming language.

``` swift
public static var swift 
```

### `interfaceLanguage`

The language in which the documentation node is relevant.

``` swift
public var interfaceLanguage: String?
```
