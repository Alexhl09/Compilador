# ConvertResponse

A response for a successful documentation conversion.

``` swift
public struct ConvertResponse: Codable 
```

This response is sent by a `ConvertService` if the conversion was successful. If the conversion was not successful, a
`ConvertServiceError` is returned instead.

## Inheritance

`Codable`

## Initializers

### `init(renderNodes:renderReferenceStore:)`

Creates a conversion response given the render nodes that were created as part of the conversion.

``` swift
public init(renderNodes: [Data], renderReferenceStore: Data? = nil) 
```

## Properties

### `renderNodes`

The render nodes that were created as part of the conversion, encoded as JSON.

``` swift
public var renderNodes: [Data]
```

### `renderReferenceStore`

The render reference store that was created as part of the bundle's conversion, encoded as JSON.

``` swift
public var renderReferenceStore: Data?
```

The `RenderReferenceStore` contains compiled information for documentation nodes that were registered as part of
the conversion. This information can be used as a lightweight index of the available documentation content in the bundle that's
been converted.
