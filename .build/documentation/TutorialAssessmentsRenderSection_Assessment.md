# TutorialAssessmentsRenderSection.Assessment

A render-friendly representation of an assessment question.

``` swift
public struct Assessment: Codable, TextIndexing 
```

## Inheritance

`Codable`, [`TextIndexing`](/TextIndexing)

## Initializers

### `init(title:content:choices:)`

Creates a new multiple-choice assessment question from the given parameters.

``` swift
public init(title: [RenderBlockContent], content: [RenderBlockContent]?, choices: [Choice]) 
```

#### Parameters

  - title: The title of the assessment.
  - content: The content of the question.
  - choices: The possible answers to this question.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `type`

The type of assessment question.

``` swift
public var type = "multiple-choice"
```

The default value is `multiple-choice`.

### `title`

The title of the assessment.

``` swift
public var title: [RenderBlockContent]
```

### `content`

The content of this question.

``` swift
public var content: [RenderBlockContent]?
```

This content includes the phrasing of the question.

### `choices`

The possible answers to this multiple-choice question.

``` swift
public var choices: [Choice]
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
