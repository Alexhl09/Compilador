# NodeURLGenerator

``` swift
public struct NodeURLGenerator 
```

## Initializers

### `init(baseURL:)`

``` swift
public init(baseURL: URL? = nil) 
```

## Properties

### `baseURL`

The URL to use as base for all URLs in the bundle.

``` swift
public var baseURL: URL
```

Leaves to the model to determine a base URL for the presentation, e.g.
there might be a path prefix coming from Info.plist or elsewhere.
Here are some examples:

  - baseURL("/") ~\> /tutorials/SwiftUI/TutorialName

  - baseURL("/prefix") ~\> /prefix/tutorials/SwiftUI/TutorialName

  - baseURL("doc://org.swift.example-bundle") ~\> doc://org.swift.example-bundle/Example/TutorialName

  - baseURL("http://domain.com/prefix") ~\> http://domain.com/prefix/tutorials/Example/TutorialName

## Methods

### `pathForSemantic(_:source:bundle:)`

Returns a string path appropriate for the given semantic node.

``` swift
public static func pathForSemantic(_ semantic: Semantic, source: URL, bundle: DocumentationBundle) -> String 
```

### `urlForReference(_:lowercased:)`

Returns a URL appropriate for the given reference.

``` swift
public func urlForReference(_ reference: ResolvedTopicReference, lowercased: Bool = false) -> URL 
```

### `fileSafeURL(_:)`

Patch path components for writing to the file system.

``` swift
public func fileSafeURL(_ url: URL) -> URL 
```

We replace path unsafe characters when generating DocC references.
When writing files on disk, however, and or hosting those files in a web environment
there might be more complex rules for "safe" paths beyond simply replacing a set of
characters. For example a period is a safe character but when a file path component
starts with a period that might be problematic when hosted on a generic web server.
