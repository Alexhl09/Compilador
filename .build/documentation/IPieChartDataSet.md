# IPieChartDataSet

``` swift
@objc
public protocol IPieChartDataSet: IChartDataSet
```

## Inheritance

[`IChartDataSet`](/IChartDataSet)

## Requirements

### sliceSpace

the space in pixels between the pie-slices
**default**:​ 0
**maximum**:​ 20

``` swift
var sliceSpace: CGFloat 
```

### automaticallyDisableSliceSpacing

When enabled, slice spacing will be 0.0 when the smallest value is going to be smaller than the slice spacing itself.

``` swift
var automaticallyDisableSliceSpacing: Bool 
```

### selectionShift

indicates the selection distance of a pie slice

``` swift
var selectionShift: CGFloat 
```

### xValuePosition

``` swift
var xValuePosition: PieChartDataSet.ValuePosition 
```

### yValuePosition

``` swift
var yValuePosition: PieChartDataSet.ValuePosition 
```

### valueLineColor

When valuePosition is OutsideSlice, indicates line color

``` swift
var valueLineColor: NSUIColor? 
```

### useValueColorForLine

When valuePosition is OutsideSlice and enabled, line will have the same color as the slice

``` swift
var useValueColorForLine: Bool 
```

### valueLineWidth

When valuePosition is OutsideSlice, indicates line width

``` swift
var valueLineWidth: CGFloat 
```

### valueLinePart1OffsetPercentage

When valuePosition is OutsideSlice, indicates offset as percentage out of the slice size

``` swift
var valueLinePart1OffsetPercentage: CGFloat 
```

### valueLinePart1Length

When valuePosition is OutsideSlice, indicates length of first half of the line

``` swift
var valueLinePart1Length: CGFloat 
```

### valueLinePart2Length

When valuePosition is OutsideSlice, indicates length of second half of the line

``` swift
var valueLinePart2Length: CGFloat 
```

### valueLineVariableLength

When valuePosition is OutsideSlice, this allows variable line length

``` swift
var valueLineVariableLength: Bool 
```

### entryLabelFont

the font for the slice-text labels

``` swift
var entryLabelFont: NSUIFont? 
```

### entryLabelColor

the color for the slice-text labels

``` swift
var entryLabelColor: NSUIColor? 
```

### highlightColor

get/sets the color for the highlighted sector

``` swift
var highlightColor: NSUIColor? 
```
