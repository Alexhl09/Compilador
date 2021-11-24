# TutorialAssessmentsRenderSection

A section that checks the user's understanding of the concepts presented in a tutorial.

``` swift
public struct TutorialAssessmentsRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(assessments:anchor:)`

Creates a new assessment section from the given list of questions.

``` swift
public init(assessments: [Assessment], anchor: String) 
```

#### Parameters

  - assessments: The questions for this assessment section.
  - anchor: An identifier for this assessment section.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .assessments
```

### `assessments`

The questions for this assessment section.

``` swift
public var assessments: [Assessment]
```

### `anchor`

An identifier for this section of the page.

``` swift
public var anchor: String
```

The identifier can be used to construct an anchor link to this section of the page.

### `title`

The display title for an assessments section.

``` swift
public static let title = "Check Your Understanding"
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
