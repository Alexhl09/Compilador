# DefaultTrustEvaluator

An evaluator which uses the default server trust evaluation while allowing you to control whether to validate the
host provided by the challenge. Applications are encouraged to always validate the host in production environments
to guarantee the validity of the server's certificate chain.

``` swift
public final class DefaultTrustEvaluator: ServerTrustEvaluating 
```

## Inheritance

[`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating)

## Initializers

### `init(validateHost:)`

Creates a `DefaultTrustEvaluator`.

``` swift
public init(validateHost: Bool = true) 
```

#### Parameters

  - validateHost: Determines whether or not the evaluator should validate the host. `true` by default.

### `init(validateHost:)`

Creates a `DefaultTrustEvaluator`.

``` swift
public init(validateHost: Bool = true) 
```

#### Parameters

  - validateHost: Determines whether or not the evaluator should validate the host. `true` by default.

### `init(validateHost:)`

Creates a `DefaultTrustEvaluator`.

``` swift
public init(validateHost: Bool = true) 
```

#### Parameters

  - validateHost: Determines whether or not the evaluator should validate the host. `true` by default.

## Methods

### `evaluate(_:forHost:)`

``` swift
public func evaluate(_ trust: SecTrust, forHost host: String) throws 
```

### `evaluate(_:forHost:)`

``` swift
public func evaluate(_ trust: SecTrust, forHost host: String) throws 
```

### `evaluate(_:forHost:)`

``` swift
public func evaluate(_ trust: SecTrust, forHost host: String) throws 
```
