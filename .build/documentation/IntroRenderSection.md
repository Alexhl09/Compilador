# IntroRenderSection

A generic high impact section that may be rendered differently depending on the page type.

``` swift
public struct IntroRenderSection: RenderSection, Equatable 
```

## Inheritance

`Equatable`, [`RenderSection`](/RenderSection)

## Initializers

### `init(title:)`

Creates a new generic introductory section.

``` swift
public init(title: String) 
```

#### Parameters

  - title: The title of the section.

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
public let kind: RenderSectionKind = .hero
```

### `title`

The title of the intro.

``` swift
public var title: String
```

### `chapter`

If defined for a Tutorial page, the parent chapter of the tutorial.

``` swift
public var chapter: String?
```

### `estimatedTimeInMinutes`

An estimation, in minutes, of how much time is needed to read a documentation page.

``` swift
public var estimatedTimeInMinutes: Int?
```

### `xcodeRequirement`

An Xcode requirement.

``` swift
public var xcodeRequirement: RenderReferenceIdentifier?
```

This is the minimum version of Xcode that is required in order to follow this tutorial.

### `backgroundImage`

An image to display behind the section.

``` swift
public var backgroundImage: RenderReferenceIdentifier?
```

### `action`

An action to perform.

``` swift
public var action: RenderInlineContent?
```

### `image`

A key image to display.

``` swift
public var image: RenderReferenceIdentifier?
```

### `video`

A video to display modally.

``` swift
public var video: RenderReferenceIdentifier?
```

### `projectFiles`

A project download reference, if available.

``` swift
public var projectFiles: RenderReferenceIdentifier?
```

### `content`

Arbitrary content to display under the subheading.

``` swift
public var content: [RenderBlockContent] = []
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
