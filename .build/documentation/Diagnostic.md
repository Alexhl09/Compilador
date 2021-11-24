# Diagnostic

A diagnostic explains a problem or issue that needs the end-user's attention.

``` swift
public struct Diagnostic: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Initializers

### `init(source:severity:range:identifier:summary:explanation:notes:)`

``` swift
public init(source: URL?, severity: DiagnosticSeverity, range: SourceRange?, identifier: String, summary: String, explanation: String? = nil, notes: [DiagnosticNote] = []) 
```

## Properties

### `source`

The origin of the diagnostic, such as a file or process.

``` swift
public var source: URL?
```

### `severity`

The diagnostic's severity.

``` swift
public var severity: DiagnosticSeverity
```

### `range`

The diagnostic's source range if the diagnostic originated at a source document, else `nil`.

``` swift
public var range: SourceRange?
```

### `identifier`

A unique reverse-DNS-style string identifier used for looking up explanations for diagnostics.

``` swift
public var identifier: String
```

#### Example

`org.swift.docc.AbstractContainsLink`

### `localizedSummary`

Provides the short, localized abstract provided by `localizedExplanation` in plain text if an
explanation is available.

``` swift
public var localizedSummary: String 
```

At a bare minimum, all diagnostics must have at least one paragraph or sentence describing what the diagnostic is.

### `localizedExplanation`

Provides a markup document for this diagnostic in the end-user's most preferred language, the base language
if one isn't available, or `nil` if no explanations are provided for this diagnostic's identifier.

``` swift
public var localizedExplanation: String?
```

> 

An explanation should have at least the following items:

  - Document

  - Abstract: A summary paragraph; one or two sentences.

  - Discussion: A discussion of the situation and why it's interesting or a problem for the end-user.
    This discussion should implicitly justify the diagnostic's existence.

  - Heading, level 2, text: "Example"

  - Problem Example: Show an example of the problematic situation and highlight important areas.

  - Heading, level 2, text: "Solution"

  - Solution: Explain what the end-user needs to do to correct the problem in plain language.

  - Solution Example: Show the *Problem Example* as corrected and highlight the changes made.

### `notes`

Extra notes to tack onto the editor for additional information.

``` swift
public var notes 
```

For example, if you're diagnosing the fact that there are multiple *X* in a document, you might diagnose on
the second *X* while adding a note on the first *X* to note that it was the first occurrence.

### `localizedDescription`

``` swift
var localizedDescription: String 
```

### `errorDescription`

``` swift
var errorDescription: String 
```

## Methods

### `offsetedWithRange(_:)`

Returns a copy of the diagnostic but offset using a certain `SourceRange`.
Useful when validating a doc comment that needs to be projected in its containing file "space".

``` swift
func offsetedWithRange(_ docRange: SymbolGraph.LineList.SourceRange) -> Diagnostic 
```
