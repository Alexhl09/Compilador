# QRCode

QRCode generator

``` swift
public struct QRCode 
```

## Initializers

### `init(_:)`

``` swift
public init(_ data: Data) 
```

### `init?(_:)`

``` swift
public init?(_ string: String) 
```

### `init?(_:)`

``` swift
public init?(_ url: URL) 
```

## Properties

### `data`

Data contained in the generated QRCode

``` swift
public let data: Data
```

### `color`

Foreground color of the output
Defaults to black

``` swift
public var color 
```

### `backgroundColor`

Background color of the output
Defaults to white

``` swift
public var backgroundColor 
```

### `size`

Size of the output

``` swift
public var size 
```

### `errorCorrection`

The error correction. The default value is `.Low`.

``` swift
public var errorCorrection = ErrorCorrection.Low
```

### `image`

The QRCode's UIImage representation

``` swift
public var image: UIImage? 
```

### `ciImage`

The QRCode's CIImage representation

``` swift
public var ciImage: CIImage? 
```
