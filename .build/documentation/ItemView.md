# ItemView

``` swift
@IBDesignable
public class ItemView: UIView, ItemType 
```

## Inheritance

[`ItemType`](/ItemType), `UIView`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `text`

``` swift
public var text: Character? = nil 
```

### `isHiddenCursor`

``` swift
public var isHiddenCursor: Bool = true 
```

### `label`

``` swift
public let label: UILabel 
```

### `cursor`

``` swift
public let cursor: UIView 
```

## Methods

### `layoutSubviews()`

``` swift
override public func layoutSubviews() 
```

### `set(appearance:)`

``` swift
public func set(appearance: ItemAppearance) 
```
