# AuthenticationError

Represents various authentication failures that occur when using the `AuthenticationInterceptor`. All errors are
still vended from Alamofire as `AFError` types. The `AuthenticationError` instances will be embedded within
`AFError` `.requestAdaptationFailed` or `.requestRetryFailed` cases.

``` swift
public enum AuthenticationError: Error 
```

## Inheritance

`Error`, `Error`, `Error`

## Enumeration Cases

### `missingCredential`

The credential was missing so the request could not be authenticated.

``` swift
case missingCredential
```

### `excessiveRefresh`

The credential was refreshed too many times within the `RefreshWindow`.

``` swift
case excessiveRefresh
```

### `missingCredential`

The credential was missing so the request could not be authenticated.

``` swift
case missingCredential
```

### `excessiveRefresh`

The credential was refreshed too many times within the `RefreshWindow`.

``` swift
case excessiveRefresh
```

### `missingCredential`

The credential was missing so the request could not be authenticated.

``` swift
case missingCredential
```

### `excessiveRefresh`

The credential was refreshed too many times within the `RefreshWindow`.

``` swift
case excessiveRefresh
```
