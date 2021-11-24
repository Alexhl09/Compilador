# CircleFilter

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Rounds the corners of an image into a circle.

``` swift
public struct CircleFilter: ImageFilter 
```

</dd>
</dl>

## Inheritance

[`ImageFilter`](/ImageFilter)

## Initializers

### `init()`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS)</code></dt>
<dd>

Initializes the `CircleFilter` instance.

``` swift
public init() 
```

#### Returns

The new `CircleFilter` instance.

</dd>
</dl>

## Properties

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
