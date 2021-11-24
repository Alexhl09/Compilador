# NSUIView

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open class NSUIView: NSView
```

</dd>
</dl>

## Inheritance

`NSAccessibilityGroup`, `NSAccessibilityGroup`, `NSView`, `UIView`

## Initializers

### `init(frame:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
public override init(frame frameRect: NSRect)
```

</dd>
</dl>

### `init?(coder:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
required public init?(coder decoder: NSCoder)
```

</dd>
</dl>

## Properties

### `isAccessibilityElement`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
public final override var isAccessibilityElement: Bool
```

</dd>
</dl>

### `isAccessibilityElement`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
public final override var isAccessibilityElement: Bool
```

</dd>
</dl>

### `isFlipped`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
public final override var isFlipped: Bool
```

</dd>
</dl>

### `backgroundColor`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open var backgroundColor: NSUIColor?
```

</dd>
</dl>

## Methods

### `accessibilityChildren()`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

An array of accessibilityElements that is used to implement UIAccessibilityContainer internally.
Subclasses **MUST** override this with an array of such elements.

``` swift
@objc open func accessibilityChildren() -> [Any]?
```

</dd>
</dl>

### `accessibilityChildren()`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

An array of accessibilityElements that is used to implement UIAccessibilityContainer internally.
Subclasses **MUST** override this with an array of such elements.

``` swift
@objc open func accessibilityChildren() -> [Any]?
```

</dd>
</dl>

### `accessibilityElementCount()`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
open override func accessibilityElementCount() -> Int
```

</dd>
</dl>

### `accessibilityElementCount()`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
open override func accessibilityElementCount() -> Int
```

</dd>
</dl>

### `accessibilityElement(at:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
open override func accessibilityElement(at index: Int) -> Any?
```

</dd>
</dl>

### `accessibilityElement(at:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
open override func accessibilityElement(at index: Int) -> Any?
```

</dd>
</dl>

### `index(ofAccessibilityElement:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
open override func index(ofAccessibilityElement element: Any) -> Int
```

</dd>
</dl>

### `index(ofAccessibilityElement:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
open override func index(ofAccessibilityElement element: Any) -> Int
```

</dd>
</dl>

### `accessibilityLabel()`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func accessibilityLabel() -> String?
```

</dd>
</dl>

### `accessibilityLabel()`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func accessibilityLabel() -> String?
```

</dd>
</dl>

### `accessibilityRows()`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func accessibilityRows() -> [Any]?
```

</dd>
</dl>

### `accessibilityRows()`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func accessibilityRows() -> [Any]?
```

</dd>
</dl>

### `touchesBegan(_:with:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
public final override func touchesBegan(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
```

</dd>
</dl>

### `touchesMoved(_:with:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
public final override func touchesMoved(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
```

</dd>
</dl>

### `touchesEnded(_:with:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
public final override func touchesEnded(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
```

</dd>
</dl>

### `touchesCancelled(_:with:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
public final override func touchesCancelled(_ touches: Set<NSUITouch>, with event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesBegan(_:withEvent:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
@objc open func nsuiTouchesBegan(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesMoved(_:withEvent:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
@objc open func nsuiTouchesMoved(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesEnded(_:withEvent:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
@objc open func nsuiTouchesEnded(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesCancelled(_:withEvent:)`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
@objc open func nsuiTouchesCancelled(_ touches: Set<NSUITouch>?, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `touchesBegan(with:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
public final override func touchesBegan(with event: NSEvent)
```

</dd>
</dl>

### `touchesEnded(with:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
public final override func touchesEnded(with event: NSEvent)
```

</dd>
</dl>

### `touchesMoved(with:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
public final override func touchesMoved(with event: NSEvent)
```

</dd>
</dl>

### `touchesCancelled(with:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func touchesCancelled(with event: NSEvent)
```

</dd>
</dl>

### `nsuiTouchesBegan(_:withEvent:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open func nsuiTouchesBegan(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesMoved(_:withEvent:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open func nsuiTouchesMoved(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesEnded(_:withEvent:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open func nsuiTouchesEnded(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesCancelled(_:withEvent:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open func nsuiTouchesCancelled(_ touches: Set<NSUITouch>?, withEvent event: NSUIEvent?)
```

</dd>
</dl>
