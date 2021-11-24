# BlurFilter

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

Blurs an image using a `CIGaussianBlur` filter with the specified blur radius.

``` swift
@available(iOS 9.0, *)
public struct BlurFilter: ImageFilter, CoreImageFilter 
```

</dd>
</dl>

## Inheritance

[`ImageFilter`](/ImageFilter), [`CoreImageFilter`](/CoreImageFilter)

## Initializers

### `init(blurRadius:)`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

Initializes the `BlurFilter` instance with the given blur radius.

``` swift
public init(blurRadius: UInt = 10) 
```

#### Parameters

  - blurRadius: The blur radius.

#### Returns

The new `BlurFilter` instance.

</dd>
</dl>

## Properties

### `filterName`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

The filter name.

``` swift
public let filterName = "CIGaussianBlur"
```

</dd>
</dl>

### `parameters`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

The image filter parameters passed to CoreImage.

``` swift
public let parameters: [String: Any]
```

</dd>
</dl>
