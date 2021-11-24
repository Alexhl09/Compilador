# TutorialAssessmentsRenderSection.Assessment.Choice

A render-friendly representation of an answer to a
multiple-choice assessment question.

``` swift
public struct Choice: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(content:isCorrect:justification:reaction:)`

Creates a new choice from the given parameters.

``` swift
public init(content: [RenderBlockContent], isCorrect: Bool, justification: [RenderBlockContent]?, reaction: String?) 
```

#### Parameters

  - content: The content of the choice.
  - isCorrect: A Boolean value that determines whether this choice is correct.
  - justification: An explanation of why this choice is correct or incorrect.
  - reaction: Additional text that can be displayed if this choice is selected.

## Properties

### `content`

The content of the choice.

``` swift
public var content: [RenderBlockContent]
```

### `isCorrect`

A Boolean value that determines whether this choice is correct.

``` swift
public var isCorrect: Bool
```

### `justification`

An explanation of why this choice is correct or incorrect.

``` swift
public var justification: [RenderBlockContent]?
```

### `reaction`

Additional text that can be displayed if this choice is selected.

``` swift
public var reaction: String?
```
