# RoundedCornersFilter

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Rounds the corners of an image to the specified radius.

``` swift
public struct RoundedCornersFilter: ImageFilter, Roundable 
```

</dd>
</dl>

## Inheritance

[`ImageFilter`](/ImageFilter), [`Roundable`](/Roundable)

## Initializers

### `init(radius:divideRadiusByImageScale:)`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Initializes the `RoundedCornersFilter` instance with the given radius.

``` swift
public init(radius: CGFloat, divideRadiusByImageScale: Bool = false) 
```

#### Parameters

  - radius: The radius.
  - divideRadiusByImageScale: Whether to divide the radius by the image scale. Set to `true` when the image has the same resolution for all screen scales such as @1x, @2x and @3x (i.e. single image from web server). Set to `false` for images loaded from an asset catalog with varying resolutions for each screen scale. `false` by default.

#### Returns

The new `RoundedCornersFilter` instance.

</dd>
</dl>

## Properties

### `radius`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

The radius of the filter.

``` swift
public let radius: CGFloat
```

</dd>
</dl>

### `divideRadiusByImageScale`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Whether to divide the radius by the image scale.

``` swift
public let divideRadiusByImageScale: Bool
```

</dd>
</dl>

### `filter`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

The filter closure used to create the modified representation of the given image.

``` swift
public var filter: (Image) -> Image 
```

</dd>
</dl>

### `identifier`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

The unique idenitifier for an `ImageFilter` conforming to the `Roundable` protocol.

``` swift
public var identifier: String 
```

</dd>
</dl>
