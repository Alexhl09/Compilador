# RequestRetryCompletion

A closure executed when the `RequestRetrier` determines whether a `Request` should be retried or not.

``` swift
public typealias RequestRetryCompletion = (_ shouldRetry: Bool, _ timeDelay: TimeInterval) -> Void
```
