# RenderNodeDataExtractor

Extracts metadata from a render node.

``` swift
public final class RenderNodeDataExtractor 
```

The `RenderNodeDataExtractor` extracts information from a RenderNode JSON file that can't be decoded using JSONDecoder.
This happens if the JSON has a different schema than the one supported by the current version.

## Initializers

### `init(with:)`

Initialize the extractor with the JSON data.

``` swift
public init(with data: Data) throws 
```

## Properties

### `projectFiles`

Returns the URL and checksum of the project files, if existing.

``` swift
public var projectFiles: (url: URL, checksum: String)? 
```
