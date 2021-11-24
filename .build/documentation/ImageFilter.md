# ImageFilter

The `ImageFilter` protocol defines properties for filtering an image as well as identification of the filter.

``` swift
public protocol ImageFilter 
```

## Default Implementations

### `identifier`

The unique identifier for any `ImageFilter` type.

``` swift
public var identifier: String 
```

### `identifier`

The unique idenitifier for an `ImageFilter` conforming to the `Sizable` protocol.

``` swift
public var identifier: String 
```

### `identifier`

The unique idenitifier for an `ImageFilter` conforming to the `Roundable` protocol.

``` swift
public var identifier: String 
```

### `filter`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

The filter closure used to create the modified representation of the given image.

``` swift
var filter: (Image) -> Image 
```

</dd>
</dl>

### `identifier`

<dl>
<dt><code>os(iOS) || os(tvOS) || os(watchOS), os(iOS) || os(tvOS)</code></dt>
<dd>

The unique idenitifier for an `ImageFilter` conforming to the `CoreImageFilter` protocol.

``` swift
var identifier: String 
```

</dd>
</dl>

## Requirements

### filter

A closure used to create an alternative representation of the given image.

``` swift
var filter: (Image) -> Image 
```

### identifier

The string used to uniquely identify the filter operation.

``` swift
var identifier: String 
```
