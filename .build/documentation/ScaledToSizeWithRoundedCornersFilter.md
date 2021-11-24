# ScaledToSizeWithRoundedCornersFilter

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Scales an image to a specified size, then rounds the corners to the specified radius.

``` swift
public struct ScaledToSizeWithRoundedCornersFilter: CompositeImageFilter 
```

</dd>
</dl>

## Inheritance

[`CompositeImageFilter`](/CompositeImageFilter)

## Initializers

### `init(size:radius:divideRadiusByImageScale:)`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Initializes the `ScaledToSizeWithRoundedCornersFilter` instance with the given size and radius.

``` swift
public init(size: CGSize, radius: CGFloat, divideRadiusByImageScale: Bool = false) 
```

#### Parameters

  - size: The size.
  - radius: The radius.
  - divideRadiusByImageScale: Whether to divide the radius by the image scale. Set to `true` when the image has the same resolution for all screen scales such as @1x, @2x and @3x (i.e. single image from web server). Set to `false` for images loaded from an asset catalog with varying resolutions for each screen scale. `false` by default.

#### Returns

The new `ScaledToSizeWithRoundedCornersFilter` instance.

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
