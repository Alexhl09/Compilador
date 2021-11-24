# DocumentationDataVariants

A model type that encapsulates variants of documentation node data.

``` swift
public struct DocumentationDataVariants<Variant> 
```

Use this type to represent a piece of information about a documentation node that can have different values depending on some trait,
e.g., the programming language the symbol was defined in.

## Initializers

### `init(values:defaultVariantValue:)`

Creates a variants value.

``` swift
public init(values: [DocumentationDataVariantsTrait: Variant] = [:], defaultVariantValue: Variant? = nil) 
```

#### Parameters

  - values: The variants for a piece of information about a documentation node, grouped by trait, e.g., programming language.
  - defaultVariantValue: The default value for this piece of information about the documentation node, if no variants have been registered.

## Properties

### `allValues`

All the variants registered in this variant collection, including any default variant.

``` swift
public var allValues: [(trait: DocumentationDataVariantsTrait, variant: Variant)] 
```

The default variant value, if one exists, is the last element of the returned array.

### `isEmpty`

Whether there are any variants for this piece of information about the documentation node

``` swift
public var isEmpty: Bool 
```

## Methods

### `hasVariant(for:)`

Whether a variant for the given trait has been registered.

``` swift
public func hasVariant(for trait: DocumentationDataVariantsTrait) -> Bool 
```

#### Parameters

  - trait: The trait to look up a variant for.
