# IScatterChartDataSet

``` swift
@objc
public protocol IScatterChartDataSet: ILineScatterCandleRadarChartDataSet
```

## Inheritance

[`ILineScatterCandleRadarChartDataSet`](/ILineScatterCandleRadarChartDataSet)

## Requirements

### scatterShapeSize

The size the scatter shape will have

``` swift
var scatterShapeSize: CGFloat 
```

### scatterShapeHoleRadius

``` swift
var scatterShapeHoleRadius: CGFloat 
```

  - Returns: The radius of the hole in the shape (applies to Square, Circle and Triangle)
    Set this to \<= 0 to remove holes.
    **default**: 0.0

### scatterShapeHoleColor

``` swift
var scatterShapeHoleColor: NSUIColor? 
```

  - Returns: Color for the hole in the shape. Setting to `nil` will behave as transparent.
    **default**: nil

### shapeRenderer

The IShapeRenderer responsible for rendering this DataSet.

``` swift
var shapeRenderer: IShapeRenderer? 
```
