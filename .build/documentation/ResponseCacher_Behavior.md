# ResponseCacher.Behavior

Defines the behavior of the `ResponseCacher` type.

``` swift
public enum Behavior 
```

## Enumeration Cases

### `cache`

Stores the cached response in the cache.

``` swift
case cache
```

### `doNotCache`

Prevents the cached response from being stored in the cache.

``` swift
case doNotCache
```

### `modify`

Modifies the cached response before storing it in the cache.

``` swift
case modify((URLSessionDataTask, CachedURLResponse) -> CachedURLResponse?)
```

### `cache`

Stores the cached response in the cache.

``` swift
case cache
```

### `doNotCache`

Prevents the cached response from being stored in the cache.

``` swift
case doNotCache
```

### `modify`

Modifies the cached response before storing it in the cache.

``` swift
case modify((URLSessionDataTask, CachedURLResponse) -> CachedURLResponse?)
```

### `cache`

Stores the cached response in the cache.

``` swift
case cache
```

### `doNotCache`

Prevents the cached response from being stored in the cache.

``` swift
case doNotCache
```

### `modify`

Modifies the cached response before storing it in the cache.

``` swift
case modify((URLSessionDataTask, CachedURLResponse) -> CachedURLResponse?)
```
