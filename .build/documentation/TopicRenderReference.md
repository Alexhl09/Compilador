# TopicRenderReference

A reference to another page of documentation in the current context.

``` swift
public struct TopicRenderReference: RenderReference, VariantContainer 
```

## Inheritance

[`RenderReference`](/RenderReference), [`VariantContainer`](/VariantContainer)

## Initializers

### `init(identifier:title:abstract:url:kind:required:role:fragments:navigatorTitle:estimatedTime:conformance:isBeta:isDeprecated:defaultImplementationCount:titleStyle:name:ideTitle:tags:)`

Creates a new topic reference with all its initial values.

``` swift
public init(
        identifier: RenderReferenceIdentifier,
        title: String,
        abstract: [RenderInlineContent],
        url: String,
        kind: RenderNode.Kind,
        required: Bool = false,
        role: String? = nil,
        fragments: [DeclarationRenderSection.Token]? = nil,
        navigatorTitle: [DeclarationRenderSection.Token]? = nil,
        estimatedTime: String?,
        conformance: ConformanceSection? = nil,
        isBeta: Bool = false,
        isDeprecated: Bool = false,
        defaultImplementationCount: Int? = nil,
        titleStyle: TitleStyle? = nil,
        name: String? = nil,
        ideTitle: String? = nil,
        tags: [RenderNode.Tag]? = nil
    ) 
```

#### Parameters

  - identifier: The identifier of this reference.
  - title: The title of the destination page.
  - abstract: The abstract of the destination page.
  - url: The topic url of the destination page.
  - kind: The kind of page that's referenced.
  - required: Whether the reference is required in its parent context.
  - role: The additional "role" assigned to the symbol, if any.
  - fragments: The abbreviated declaration of the symbol to display in links, or `nil` if the referenced page is not a symbol.
  - navigatorTitle: The abbreviated declaration of the symbol to display in navigation, or `nil` if the referenced page is not a symbol.
  - estimatedTime: The estimated time to complete the topic.
  - conformance: Information about conditional conformance for the symbol, or `nil` if the referenced page is not a symbol.
  - isBeta: Whether this symbol is built for a beta platform, or `false` if the referenced page is not a symbol.
  - isDeprecated: Whether this symbol is deprecated, or `false` if the referenced page is not a symbol.
  - defaultImplementationCount: Number of default implementations for this symbol, or `nil` if the referenced page is not a symbol.
  - titleStyle: Information about which title to use in links to this page.
  - name: Raw name of a symbol, e.g. "com.apple.enableDataAccess", or `nil` if the referenced page is not a symbol.
  - ideTitle: The human friendly symbol name, or `nil` if the referenced page is not a symbol.
  - tags: An optional list of string tags.

### `init(identifier:titleVariants:abstractVariants:url:kind:required:role:fragmentsVariants:navigatorTitleVariants:estimatedTime:conformance:isBeta:isDeprecated:defaultImplementationCount:titleStyle:name:ideTitle:tags:)`

Creates a new topic reference with all its initial values.

``` swift
public init(
        identifier: RenderReferenceIdentifier,
        titleVariants: VariantCollection<String>,
        abstractVariants: VariantCollection<[RenderInlineContent]>,
        url: String,
        kind: RenderNode.Kind,
        required: Bool = false,
        role: String? = nil,
        fragmentsVariants: VariantCollection<[DeclarationRenderSection.Token]?> = .init(defaultValue: nil),
        navigatorTitleVariants: VariantCollection<[DeclarationRenderSection.Token]?> = .init(defaultValue: nil),
        estimatedTime: String?,
        conformance: ConformanceSection? = nil,
        isBeta: Bool = false,
        isDeprecated: Bool = false,
        defaultImplementationCount: Int? = nil,
        titleStyle: TitleStyle? = nil,
        name: String? = nil,
        ideTitle: String? = nil,
        tags: [RenderNode.Tag]? = nil
    ) 
```

