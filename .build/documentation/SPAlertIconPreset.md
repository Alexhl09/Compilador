# SPAlertIconPreset

Represent icon wrapper.
Included default styles and can be custom image.

``` swift
public enum SPAlertIconPreset 
```

## Enumeration Cases

### `done`

``` swift
case done
```

### `error`

``` swift
case error
```

### `heart`

``` swift
case heart
```

### `custom`

``` swift
case custom(_ image: UIImage)
```

## Methods

### `createView()`

``` swift
func createView() -> UIView 
```

### `getHaptic()`

``` swift
func getHaptic() -> SPAlertHaptic 
```
