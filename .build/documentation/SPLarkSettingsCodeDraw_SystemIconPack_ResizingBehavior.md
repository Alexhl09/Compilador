# SPLarkSettingsCodeDraw.SystemIconPack.ResizingBehavior

``` swift
@objc(StyleKitNameResizingBehavior)
        public enum ResizingBehavior: Int 
```

## Inheritance

`Int`

## Enumeration Cases

### `aspectFit`

``` swift
case aspectFit
```

### `aspectFill`

The content is proportionally resized to fit into the target rectangle.

``` swift
case aspectFill
```

### `stretch`

The content is proportionally resized to completely fill the target rectangle.

``` swift
case stretch
```

### `center`

The content is stretched to match the entire target rectangle.

``` swift
case center
```

## Methods

### `apply(rect:target:)`

The content is centered in the target rectangle, but it is NOT resized.

``` swift
public func apply(rect: CGRect, target: CGRect) -> CGRect 
```
