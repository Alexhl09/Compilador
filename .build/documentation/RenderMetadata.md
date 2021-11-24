# RenderMetadata

Arbitrary metadata for a render node.

``` swift
public struct RenderMetadata: VariantContainer 
```

## Inheritance

`Codable`, [`VariantContainer`](/VariantContainer)

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `category`

The name of technology associated with a tutorial.

``` swift
public var category: String?
```

### `categoryPathComponent`

``` swift
public var categoryPathComponent: String?
```

### `estimatedTime`

A description of the estimated time to complete the tutorials of a technology.

``` swift
public var estimatedTime: String?
```

### `modules`

The modules that the symbol is apart of.

``` swift
public var modules: [Module]? 
```

### `modulesVariants`

The variants for the modules.

``` swift
public var modulesVariants: VariantCollection<[Module]?> 
```

### `extendedModule`

The name of the module extension in which the symbol is defined, if applicable.

``` swift
public var extendedModule: String? 
```

### `extendedModuleVariants`

The variants for the module extension.

``` swift
public var extendedModuleVariants: VariantCollection<String?> 
```

### `platforms`

The platform availability information about a symbol.

``` swift
public var platforms: [AvailabilityRenderItem]? 
```

### `platformsVariants`

The variants for the platforms.

``` swift
public var platformsVariants: VariantCollection<[AvailabilityRenderItem]?> 
```

### `required`

Whether protocol method is required to be implemented by conforming types.

``` swift
public var required: Bool 
```

### `requiredVariants`

The variants for the `required` property.

``` swift
public var requiredVariants: VariantCollection<Bool> 
```

### `roleHeading`

A heading describing the type of the document.

``` swift
public var roleHeading: String? 
```

### `roleHeadingVariants`

The variants of the role heading.

``` swift
public var roleHeadingVariants: VariantCollection<String?> 
```

### `role`

The role of the document.

``` swift
public var role: String?
```

Examples of document roles include "symbol" or "sampleCode".

### `title`

The title of the page.

``` swift
public var title: String? 
```

### `titleVariants`

The variants of the title.

``` swift
public var titleVariants: VariantCollection<String?> 
```

### `externalID`

An identifier for a symbol generated externally.

``` swift
public var externalID: String? 
```

### `externalIDVariants`

The variants of the external ID.

``` swift
public var externalIDVariants: VariantCollection<String?> 
```

### `symbolKind`

The kind of a symbol, e.g., "class" or "func".

``` swift
public var symbolKind: String? 
```

### `symbolKindVariants`

The variants of the symbol kind.

``` swift
public var symbolKindVariants: VariantCollection<String?> 
```

### `symbolAccessLevel`

The access level of a symbol, e.g., "public" or "private".

``` swift
public var symbolAccessLevel: String? 
```

### `symbolAccessLevelVariants`

The variants for the access level of a symbol.

``` swift
public var symbolAccessLevelVariants: VariantCollection<String?> 
```

### `fragments`

Abbreviated declaration to display in links.

``` swift
public var fragments: [DeclarationRenderSection.Token]? 
```

### `fragmentsVariants`

The variants for the fragments of a page.

``` swift
public var fragmentsVariants: VariantCollection<[DeclarationRenderSection.Token]?> 
```

### `navigatorTitle`

Abbreviated declaration to display in navigators.

``` swift
public var navigatorTitle: [DeclarationRenderSection.Token]? 
```

### `navigatorTitleVariants`

The variants for the navigator title of a page.

``` swift
public var navigatorTitleVariants: VariantCollection<[DeclarationRenderSection.Token]?> 
```

### `extraMetadata`

Additional metadata associated with the render node.

``` swift
public var extraMetadata: [CodingKeys: Any] = [:]
```

### `conformance`

Information the availability of generic APIs.

``` swift
public var conformance: ConformanceSection?
```

### `sourceFileURI`

The URI of the source file in which the symbol was originally declared, suitable for display in a user interface.

``` swift
public var sourceFileURI: String? 
```

This information may not (and should not) always be available for many reasons,
such as compiler infrastructure limitations, or filesystem privacy and security concerns.

### `sourceFileURIVariants`

The variants for the source file URI of a page.

``` swift
public var sourceFileURIVariants: VariantCollection<String?> 
```

### `tags`

Any tags assigned to the node.

``` swift
public var tags: [RenderNode.Tag]?
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
