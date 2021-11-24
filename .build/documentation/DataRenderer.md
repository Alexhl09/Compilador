# DataRenderer

``` swift
@objc(ChartDataRendererBase)
open class DataRenderer: Renderer
```

## Inheritance

[`Renderer`](/Renderer)

## Initializers

### `init(animator:viewPortHandler:)`

``` swift
@objc public init(animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `animator`

``` swift
@objc public let animator: Animator
```

## Methods

### `drawData(context:)`

``` swift
@objc open func drawData(context: CGContext)
```

### `drawValues(context:)`

``` swift
@objc open func drawValues(context: CGContext)
```

### `drawExtras(context:)`

``` swift
@objc open func drawExtras(context: CGContext)
```

### `drawHighlighted(context:indices:)`

Draws all highlight indicators for the values that are currently highlighted.

``` swift
@objc open func drawHighlighted(context: CGContext, indices: [Highlight])
```

#### Parameters

  - indices: the highlighted values

### `initBuffers()`

An opportunity for initializing internal buffers used for rendering with a new size.
Since this might do memory allocations, it should only be called if necessary.

``` swift
@objc open func initBuffers() 
```

### `isDrawingValuesAllowed(dataProvider:)`

``` swift
@objc open func isDrawingValuesAllowed(dataProvider: ChartDataProvider?) -> Bool
```
