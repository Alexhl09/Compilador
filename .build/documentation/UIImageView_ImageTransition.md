# UIImageView.ImageTransition

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

Used to wrap all `UIView` animation transition options alongside a duration.

``` swift
public enum ImageTransition 
```

</dd>
</dl>

## Enumeration Cases

### `noTransition`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case noTransition
```

</dd>
</dl>

### `crossDissolve`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case crossDissolve(TimeInterval)
```

</dd>
</dl>

### `curlDown`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case curlDown(TimeInterval)
```

</dd>
</dl>

### `curlUp`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case curlUp(TimeInterval)
```

</dd>
</dl>

### `flipFromBottom`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case flipFromBottom(TimeInterval)
```

</dd>
</dl>

### `flipFromLeft`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case flipFromLeft(TimeInterval)
```

</dd>
</dl>

### `flipFromRight`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case flipFromRight(TimeInterval)
```

</dd>
</dl>

### `flipFromTop`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case flipFromTop(TimeInterval)
```

</dd>
</dl>

### `custom`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

``` swift
case custom(duration: TimeInterval,
                    animationOptions: AnimationOptions,
                    animations: (UIImageView, Image) -> Void,
                    completion: ((Bool) -> Void)?)
```

</dd>
</dl>

## Properties

### `duration`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

The duration of the image transition in seconds.

``` swift
public var duration: TimeInterval 
```

</dd>
</dl>

### `animationOptions`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

The animation options of the image transition.

``` swift
public var animationOptions: AnimationOptions 
```

</dd>
</dl>

### `animations`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

The animation options of the image transition.

``` swift
public var animations: (UIImageView, Image) -> Void 
```

</dd>
</dl>

### `completion`

<dl>
<dt><code>os(iOS) || os(tvOS)</code></dt>
<dd>

The completion closure associated with the image transition.

``` swift
public var completion: ((Bool) -> Void)? 
```

</dd>
</dl>
