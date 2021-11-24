# ComponentBase

This class encapsulates everything both Axis, Legend and LimitLines have in common

``` swift
@objc(ChartComponentBase)
open class ComponentBase: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init()`

``` swift
public override init()
```

## Properties

### `enabled`

flag that indicates if this component is enabled or not

``` swift
@objc open var enabled = true
```

### `xOffset`

The offset this component has on the x-axis
**default**:​ 5.0

``` swift
@objc open var xOffset 
```

### `yOffset`

The offset this component has on the x-axis
**default**:​ 5.0 (or 0.0 on ChartYAxis)

``` swift
@objc open var yOffset 
```

### `isEnabled`

``` swift
@objc open var isEnabled: Bool 
```
