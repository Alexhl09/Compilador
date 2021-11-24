# URLEncodedFormParameterEncoder.Destination

Defines where the URL-encoded string should be set for each `URLRequest`.

``` swift
public enum Destination 
```

## Enumeration Cases

### `methodDependent`

Applies the encoded query string to any existing query string for `.get`, `.head`, and `.delete` request.
Sets it to the `httpBody` for all other methods.

``` swift
case methodDependent
```

### `queryString`

Applies the encoded query string to any existing query string from the `URLRequest`.

``` swift
case queryString
```

### `httpBody`

Applies the encoded query string to the `httpBody` of the `URLRequest`.

``` swift
case httpBody
```

### `methodDependent`

Applies the encoded query string to any existing query string for `.get`, `.head`, and `.delete` request.
Sets it to the `httpBody` for all other methods.

``` swift
case methodDependent
```

### `queryString`

Applies the encoded query string to any existing query string from the `URLRequest`.

``` swift
case queryString
```

### `httpBody`

Applies the encoded query string to the `httpBody` of the `URLRequest`.

``` swift
case httpBody
```

### `methodDependent`

Applies the encoded query string to any existing query string for `.get`, `.head`, and `.delete` request.
Sets it to the `httpBody` for all other methods.

``` swift
case methodDependent
```

### `queryString`

Applies the encoded query string to any existing query string from the `URLRequest`.

``` swift
case queryString
```

### `httpBody`

Applies the encoded query string to the `httpBody` of the `URLRequest`.

``` swift
case httpBody
```
