# MarkerView

``` swift
@objc(ChartMarkerView)
open class MarkerView: NSUIView, IMarker
```

## Inheritance

[`NSUIView`](/NSUIView), [`NSUIView`](/NSUIView), [`IMarker`](/IMarker)

## Properties

### `offset`

``` swift
open var offset: CGPoint 
```

### `chartView`

``` swift
@objc open weak var chartView: ChartViewBase?
```

## Methods

### `offsetForDrawing(atPoint:)`

``` swift
open func offsetForDrawing(atPoint point: CGPoint) -> CGPoint
```

### `refreshContent(entry:highlight:)`

``` swift
open func refreshContent(entry: ChartDataEntry, highlight: Highlight)
```

### `draw(context:point:)`

``` swift
open func draw(context: CGContext, point: CGPoint)
```

### `viewFromXib(in:)`

``` swift
@objc
    open class func viewFromXib(in bundle: Bundle = .main) -> MarkerView?
```