#### Parameters

  - identifier: The identifier of this reference.
  - titleVariants: The variants for the title of the destination page.
  - abstract: The abstract of the destination page.
  - url: The topic url of the destination page.
  - kind: The kind of page that's referenced.
  - required: Whether the reference is required in its parent context.
  - role: The additional "role" assigned to the symbol, if any.
  - fragments: The abbreviated declaration of the symbol to display in links, or `nil` if the referenced page is not a symbol.
  - navigatorTitle: The abbreviated declaration of the symbol to display in navigation, or `nil` if the referenced page is not a symbol.
  - estimatedTime: The estimated time to complete the topic.
  - conformance: Information about conditional conformance for the symbol, or `nil` if the referenced page is not a symbol.
  - isBeta: Whether this symbol is built for a beta platform, or `false` if the referenced page is not a symbol.
  - isDeprecated: Whether this symbol is deprecated, or `false` if the referenced page is not a symbol.
  - defaultImplementationCount: Number of default implementations for this symbol, or `nil` if the referenced page is not a symbol.
  - titleStyle: Information about which title to use in links to this page.
  - name: Raw name of a symbol, e.g. "com.apple.enableDataAccess", or `nil` if the referenced page is not a symbol.
  - ideTitle: The human friendly symbol name, or `nil` if the referenced page is not a symbol.
  - tags: An optional list of string tags.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `type`

The type of this reference.

``` swift
public var type: RenderReferenceType = .topic
```

This value is always `.topic`.

### `identifier`

The identifier of the reference.

``` swift
public var identifier: RenderReferenceIdentifier
```

### `title`

The title of the destination page.

``` swift
public var title: String 
```

### `titleVariants`

The variants of the title.

``` swift
public var titleVariants: VariantCollection<String>
```

### `url`

The topic url for the destination page.

``` swift
public var url: String
```

### `abstract`

The abstract of the destination page.

``` swift
public var abstract: [RenderInlineContent] 
```

### `abstractVariants`

``` swift
public var abstractVariants: VariantCollection<[RenderInlineContent]> 
```

### `kind`

The kind of page that's referenced.

``` swift
public var kind: RenderNode.Kind
```

### `required`

Whether the reference is required in its parent context.

``` swift
public var required: Bool
```

### `role`

The additional "role" assigned to the symbol, if any

``` swift
public var role: String?
```

This value is `nil` if the referenced page is not a symbol.

### `fragments`

The abbreviated declaration of the symbol to display in links

``` swift
public var fragments: [DeclarationRenderSection.Token]? 
```

This value is `nil` if the referenced page is not a symbol.

### `fragmentsVariants`

``` swift
public var fragmentsVariants: VariantCollection<[DeclarationRenderSection.Token]?> 
```

### `navigatorTitle`

The abbreviated declaration of the symbol to display in navigation

``` swift
public var navigatorTitle: [DeclarationRenderSection.Token]? 
```

This value is `nil` if the referenced page is not a symbol.

### `navigatorTitleVariants`

``` swift
public var navigatorTitleVariants: VariantCollection<[DeclarationRenderSection.Token]?> 
```

### `conformance`

Information about conditional conformance for the symbol

``` swift
public var conformance: ConformanceSection?
```

This value is `nil` if the referenced page is not a symbol.

### `estimatedTime`

The estimated time to complete the topic.

``` swift
public var estimatedTime: String?
```

### `defaultImplementationCount`

Number of default implementations for the symbol

``` swift
public var defaultImplementationCount: Int?
```

This value is `nil` if the referenced page is not a symbol.

### `isBeta`

A value that indicates whether this symbol is built for a beta platform

``` swift
public var isBeta: Bool
```

This value is `false` if the referenced page is not a symbol.

### `isDeprecated`

A value that indicates whether this symbol is deprecated

``` swift
public var isDeprecated: Bool
```

This value is `false` if the referenced page is not a symbol.

### `titleStyle`

Information about which title to use in links to this page.

``` swift
public var titleStyle: TitleStyle?
```

For symbols that have multiple possible titles (for example property list keys and entitlements) the title style decides which title to use in links.

### `name`

Raw name of a symbol, e.g. "com.apple.enableDataAccess"

``` swift
public var name: String?
```

This value is `nil` if the referenced page is not a symbol.

### `ideTitle`

The human friendly symbol name

``` swift
public var ideTitle: String?
```

This value is `nil` if the referenced page is not a symbol.

### `tags`

An optional list of text-based tags.

``` swift
public var tags: [RenderNode.Tag]?
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
