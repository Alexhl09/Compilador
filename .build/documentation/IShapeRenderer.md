# IShapeRenderer

``` swift
@objc
public protocol IShapeRenderer: class
```

## Inheritance

`class`

## Requirements

### renderShape(context:​dataSet:​viewPortHandler:​point:​color:​)

Renders the provided ScatterDataSet with a shape.

``` swift
func renderShape(
        context: CGContext,
        dataSet: IScatterChartDataSet,
        viewPortHandler: ViewPortHandler,
        point: CGPoint,
        color: NSUIColor)
```

#### Parameters

  - context: CGContext for drawing on
  - dataSet: The DataSet to be drawn
  - viewPortHandler: Contains information about the current state of the view
  - point: Position to draw the shape at
  - color: Color to draw the shape
