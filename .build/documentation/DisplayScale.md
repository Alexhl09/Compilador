# DisplayScale

The display-scale factor of a rendering environment.

``` swift
public enum DisplayScale: String, CaseIterable, Codable 
```

## See Also

  - [Image size and resolution](https://developer.apple.com/design/human-interface-guidelines/macos/icons-and-images/image-size-and-resolution/)

  - [`UIScreen.scale` documentation](https://developer.apple.com/documentation/uikit/uiscreen/1617836-scale)

## Inheritance

`CaseIterable`, `Codable`, `String`

## Enumeration Cases

### `standard`

The 1x scale factor.

``` swift
case standard = "1x"
```

### `double`

The 2x scale factor.

``` swift
case double = "2x"
```

### `triple`

The 3x scale factor.

``` swift
case triple = "3x"
```
