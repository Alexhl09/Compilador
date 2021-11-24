# SRGBColor

A color in the sRGB color space, with normalized components.

``` swift
public struct SRGBColor: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(red:green:blue:alpha:)`

Creates a color value given individual RGBA values.

``` swift
public init(red: UInt8, green: UInt8, blue: UInt8, alpha: Double) 
```

#### Parameters

  - red: The normalized red component of the color.
  - green: The normalized green component of the color.
  - blue: The normalized blue component of the color.
  - alpha: The alpha component of the color.

### `init?(from:)`

<dl>
<dt><code>canImport(UIKit)</code></dt>
<dd>

Creates a new instance from the given `UIColor`.

``` swift
public init?(from uiColor: UIColor) 
```

</dd>
</dl>

### `init?(from:)`

<dl>
<dt><code>canImport(AppKit)</code></dt>
<dd>

Creates a new instance from the given `NSColor`.

``` swift
public init?(from nsColor: NSColor) 
```

</dd>
</dl>

## Properties

### `red`

The normalized red component of the color.

``` swift
public var red: UInt8
```

### `green`

The normalized green component of the color.

``` swift
public var green: UInt8
```

### `blue`

The normalized blue component of the color.

``` swift
public var blue: UInt8
```

### `alpha`

The alpha component of the color.

``` swift
public var alpha: Double
```
