# RenderNodeProvider

A protocol to provide data to be indexed.

``` swift
public protocol RenderNodeProvider 
```

## Requirements

### getRenderNode()

Get an instance of `RenderNode` to be processed by the index.

``` swift
func getRenderNode() -> RenderNode?
```

> 

### getProblems()

Returns an array of `Problem` indicating which problems the `Provider` encountered.

``` swift
func getProblems() -> [Problem]
```
