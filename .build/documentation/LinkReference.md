# LinkReference

A reference to a URL.

``` swift
public struct LinkReference: RenderReference 
```

## Inheritance

[`RenderReference`](/RenderReference)

## Initializers

### `init(identifier:title:titleInlineContent:url:)`

Creates a new link reference with its initial values.

``` swift
public init(identifier: RenderReferenceIdentifier, title: String, titleInlineContent: [RenderInlineContent]? = nil, url: String) 
```

#### Parameters

  - identifier: The identifier of this reference.
  - title: The plain text title of the destination page.
  - titleInlineContent: The formatted title of the destination page.
  - url: The topic url for the destination page.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `type`

The type of this link reference.

``` swift
public var type: RenderReferenceType = .link
```

This value is always `.link`.

### `identifier`

The identifier of this reference.

``` swift
public var identifier: RenderReferenceIdentifier
```

### `title`

The plain text title of the destination page.

``` swift
public var title: String
```

### `titleInlineContent`

The formatted title of the destination page.

``` swift
public var titleInlineContent: [RenderInlineContent]
```

### `url`

The topic url for the destination page.

``` swift
public var url: String
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
