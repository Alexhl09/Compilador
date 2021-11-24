# Tutorial

A tutorial to complete in order to gain knowledge of a `Technology`.

``` swift
public final class Tutorial: Semantic, DirectiveConvertible, Abstracted, Titled, Timed, Redirected 
```

## Inheritance

[`Semantic`](/Semantic), [`Abstracted`](/Abstracted), [`DirectiveConvertible`](/DirectiveConvertible), [`Redirected`](/Redirected), [`Timed`](/Timed), [`Titled`](/Titled)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Tutorial"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `durationMinutes`

The estimated time in minutes that the containing `Tutorial` will take.

``` swift
public let durationMinutes: Int?
```

### `projectFiles`

Project files to download to get started with the `Tutorial`.

``` swift
public let projectFiles: ResourceReference?
```

### `requirements`

Informal requirements to complete the `Tutorial`.

``` swift
public let requirements: [XcodeRequirement]
```

### `intro`

The Intro section, representing a slide that introduces the tutorial.

``` swift
public let intro: Intro
```

### `sections`

All of the sections to complete to finish the tutorial.

``` swift
public let sections: [TutorialSection]
```

### `landmarks`

The linkable parts of the tutorial.

``` swift
public var landmarks: [Landmark] 
```

Allows you to direct link to discrete sections within a tutorial.

### `assessments`

A section containing various questions to test the reader's knowledge.

``` swift
public let assessments: Assessments?
```

### `callToActionImage`

An image for the final call to action, which directs the reader to the starting point to learn about this category.

``` swift
public let callToActionImage: ImageMedia?
```

### `abstract`

``` swift
public var abstract: Paragraph? 
```

### `title`

``` swift
public var title: String? 
```

### `redirects`

``` swift
public let redirects: [Redirect]?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
