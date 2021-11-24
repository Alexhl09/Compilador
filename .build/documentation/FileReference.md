# FileReference

A reference to a file resource.

``` swift
public struct FileReference: RenderReference 
```

File resources are used, for example, to display the contents of a source code file in a Tutorial's step.

## Inheritance

[`RenderReference`](/RenderReference)

## Initializers

### `init(identifier:fileName:fileType:syntax:content:)`

Creates a new file reference.

``` swift
public init(identifier: RenderReferenceIdentifier, fileName: String, fileType: String, syntax: String, content: [String]) 
```

#### Parameters

  - identifier: The identifier for this file reference.
  - fileName: The name of the references file.
  - fileType: The type of file, typically represented by its file extension.
  - syntax: The syntax of the file's content.
  - content: The line-by-line contents of the file.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `type`

The type of this file reference.

``` swift
public var type: RenderReferenceType = .file
```

This value is always `.file`.

### `identifier`

The identifier of this reference.

``` swift
public var identifier: RenderReferenceIdentifier
```

### `fileName`

The name of the file.

``` swift
public var fileName: String
```

### `fileType`

The type of the file, typically represented by its file extension.

``` swift
public var fileType: String
```

### `syntax`

The syntax for the content in the file, for example "swift".

``` swift
public var syntax: String
```

You can use this value to identify the syntax of the content. This would allow, for example, a renderer to perform syntax highlighting of the file's content.

### `content`

The line-by-line contents of the file.

``` swift
public var content: [String]
```

### `highlights`

The line highlights for this file.

``` swift
public var highlights: [LineHighlighter.Highlight] = []
```
