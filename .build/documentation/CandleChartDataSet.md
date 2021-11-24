# CandleChartDataSet

``` swift
open class CandleChartDataSet: LineScatterCandleRadarChartDataSet, ICandleChartDataSet
```

## Inheritance

[`LineScatterCandleRadarChartDataSet`](/LineScatterCandleRadarChartDataSet), [`ICandleChartDataSet`](/ICandleChartDataSet)

## Initializers

### `init()`

``` swift
public required init()
```

### `init(entries:label:)`

``` swift
public override init(entries: [ChartDataEntry]?, label: String?)
```

## Properties

### `barSpace`

the space that is left out on the left and right side of each candle,
**default**:​ 0.1 (10%), max 0.45, min 0.0

``` swift
open var barSpace: CGFloat
```

### `showCandleBar`

should the candle bars show?
when false, only "ticks" will show

``` swift
open var showCandleBar: Bool = true
```

**default**: true

### `shadowWidth`

the width of the candle-shadow-line in pixels.

``` swift
open var shadowWidth 
```

**default**: 1.5

### `shadowColor`

the color of the shadow line

``` swift
open var shadowColor: NSUIColor?
```

### `shadowColorSameAsCandle`

use candle color for the shadow

``` swift
open var shadowColorSameAsCandle = false
```

### `isShadowColorSameAsCandle`

Is the shadow color same as the candle color?

``` swift
open var isShadowColorSameAsCandle: Bool 
```

### `neutralColor`

color for open == close

``` swift
open var neutralColor: NSUIColor?
```

### `increasingColor`

color for open \> close

``` swift
open var increasingColor: NSUIColor?
```

### `decreasingColor`

color for open \< close

``` swift
open var decreasingColor: NSUIColor?
```

### `increasingFilled`

Are increasing values drawn as filled?
increasing candlesticks are traditionally hollow

``` swift
open var increasingFilled = false
```

### `isIncreasingFilled`

Are increasing values drawn as filled?

``` swift
open var isIncreasingFilled: Bool 
```

### `decreasingFilled`

Are decreasing values drawn as filled?
descreasing candlesticks are traditionally filled

``` swift
open var decreasingFilled = true
```

### `isDecreasingFilled`

Are decreasing values drawn as filled?

``` swift
open var isDecreasingFilled: Bool 
```

## Methods

### `calcMinMax(entry:)`

``` swift
open override func calcMinMax(entry e: ChartDataEntry)
```

### `calcMinMaxY(entry:)`

``` swift
open override func calcMinMaxY(entry e: ChartDataEntry)
```
