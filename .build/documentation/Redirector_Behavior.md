# Redirector.Behavior

Defines the behavior of the `Redirector` type.

``` swift
public enum Behavior 
```

## Enumeration Cases

### `follow`

Follow the redirect as defined in the response.

``` swift
case follow
```

### `doNotFollow`

Do not follow the redirect defined in the response.

``` swift
case doNotFollow
```

### `modify`

Modify the redirect request defined in the response.

``` swift
case modify((URLSessionTask, URLRequest, HTTPURLResponse) -> URLRequest?)
```

### `follow`

Follow the redirect as defined in the response.

``` swift
case follow
```

### `doNotFollow`

Do not follow the redirect defined in the response.

``` swift
case doNotFollow
```

### `modify`

Modify the redirect request defined in the response.

``` swift
case modify((URLSessionTask, URLRequest, HTTPURLResponse) -> URLRequest?)
```

### `follow`

Follow the redirect as defined in the response.

``` swift
case follow
```

### `doNotFollow`

Do not follow the redirect defined in the response.

``` swift
case doNotFollow
```

### `modify`

Modify the redirect request defined in the response.

``` swift
case modify((URLSessionTask, URLRequest, HTTPURLResponse) -> URLRequest?)
```
