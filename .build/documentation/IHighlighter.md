# IHighlighter

``` swift
@objc(IChartHighlighter)
public protocol IHighlighter: class
```

## Inheritance

`class`

## Requirements

### getHighlight(x:​y:​)

``` swift
func getHighlight(x: CGFloat, y: CGFloat) -> Highlight?
```

  - Parameters:
      - x:
      - y:
  - Returns: A Highlight object corresponding to the given x- and y- touch positions in pixels.
