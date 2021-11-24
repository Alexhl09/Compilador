# ICandleChartDataSet

``` swift
@objc
public protocol ICandleChartDataSet: ILineScatterCandleRadarChartDataSet
```

## Inheritance

[`ILineScatterCandleRadarChartDataSet`](/ILineScatterCandleRadarChartDataSet)

## Requirements

### barSpace

the space that is left out on the left and right side of each candle,
**default**:​ 0.1 (10%), max 0.45, min 0.0

``` swift
var barSpace: CGFloat 
```

### showCandleBar

should the candle bars show?
when false, only "ticks" will show

``` swift
var showCandleBar: Bool 
```

**default**: true

### shadowWidth

the width of the candle-shadow-line in pixels.

``` swift
var shadowWidth: CGFloat 
```

**default**: 3.0

### shadowColor

the color of the shadow line

``` swift
var shadowColor: NSUIColor? 
```

### shadowColorSameAsCandle

use candle color for the shadow

``` swift
var shadowColorSameAsCandle: Bool 
```

### isShadowColorSameAsCandle

Is the shadow color same as the candle color?

``` swift
var isShadowColorSameAsCandle: Bool 
```

### neutralColor

color for open == close

``` swift
var neutralColor: NSUIColor? 
```

### increasingColor

color for open \> close

``` swift
var increasingColor: NSUIColor? 
```

### decreasingColor

color for open \< close

``` swift
var decreasingColor: NSUIColor? 
```

### increasingFilled

Are increasing values drawn as filled?

``` swift
var increasingFilled: Bool 
```

### isIncreasingFilled

Are increasing values drawn as filled?

``` swift
var isIncreasingFilled: Bool 
```

### decreasingFilled

Are decreasing values drawn as filled?

``` swift
var decreasingFilled: Bool 
```

### isDecreasingFilled

Are decreasing values drawn as filled?

``` swift
var isDecreasingFilled: Bool 
```
