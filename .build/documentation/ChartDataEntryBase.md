# ChartDataEntryBase

``` swift
open class ChartDataEntryBase: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init()`

``` swift
public override required init()
```

### `init(y:)`

An Entry represents one single entry in the chart.

``` swift
@objc public init(y: Double)
```

#### Parameters

  - y: the y value (the actual value of the entry)

### `init(y:data:)`

``` swift
@objc public convenience init(y: Double, data: Any?)
```

  - Parameters:
      - y: the y value (the actual value of the entry)
      - data: Space for additional data this Entry represents.

### `init(y:icon:)`

``` swift
@objc public convenience init(y: Double, icon: NSUIImage?)
```

  - Parameters:
      - y: the y value (the actual value of the entry)
      - icon: icon image

### `init(y:icon:data:)`

``` swift
@objc public convenience init(y: Double, icon: NSUIImage?, data: Any?)
```

  - Parameters:
      - y: the y value (the actual value of the entry)
      - icon: icon image
      - data: Space for additional data this Entry represents.

## Properties

### `y`

the y value

``` swift
@objc open var y = 0.0
```

### `data`

optional spot for additional data this Entry represents

``` swift
@objc open var data: Any?
```

### `icon`

optional icon image

``` swift
@objc open var icon: NSUIImage?
```

### `description`

``` swift
open override var description: String
```

## Methods

### `isEqual(_:)`

``` swift
open override func isEqual(_ object: Any?) -> Bool 
```
