# URLEncodedFormEncoder.DataEncoding

Encoding to use for `Data` values.

``` swift
public enum DataEncoding 
```

## Enumeration Cases

### `deferredToData`

Defers encoding to the `Data` type.

``` swift
case deferredToData
```

### `base64`

Encodes `Data` as a Base64-encoded string. This is the default encoding.

``` swift
case base64
```

### `custom`

Encode the `Data` as a custom value encoded by the given closure.

``` swift
case custom((Data) throws -> String)
```

### `deferredToData`

Defers encoding to the `Data` type.

``` swift
case deferredToData
```

### `base64`

Encodes `Data` as a Base64-encoded string. This is the default encoding.

``` swift
case base64
```

### `custom`

Encode the `Data` as a custom value encoded by the given closure.

``` swift
case custom((Data) throws -> String)
```

### `deferredToData`

Defers encoding to the `Data` type.

``` swift
case deferredToData
```

### `base64`

Encodes `Data` as a Base64-encoded string. This is the default encoding.

``` swift
case base64
```

### `custom`

Encode the `Data` as a custom value encoded by the given closure.

``` swift
case custom((Data) throws -> String)
```
