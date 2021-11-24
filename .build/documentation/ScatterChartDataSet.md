# ScatterChartDataSet

``` swift
open class ScatterChartDataSet: LineScatterCandleRadarChartDataSet, IScatterChartDataSet
```

## Inheritance

[`LineScatterCandleRadarChartDataSet`](/LineScatterCandleRadarChartDataSet), [`IScatterChartDataSet`](/IScatterChartDataSet)

## Properties

### `scatterShapeSize`

The size the scatter shape will have

``` swift
open var scatterShapeSize 
```

### `scatterShapeHoleRadius`

The radius of the hole in the shape (applies to Square, Circle and Triangle)
**default**:​ 0.0

``` swift
open var scatterShapeHoleRadius: CGFloat = 0.0
```

### `scatterShapeHoleColor`

Color for the hole in the shape. Setting to `nil` will behave as transparent.
**default**:​ nil

``` swift
open var scatterShapeHoleColor: NSUIColor? = nil
```

### `shapeRenderer`

The IShapeRenderer responsible for rendering this DataSet.
This can also be used to set a custom IShapeRenderer aside from the default ones.
**default**:​ `SquareShapeRenderer`

``` swift
open var shapeRenderer: IShapeRenderer? 
```

## Methods

### `setScatterShape(_:)`

Sets the ScatterShape this DataSet should be drawn with.
This will search for an available IShapeRenderer and set this renderer for the DataSet

``` swift
@objc open func setScatterShape(_ shape: Shape)
```

### `renderer(forShape:)`

``` swift
@objc open class func renderer(forShape shape: Shape) -> IShapeRenderer
```

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
