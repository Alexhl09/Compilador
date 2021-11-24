# Cell

``` swift
open class Cell: UIView 
```

## Inheritance

`Comparable`, `UIView`

## Initializers

### `init(frame:)`

``` swift
public override init(frame: CGRect) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

## Properties

### `contentView`

``` swift
public let contentView 
```

### `backgroundView`

``` swift
public var backgroundView: UIView? 
```

### `selectedBackgroundView`

``` swift
public var selectedBackgroundView: UIView? 
```

### `isHighlighted`

``` swift
open var isHighlighted = false 
```

### `isSelected`

``` swift
open var isSelected = false 
```

### `gridlines`

``` swift
public var gridlines 
```

### `grids`

``` swift
@available(*, deprecated: 0.6.3, renamed: "gridlines")
    public var grids: Gridlines 
```

### `borders`

``` swift
public var borders 
```

### `reuseIdentifier`

``` swift
public internal(set) var reuseIdentifier: String?
```

## Methods

### `prepareForReuse()`

``` swift
open func prepareForReuse() 
```

## Operators

### `<`

``` swift
public static func <(lhs: Cell, rhs: Cell) -> Bool 
```
