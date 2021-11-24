# SemanticVisitor

Visits `Semantic` nodes and returns a result.

``` swift
public protocol SemanticVisitor 
```

> Note: This interface only provides requirements for visiting each kind of node. It does not require each visit method to descend into child nodes.

## Default Implementations

### `visit(_:)`

``` swift
public mutating func visit(_ semantic: Semantic) -> Result 
```

## Requirements

### Result

The result type returned when visiting a node.

``` swift
associatedtype Result
```

### visit(\_:​)

Visit any kind of `Semantic` node and return the result.

``` swift
mutating func visit(_ semantic: Semantic) -> Result
```

### visitCode(\_:​)

Visit a `Code` and return the result.

``` swift
mutating func visitCode(_ code: Code) -> Result
```

### visitStep(\_:​)

Visit a `Step` and return the result.

``` swift
mutating func visitStep(_ step: Step) -> Result
```

### visitSteps(\_:​)

Visit a `Steps` and return the result.

``` swift
mutating func visitSteps(_ steps: Steps) -> Result
```

### visitTutorialSection(\_:​)

Visit a `TutorialSection` and return the result.

``` swift
mutating func visitTutorialSection(_ tutorialSection: TutorialSection) -> Result
```

### visitTutorial(\_:​)

Visit a `Tutorial` and return the result.

``` swift
mutating func visitTutorial(_ tutorial: Tutorial) -> Result
```

### visitIntro(\_:​)

Visit a `Intro` and return the result.

``` swift
mutating func visitIntro(_ intro: Intro) -> Result
```

### visitXcodeRequirement(\_:​)

Visit an `XcodeRequirement` and return the result.

``` swift
mutating func visitXcodeRequirement(_ xcodeRequirement: XcodeRequirement) -> Result
```

### visitAssessments(\_:​)

Visit an `Assessments` section and return the result.

``` swift
mutating func visitAssessments(_ assessments: Assessments) -> Result
```

### visitMultipleChoice(\_:​)

Visit a `MultipleChoice` assessment and return the result.

``` swift
mutating func visitMultipleChoice(_ multipleChoice: MultipleChoice) -> Result
```

### visitJustification(\_:​)

Visit a `Justification` and return the result.

``` swift
mutating func visitJustification(_ justification: Justification) -> Result
```

### visitChoice(\_:​)

Visit a `Choice` and return the result.

``` swift
mutating func visitChoice(_ choice: Choice) -> Result
```

### visitMarkupContainer(\_:​)

Visit a `MarkupContainer` and return the result.

``` swift
mutating func visitMarkupContainer(_ markupContainer: MarkupContainer) -> Result
```

### visitTechnology(\_:​)

Visit a `Technology` and return the result.

``` swift
mutating func visitTechnology(_ technology: Technology) -> Result
```

### visitImageMedia(\_:​)

Visit an `ImageMedia` and return the result.

``` swift
mutating func visitImageMedia(_ imageMedia: ImageMedia) -> Result
```

### visitVideoMedia(\_:​)

Visit an `VideoMedia` and return the result.

``` swift
mutating func visitVideoMedia(_ videoMedia: VideoMedia) -> Result
```

### visitContentAndMedia(\_:​)

Visit a `ContentAndMedia` and return the result.

``` swift
mutating func visitContentAndMedia(_ contentAndMedia: ContentAndMedia) -> Result
```

### visitVolume(\_:​)

Visit a `Volume` and return the result.

``` swift
mutating func visitVolume(_ volume: Volume) -> Result
```

### visitChapter(\_:​)

Visit a `Chapter` and return the result.

``` swift
mutating func visitChapter(_ chapter: Chapter) -> Result
```

### visitTutorialReference(\_:​)

Visit a `TutorialReference` and return the result.

``` swift
mutating func visitTutorialReference(_ tutorialReference: TutorialReference) -> Result
```

### visitResources(\_:​)

Visit a `Resources` page and return the result.

``` swift
mutating func visitResources(_ resources: Resources) -> Result
```

### visitTile(\_:​)

Visit a `Tile` and return the result.

``` swift
mutating func visitTile(_ tile: Tile) -> Result
```

### visitComment(\_:​)

Visit a `Comment` and return the result.

``` swift
mutating func visitComment(_ comment: Comment) -> Result
```

### visitTutorialArticle(\_:​)

``` swift
mutating func visitTutorialArticle(_ article: TutorialArticle) -> Result
```

### visitStack(\_:​)

``` swift
mutating func visitStack(_ stack: Stack) -> Result
```

### visitSymbol(\_:​)

``` swift
mutating func visitSymbol(_ symbol: Symbol) -> Result
```

### visitArticle(\_:​)

``` swift
mutating func visitArticle(_ article: Article) -> Result
```

### visitDeprecationSummary(\_:​)

``` swift
mutating func visitDeprecationSummary(_ summary: DeprecationSummary) -> Result
```
