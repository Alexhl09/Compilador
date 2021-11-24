# RenderReferenceStore

A storage for render reference information.

``` swift
public struct RenderReferenceStore: Codable 
```

This store stores render references which can be looked up during `RenderNode` conversion. It's commonly created by a
`RenderContext`, which precomputes render reference information before render node conversion.

## See Also

  - `RenderContext`

## Inheritance

`Codable`

## Initializers

### `init(topics:assets:)`

Creates a new render reference store given resolved topics and their reference information.

``` swift
public init(
        topics: [ResolvedTopicReference: TopicContent] = [:],
        assets: [AssetReference: DataAsset] = [:]
    ) 
```

## Properties

### `topics`

The topics in the store.

``` swift
public var topics: [ResolvedTopicReference: TopicContent]
```

### `assets`

The assets in the store.

``` swift
public var assets: [AssetReference: DataAsset]
```

## Methods

### `content(for:)`

Returns render reference information for the given topic.

``` swift
public func content(for topic: ResolvedTopicReference) -> TopicContent? 
```

### `content(forAssetNamed:bundleIdentifier:)`

Returns asset information for the given asset name.

``` swift
public func content(forAssetNamed assetName: String, bundleIdentifier: String) -> DataAsset? 
```
