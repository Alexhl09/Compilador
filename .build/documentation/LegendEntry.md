# LegendEntry

``` swift
@objc(ChartLegendEntry)
open class LegendEntry: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init()`

``` swift
public override init()
```

### `init(label:form:formSize:formLineWidth:formLineDashPhase:formLineDashLengths:formColor:)`

``` swift
@objc public init(label: String?,
                form: Legend.Form,
                formSize: CGFloat,
                formLineWidth: CGFloat,
                formLineDashPhase: CGFloat,
                formLineDashLengths: [CGFloat]?,
                formColor: NSUIColor?)
```

  - Parameters:
      - label:                  The legend entry text.
        A `nil` label will start a group.
      - form:                   The form to draw for this entry.
      - formSize:               Set to NaN to use the legend's default.
      - formLineWidth:          Set to NaN to use the legend's default.
      - formLineDashPhase:      Line dash configuration.
      - formLineDashLengths:    Line dash configurationas NaN to use the legend's default.
      - formColor:              The color for drawing the form.

## Properties

### `label`

The legend entry text.
A `nil` label will start a group.

``` swift
@objc open var label: String?
```

### `form`

The form to draw for this entry.

``` swift
@objc open var form: Legend.Form = .default
```

`None` will avoid drawing a form, and any related space.
`Empty` will avoid drawing a form, but keep its space.
`Default` will use the Legend's default.

### `formSize`

Form size will be considered except for when .None is used

``` swift
@objc open var formSize: CGFloat = CGFloat.nan
```

Set as NaN to use the legend's default

### `formLineWidth`

Line width used for shapes that consist of lines.

``` swift
@objc open var formLineWidth: CGFloat = CGFloat.nan
```

Set to NaN to use the legend's default.

### `formLineDashPhase`

Line dash configuration for shapes that consist of lines.

``` swift
@objc open var formLineDashPhase: CGFloat = 0.0
```

This is how much (in pixels) into the dash pattern are we starting from.

Set to NaN to use the legend's default.

### `formLineDashLengths`

Line dash configuration for shapes that consist of lines.

``` swift
@objc open var formLineDashLengths: [CGFloat]?
```

This is the actual dash pattern.
I.e. \[2, 3\] will paint \[--   --   \]
\[1, 3, 4, 2\] will paint \[-   ----  -   ----  \]

Set to nil to use the legend's default.

### `formColor`

The color for drawing the form

``` swift
@objc open var formColor: NSUIColor?
```
