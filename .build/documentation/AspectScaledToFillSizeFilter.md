# AspectScaledToFillSizeFilter

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Scales an image from the center while maintaining the aspect ratio to fill a specified size. Any pixels that fall
outside the specified size are clipped.

``` swift
public struct AspectScaledToFillSizeFilter: ImageFilter, Sizable 
```

</dd>
</dl>

## Inheritance

[`ImageFilter`](/ImageFilter), [`Sizable`](/Sizable)

## Initializers

### `init(size:)`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Initializes the `AspectScaledToFillSizeFilter` instance with the given size.

``` swift
public init(size: CGSize) 
```

#### Parameters

  - size: The size.

#### Returns

The new `AspectScaledToFillSizeFilter` instance.

</dd>
</dl>

## Properties

### `size`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

The size of the filter.

``` swift
public let size: CGSize
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
