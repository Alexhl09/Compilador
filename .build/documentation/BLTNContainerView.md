# BLTNContainerView

``` swift
@objc public class BLTNContainerView: UIView 
```

  - A view that contains another view without intrinsic content size.
  - 
  - The intrinsic content size is provided by this view, with the `contentSize` property.
  - 
  - You should not add subviews directly. Instead, call `setChildView(childView:constraintsBuilder:)`
  - to specify the view that should be displayed and position it with Auto Layout.

## Inheritance

`UIView`, `UIView`, `UIView`

## Properties

### `contentSize`

The size of the content displayed in this view.

``` swift
@objc public var contentSize: CGSize = .zero
```

### `intrinsicContentSize`

``` swift
public override var intrinsicContentSize: CGSize 
```

### `contentSize`

The size of the content displayed in this view.

``` swift
@objc public var contentSize: CGSize = .zero
```

### `intrinsicContentSize`

``` swift
public override var intrinsicContentSize: CGSize 
```

### `contentSize`

The size of the content displayed in this view.

``` swift
@objc public var contentSize: CGSize = .zero
```

### `intrinsicContentSize`

``` swift
public override var intrinsicContentSize: CGSize 
```

## Methods

### `setChildView(_:constraintsBuilder:)`

``` swift
@objc public func setChildView(_ childView: UIView, constraintsBuilder: @escaping (BLTNContainerView, UIView) -> Void) 
```

  - Adds the child view and configures the constraints.
  -   - parameter childView: The view to display inside the fixed-size container.
  -   - parameter constraintsBuilder: The block of code to executed for adding constaints to position
  - the child view.

### `setChildView(_:constraintsBuilder:)`

``` swift
@objc public func setChildView(_ childView: UIView, constraintsBuilder: @escaping (BLTNContainerView, UIView) -> Void) 
```

  - Adds the child view and configures the constraints.
  -   - parameter childView: The view to display inside the fixed-size container.
  -   - parameter constraintsBuilder: The block of code to executed for adding constaints to position
  - the child view.

### `setChildView(_:constraintsBuilder:)`

``` swift
@objc public func setChildView(_ childView: UIView, constraintsBuilder: @escaping (BLTNContainerView, UIView) -> Void) 
```

  - Adds the child view and configures the constraints.
  -   - parameter childView: The view to display inside the fixed-size container.
  -   - parameter constraintsBuilder: The block of code to executed for adding constaints to position
  - the child view.
