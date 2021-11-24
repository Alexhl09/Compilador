# RenderContext

A context object that pre-renders commonly used pieces of content.

``` swift
public struct RenderContext 
```

Use this object for a fast pre-rendered content lookup when you are
converting nodes in bulk, i.e. when converting a complete documentation model for example.

## Initializers

### `init(documentationContext:bundle:)`

Creates a new render context.

``` swift
public init(documentationContext: DocumentationContext, bundle: DocumentationBundle) 
```

> 

#### Parameters

  - documentationContext: A documentation context.
  - bundle: A documentation bundle.

## Properties

### `store`

The pre-rendered content per node reference.

``` swift
private(set) public var store 
```
