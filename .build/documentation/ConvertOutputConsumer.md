# ConvertOutputConsumer

A consumer for output produced by a documentation conversion.

``` swift
public protocol ConvertOutputConsumer 
```

Types that conform to this protocol manage what to do with documentation conversion products, for example persist them to disk
or store them in memory.

## Default Implementations

### `consume(renderReferenceStore:)`

``` swift
func consume(renderReferenceStore: RenderReferenceStore) throws 
```

### `consume(buildMetadata:)`

``` swift
func consume(buildMetadata: BuildMetadata) throws 
```

## Requirements

### consume(problems:​)

Consumes an array of problems that were generated during a conversion.

``` swift
func consume(problems: [Problem]) throws
```

### consume(renderNode:​)

Consumes a render node that was generated during a conversion.

``` swift
func consume(renderNode: RenderNode) throws
```

> Warning: This method might be called concurrently.

### consume(assetsInBundle:​)

Consumes a documentation bundle with the purpose of extracting its on-disk assets.

``` swift
func consume(assetsInBundle bundle: DocumentationBundle) throws
```

### consume(linkableElementSummaries:​)

Consumes the linkable element summaries produced during a conversion.

``` swift
func consume(linkableElementSummaries: [LinkDestinationSummary]) throws
```

### consume(indexingRecords:​)

Consumes the indexing records produced during a conversion.

``` swift
func consume(indexingRecords: [IndexingRecord]) throws
```

### consume(assets:​)

Consumes the assets and their variants that were registered during a conversion.

``` swift
func consume(assets: [RenderReferenceType: [RenderReference]]) throws
```

### consume(benchmarks:​)

Consumes benchmarks collected during a conversion.

``` swift
func consume(benchmarks: Benchmark) throws
```

### consume(documentationCoverageInfo:​)

Consumes documentation coverage info created during a conversion.

``` swift
func consume(documentationCoverageInfo: [CoverageDataEntry]) throws
```

> 

### consume(renderReferenceStore:​)

Consumes a render reference store creating during a conversion.

``` swift
func consume(renderReferenceStore: RenderReferenceStore) throws
```

### consume(buildMetadata:​)

Consumes build metadata created during a conversion.

``` swift
func consume(buildMetadata: BuildMetadata) throws
```
