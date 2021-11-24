# InlineSortFunction

A `SortFunction` that animates the views in as if they were reading text from left to right (based on the corner that you set).

``` swift
public struct InlineSortFunction: CornerSortFunction 
```

> 

## Inheritance

[`CornerSortFunction`](/CornerSortFunction)

## Initializers

### `init(corner:interObjectDelay:)`

``` swift
public init(corner: Corner, interObjectDelay: TimeInterval) 
```

## Properties

### `interObjectDelay`

``` swift
public var interObjectDelay: TimeInterval
```

### `reversed`

``` swift
public var reversed: Bool = false
```

### `corner`

``` swift
public var corner: Corner
```

## Methods

### `timeOffsets(view:recursiveDepth:)`

``` swift
public func timeOffsets(view: UIView, recursiveDepth: Int) -> [TimedView] 
```
