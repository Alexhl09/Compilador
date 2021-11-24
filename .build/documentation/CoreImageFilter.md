# CoreImageFilter

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

The `CoreImageFilter` protocol defines `parameters`, `filterName` properties used by CoreImage.

``` swift
@available(iOS 9.0, *)
public protocol CoreImageFilter: ImageFilter 
```

</dd>
</dl>

## Inheritance

[`ImageFilter`](/ImageFilter)

## Requirements

### filterName

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

The filter name of the CoreImage filter.

``` swift
var filterName: String 
```

</dd>
</dl>

### parameters

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

The image filter parameters passed to CoreImage.

``` swift
var parameters: [String: Any] 
```

</dd>
</dl>
