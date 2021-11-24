# AdaptHandler

`RequestAdapter` closure definition.

``` swift
public typealias AdaptHandler = (URLRequest, Session, _ completion: @escaping (Result<URLRequest, Error>) -> Void) -> Void
```
