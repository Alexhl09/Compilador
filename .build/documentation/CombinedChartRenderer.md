# CombinedChartRenderer

``` swift
open class CombinedChartRenderer: DataRenderer
```

## Inheritance

[`DataRenderer`](/DataRenderer)

## Initializers

### `init(chart:animator:viewPortHandler:)`

``` swift
@objc public init(chart: CombinedChartView, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `chart`

``` swift
@objc open weak var chart: CombinedChartView?
```

### `drawValueAboveBarEnabled`

if set to true, all values are drawn above their bars, instead of below their top

``` swift
@objc open var drawValueAboveBarEnabled = true
```

### `drawBarShadowEnabled`

if set to true, a grey area is drawn behind each bar that indicates the maximum value

``` swift
@objc open var drawBarShadowEnabled = false
```

### `subRenderers`

All sub-renderers.

``` swift
@objc open var subRenderers: [DataRenderer]
```

### `isDrawValueAboveBarEnabled`

`true` if drawing values above bars is enabled, `false` ifnot

``` swift
@objc open var isDrawValueAboveBarEnabled: Bool 
```

### `isDrawBarShadowEnabled`

`true` if drawing shadows (maxvalue) for each bar is enabled, `false` ifnot

``` swift
@objc open var isDrawBarShadowEnabled: Bool 
```

### `drawOrder`

the order in which the provided data objects should be drawn.
The earlier you place them in the provided array, the further they will be in the background.
e.g. if you provide \[DrawOrder.Bar, DrawOrder.Line\], the bars will be drawn behind the lines.

``` swift
open var drawOrder: [CombinedChartView.DrawOrder]
```

## Methods

### `initBuffers()`

``` swift
open override func initBuffers()
```

### `drawData(context:)`

``` swift
open override func drawData(context: CGContext)
```

### `drawValues(context:)`

``` swift
open override func drawValues(context: CGContext)
```

### `drawExtras(context:)`

``` swift
open override func drawExtras(context: CGContext)
```

### `drawHighlighted(context:indices:)`

``` swift
open override func drawHighlighted(context: CGContext, indices: [Highlight])
```

### `getSubRenderer(index:)`

``` swift
@objc open func getSubRenderer(index: Int) -> DataRenderer?
```

  - Returns: The sub-renderer object at the specified index.
