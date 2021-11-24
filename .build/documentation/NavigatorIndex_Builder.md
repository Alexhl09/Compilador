# NavigatorIndex.Builder

A `Builder` is a utility class to build a navigator index.

``` swift
open class Builder 
```

The builder generates an index for content navigation, but also maps important information to filter content based on availability, symbol type, platform and some others.

> 

## Initializers

### `init(renderNodeProvider:outputURL:bundleIdentifier:sortRootChildrenByName:groupByLanguage:writePathsOnDisk:usePageTitle:)`

Initialize a `Builder` with the given data provider and output URL.

``` swift
public init(renderNodeProvider: RenderNodeProvider? = nil, outputURL: URL, bundleIdentifier: String, sortRootChildrenByName: Bool = false, groupByLanguage: Bool = false, writePathsOnDisk: Bool = true, usePageTitle: Bool = false) 
```

#### Parameters

  - renderNodeProvider: The `RenderNode` provider to use.
  - outputURL: The URL to which the data should be written.
  - bundleIdentifier: The identifier of the bundle the index is built for.
  - sortRootChildren: Indicates if the root's children must be sorted by name.
  - groupByLanguage: Indicates if the tree needs to group the entries by language.
  - usePageTitle: Use the page title instead of the navigator title as the entry title.

## Properties

### `renderNodeProvider`

The data provider.

``` swift
public let renderNodeProvider: RenderNodeProvider?
```

### `outputURL`

The output URL.

``` swift
public let outputURL: URL
```

### `bundleIdentifier`

The bundle name.

``` swift
public let bundleIdentifier: String
```

### `sortRootChildrenByName`

Indicates if the root children must be sorted by title.

``` swift
public let sortRootChildrenByName: Bool
```

### `groupByLanguage`

Indicates if the children need to be grouped by languages.

``` swift
public let groupByLanguage: Bool
```

### `navigatorIndex`

The navigator index.

``` swift
public private(set) var navigatorIndex: NavigatorIndex?
```

### `problems`

An array holding all problems encountered during the index build.

``` swift
public private(set) var problems 
```

### `counter`

The number of items processed during a build.

``` swift
public private(set) var counter = 0
```

### `isCompleted`

Indicates if a building process has been completed.

``` swift
public private(set) var isCompleted = false
```

## Methods

### `setup()`

Setup the builder to process render nodes.

``` swift
public func setup() 
```

### `index(renderNode:)`

Index a single render `RenderNode`.

``` swift
public func index(renderNode: RenderNode) throws 
```

#### Parameters

  - renderNode: The render node to be indexed.

### `finalize(estimatedCount:)`

Finalize the process by writing the content on disk.

``` swift
public func finalize(estimatedCount: Int? = nil) 
```

### `build()`

Build the index using the passed instance of `RenderNodeProvider` if available.

``` swift
public func build() -> [Problem] 
```

> 

#### Returns

A list containing all the problems encountered during indexing.
