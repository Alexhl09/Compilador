# ScaledToSizeCircleFilter

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Scales an image to a specified size, then rounds the corners into a circle.

``` swift
public struct ScaledToSizeCircleFilter: CompositeImageFilter 
```

</dd>
</dl>

## Inheritance

[`CompositeImageFilter`](/CompositeImageFilter)

## Initializers

### `init(size:)`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Initializes the `ScaledToSizeCircleFilter` instance with the given size.

``` swift
public init(size: CGSize) 
```

#### Parameters

  - size: The size.

#### Returns

The new `ScaledToSizeCircleFilter` instance.

</dd>
</dl>

## Properties

### `filters`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

The image filters to apply to the image in sequential order.

``` swift
public let filters: [ImageFilter]
```

</dd>
</dl>
