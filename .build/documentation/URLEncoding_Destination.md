# URLEncoding.Destination

Defines whether the url-encoded query string is applied to the existing query string or HTTP body of the
resulting URL request.

``` swift
public enum Destination 
```

  - methodDependent: Applies encoded query string result to existing query string for `GET`, `HEAD` and `DELETE`
    requests and sets as the HTTP body for requests with any other HTTP method.

  - queryString:     Sets or appends encoded query string result to existing query string.

  - httpBody:        Sets encoded query string result as the HTTP body of the URL request.

## Enumeration Cases

### `queryString`

``` swift
case methodDependent, queryString, httpBody
```

### `httpBody`

``` swift
case methodDependent, queryString, httpBody
```

### `methodDependent`

``` swift
case methodDependent, queryString, httpBody
```

### `queryString`

``` swift
case methodDependent, queryString, httpBody
```

### `methodDependent`

``` swift
case methodDependent, queryString, httpBody
```

### `httpBody`

``` swift
case methodDependent, queryString, httpBody
```

### `queryString`

``` swift
case methodDependent, queryString, httpBody
```

### `methodDependent`

``` swift
case methodDependent, queryString, httpBody
```

### `httpBody`

``` swift
case methodDependent, queryString, httpBody
```

### `methodDependent`

Applies encoded query string result to existing query string for `GET`, `HEAD` and `DELETE` requests and
sets as the HTTP body for requests with any other HTTP method.

``` swift
case methodDependent
```

### `queryString`

Sets or appends encoded query string result to existing query string.

``` swift
case queryString
```

### `httpBody`

Sets encoded query string result as the HTTP body of the URL request.

``` swift
case httpBody
```

### `methodDependent`

Applies encoded query string result to existing query string for `GET`, `HEAD` and `DELETE` requests and
sets as the HTTP body for requests with any other HTTP method.

``` swift
case methodDependent
```

### `queryString`

Sets or appends encoded query string result to existing query string.

``` swift
case queryString
```

### `httpBody`

Sets encoded query string result as the HTTP body of the URL request.

``` swift
case httpBody
```

### `methodDependent`

Applies encoded query string result to existing query string for `GET`, `HEAD` and `DELETE` requests and
sets as the HTTP body for requests with any other HTTP method.

``` swift
case methodDependent
```

### `queryString`

Sets or appends encoded query string result to existing query string.

``` swift
case queryString
```

### `httpBody`

Sets encoded query string result as the HTTP body of the URL request.

``` swift
case httpBody
```
