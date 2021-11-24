# CallToActionSection

A section that prompts the user to perform an action.

``` swift
public struct CallToActionSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(title:abstract:media:action:featuredEyebrow:)`

Creates a new call-to-action section from the given parameters.

``` swift
public init(title: String, abstract: [RenderInlineContent], media: RenderReferenceIdentifier?, action: RenderInlineContent, featuredEyebrow: String) 
```

#### Parameters

  - title: The title of the section.
  - abstract: The content for the section's abstract.
  - media: A reference to a media item.
  - featuredEyebrow: A short description of the section.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .callToAction
```

### `title`

The title of the section.

``` swift
public var title: String
```

### `abstract`

The abstract to display under the title.

``` swift
public var abstract: [RenderInlineContent] = []
```

### `media`

An intro-style image or video to display under the content.

``` swift
public var media: RenderReferenceIdentifier?
```

### `action`

The primary action to perform.

``` swift
public var action: RenderInlineContent
```

### `featuredEyebrow`

A short description of the section.

``` swift
public var featuredEyebrow: String?
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
