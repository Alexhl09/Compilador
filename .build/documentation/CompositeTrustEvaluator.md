# CompositeTrustEvaluator

Uses the provided evaluators to validate the server trust. The trust is only considered valid if all of the
evaluators consider it valid.

``` swift
public final class CompositeTrustEvaluator: ServerTrustEvaluating 
```

## Inheritance

[`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating)

## Initializers

### `init(evaluators:)`

Creates a `CompositeTrustEvaluator`.

``` swift
public init(evaluators: [ServerTrustEvaluating]) 
```

#### Parameters

  - evaluators: The `ServerTrustEvaluating` values used to evaluate the server trust.

### `init(evaluators:)`

Creates a `CompositeTrustEvaluator`.

``` swift
public init(evaluators: [ServerTrustEvaluating]) 
```

#### Parameters

  - evaluators: The `ServerTrustEvaluating` values used to evaluate the server trust.

### `init(evaluators:)`

Creates a `CompositeTrustEvaluator`.

``` swift
public init(evaluators: [ServerTrustEvaluating]) 
```

#### Parameters

  - evaluators: The `ServerTrustEvaluating` values used to evaluate the server trust.

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
