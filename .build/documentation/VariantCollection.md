# VariantCollection

A collection of variants for a render node value.

``` swift
public struct VariantCollection<Value: Codable>: Codable 
```

Variant collections encapsulate different values for the same piece of content. Each variant collection has a default value and optionally, trait-specific
(e.g., programming language–specific) values that client can choose to use based on their context.

For example, a collection can a hold programming language-agnostic documentation value as its `defaultValue`, and hold Objective-C specific values
in its `variants` array. Clients that want to process the Objective-C version of a documentation page then use the override rather than the
default value, and fall back to the default value if no Objective-C-specific override is specified.

## Inheritance

`Codable`

## Initializers

### `init?(from:transform:)`

Creates a variant collection from a non-empty symbol variants data using the given transformation closure.

``` swift
init?<SymbolValue>(
        from documentationDataVariants: DocumentationDataVariants<SymbolValue>,
        transform: (DocumentationDataVariantsTrait, SymbolValue) -> Value
    ) 
```

If there are no variants for the symbol data, this initializer returns `nil`.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init?(from:transform:)`

Creates a variant collection from a non-empty symbol variants data of the same value type using the given transformation closure.

``` swift
init?(
        from documentationDataVariants: DocumentationDataVariants<Value>,
        transform: (DocumentationDataVariantsTrait, Value) -> Value = { $1 }
    ) 
```

Use this initializer when the `Value` of  the given `DocumentationDataVariants` is the same as the variant collection's `Value`. If there are no variants
for the symbol data, this initializer returns `nil`.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init(from:transform:)`

Creates a variant collection of optional value from a symbol variants data of the same value type using the given transformation closure.

``` swift
init<Wrapped>(
        from documentationDataVariants: DocumentationDataVariants<Wrapped>,
        transform: (DocumentationDataVariantsTrait, Value) -> Value = { $1 }
    ) where Value == Wrapped? 
```

Use this initializer when the `Value` of  the given `DocumentationDataVariants` is the variant collection's `Value` wrapped in an `Optional` .
If there are no variants for the symbol data, the variant collection encodes a `nil` value.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init(from:transform:)`

Creates a variant collection from a symbol variants data of the same value type using the given transformation closure.

``` swift
init<SymbolValue>(
        from documentationDataVariants: DocumentationDataVariants<SymbolValue>,
        transform: ((DocumentationDataVariantsTrait, SymbolValue)?) -> Value
    ) 
```

If there are no variants for the symbol data, the transform closure is called with a `nil` value.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init?(from:optionalValue:transform:)`

Creates a variant collection from two symbol variants data using the given transformation closure.

``` swift
init?<Value1, Value2>(
        from documentationDataVariants1: DocumentationDataVariants<Value1>,
        optionalValue documentationDataVariants2: DocumentationDataVariants<Value2>,
        transform: (DocumentationDataVariantsTrait, Value1, Value2?) -> Value
    ) 
```

If the first symbol data variants value is empty, this initializer returns `nil`. If the second data variants value is empty, the transform closure is passed
`nil` for the second value.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init?(from:optionalValue:transform:)`

Creates a variant collection of optional value from two symbol variants data using the given transformation closure.

``` swift
init?<Value1, Value2, Wrapped>(
        from documentationDataVariants1: DocumentationDataVariants<Value1>,
        optionalValue documentationDataVariants2: DocumentationDataVariants<Value2>,
        transform: (DocumentationDataVariantsTrait, Value1, Value2?) -> Value
    ) where Value == Wrapped? 
```

If the first symbol data variants value is empty, this initializer returns `nil`. If the second data variants value is empty, the transform closure is passed
`nil` for the second value.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init?(from:_:transform:)`

Creates a variant collection from two non-empty symbol variants data using the given transformation closure.

``` swift
init?<Value1, Value2>(
        from documentationDataVariants1: DocumentationDataVariants<Value1>,
        _ documentationDataVariants2: DocumentationDataVariants<Value2>,
        transform: (DocumentationDataVariantsTrait, Value1, Value2) -> Value
    ) 
```

If either symbol data variants values are empty, this initializer returns `nil`.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init?(from:_:_:transform:)`

Creates a variant collection from three non-empty symbol variants data using the given transformation closure.

``` swift
init?<Value1, Value2, Value3>(
        from documentationDataVariants1: DocumentationDataVariants<Value1>,
        _ documentationDataVariants2: DocumentationDataVariants<Value2>,
        _ documentationDataVariants3: DocumentationDataVariants<Value3>,
        transform: (DocumentationDataVariantsTrait, Value1, Value2, Value3) -> Value
    ) 
```

If any of symbol data variants values are empty, this initializer returns `nil`.

This initializer picks a variant (the Swift variant, if available) of the given symbol data as the default value for the variant collection. Other variants
are encoded in the variant collection's `variants`.

### `init(defaultValue:variants:)`

Creates a variant collection given a default value and an array of trait-specific overrides.

``` swift
public init(defaultValue: Value, variants: [Variant<Value>] = []) 
```

#### Parameters

  - defaultValue: The default value of the variant.
  - variantOverrides: The trait-specific overrides for the value.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `defaultValue`

The default value of the variant.

``` swift
public var defaultValue: Value
```

Clients should decide whether the `defaultValue` or a value in `variants` is appropriate in their context.

### `variants`

Trait-specific overrides for the default value.

``` swift
public var variants: [Variant<Value>]
```

Clients should decide whether the `defaultValue` or a value in `variants` is appropriate in their context.

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
