# RetryHandler

`RequestRetrier` closure definition.

``` swift
public typealias RetryHandler = (Request, Session, Error, _ completion: @escaping (RetryResult) -> Void) -> Void
```
