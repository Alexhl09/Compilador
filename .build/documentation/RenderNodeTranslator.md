# RenderNodeTranslator

A visitor which converts a semantic model into a render node.

``` swift
public struct RenderNodeTranslator: SemanticVisitor 
```

The translator visits the contents of a `DocumentationNode`'s `Semantic` model and creates a `RenderNode`.
The translation is lossy, meaning that translating a `RenderNode` back to a `Semantic` is not possible with full fidelity.
For example, source markup syntax is not preserved during the translation.

## Inheritance

[`SemanticVisitor`](/SemanticVisitor)

## Methods

### `visitCode(_:)`

``` swift
public mutating func visitCode(_ code: Code) -> RenderTree? 
```

### `visitSteps(_:)`

``` swift
public mutating func visitSteps(_ steps: Steps) -> RenderTree? 
```

### `visitStep(_:)`

``` swift
public mutating func visitStep(_ step: Step) -> RenderTree? 
```

### `visitTutorialSection(_:)`

``` swift
public mutating func visitTutorialSection(_ tutorialSection: TutorialSection) -> RenderTree? 
```

### `visitTutorial(_:)`

``` swift
public mutating func visitTutorial(_ tutorial: Tutorial) -> RenderTree? 
```

### `visitIntro(_:)`

``` swift
public mutating func visitIntro(_ intro: Intro) -> RenderTree? 
```

### `visitXcodeRequirement(_:)`

Add a requirement reference and return its identifier.

``` swift
public mutating func visitXcodeRequirement(_ requirement: XcodeRequirement) -> RenderTree? 
```

### `visitAssessments(_:)`

``` swift
public mutating func visitAssessments(_ assessments: Assessments) -> RenderTree? 
```

### `visitMultipleChoice(_:)`

``` swift
public mutating func visitMultipleChoice(_ multipleChoice: MultipleChoice) -> RenderTree? 
```

### `visitChoice(_:)`

``` swift
public mutating func visitChoice(_ choice: Choice) -> RenderTree? 
```

### `visitJustification(_:)`

``` swift
public mutating func visitJustification(_ justification: Justification) -> RenderTree? 
```

### `visitMarkupContainer(_:)`

``` swift
public mutating func visitMarkupContainer(_ markupContainer: MarkupContainer) -> RenderTree? 
```

### `visitMarkup(_:)`

``` swift
public mutating func visitMarkup(_ markup: [Markup]) -> RenderTree? 
```

### `visitMarkup(_:)`

``` swift
public mutating func visitMarkup(_ markup: Markup) -> RenderTree? 
```

### `visitTechnology(_:)`

``` swift
public mutating func visitTechnology(_ technology: Technology) -> RenderTree? 
```

### `visitVolume(_:)`

``` swift
public mutating func visitVolume(_ volume: Volume) -> RenderTree? 
```

### `visitImageMedia(_:)`

``` swift
public mutating func visitImageMedia(_ imageMedia: ImageMedia) -> RenderTree? 
```

### `visitVideoMedia(_:)`

``` swift
public mutating func visitVideoMedia(_ videoMedia: VideoMedia) -> RenderTree? 
```

### `visitChapter(_:)`

``` swift
public mutating func visitChapter(_ chapter: Chapter) -> RenderTree? 
```

### `visitContentAndMedia(_:)`

``` swift
public mutating func visitContentAndMedia(_ contentAndMedia: ContentAndMedia) -> RenderTree? 
```

### `visitTutorialReference(_:)`

``` swift
public mutating func visitTutorialReference(_ tutorialReference: TutorialReference) -> RenderTree? 
```

### `visitResolvedTopicReference(_:)`

``` swift
public mutating func visitResolvedTopicReference(_ resolvedTopicReference: ResolvedTopicReference) -> RenderTree 
```

### `visitResources(_:)`

``` swift
public mutating func visitResources(_ resources: Resources) -> RenderTree? 
```

### `visitLink(_:defaultTitle:)`

``` swift
public mutating func visitLink(_ link: URL, defaultTitle overridingTitle: String?) -> RenderInlineContent 
```

### `visitTile(_:)`

``` swift
public mutating func visitTile(_ tile: Tile) -> RenderTree? 
```

### `visitArticle(_:)`

``` swift
public mutating func visitArticle(_ article: Article) -> RenderTree? 
```

### `visitTutorialArticle(_:)`

``` swift
public mutating func visitTutorialArticle(_ article: TutorialArticle) -> RenderTree? 
```

### `visitStack(_:)`

``` swift
public mutating func visitStack(_ stack: Stack) -> RenderTree? 
```

### `visitComment(_:)`

``` swift
public mutating func visitComment(_ comment: Comment) -> RenderTree? 
```

### `visitDeprecationSummary(_:)`

``` swift
public mutating func visitDeprecationSummary(_ summary: DeprecationSummary) -> RenderTree? 
```

### `visitSymbol(_:)`

``` swift
public mutating func visitSymbol(_ symbol: Symbol) -> RenderTree? 
```
