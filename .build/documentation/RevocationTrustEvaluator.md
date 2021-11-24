# RevocationTrustEvaluator

An evaluator which Uses the default and revoked server trust evaluations allowing you to control whether to validate
the host provided by the challenge as well as specify the revocation flags for testing for revoked certificates.
Apple platforms did not start testing for revoked certificates automatically until iOS 10.1, macOS 10.12 and tvOS
10.1 which is demonstrated in our TLS tests. Applications are encouraged to always validate the host in production
environments to guarantee the validity of the server's certificate chain.

``` swift
public final class RevocationTrustEvaluator: ServerTrustEvaluating 
```

## Inheritance

[`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating)

## Initializers

### `init(performDefaultValidation:validateHost:options:)`

Creates a `RevocationTrustEvaluator`.

``` swift
public init(performDefaultValidation: Bool = true, validateHost: Bool = true, options: Options = .any) 
```

> 

#### Parameters

  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.
  - options: The `Options` to use to check the revocation status of the certificate. `.any` by default.

### `init(performDefaultValidation:validateHost:options:)`

Creates a `RevocationTrustEvaluator`.

``` swift
public init(performDefaultValidation: Bool = true, validateHost: Bool = true, options: Options = .any) 
```

> 

#### Parameters

  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.
  - options: The `Options` to use to check the revocation status of the certificate. `.any` by default.

### `init(performDefaultValidation:validateHost:options:)`

Creates a `RevocationTrustEvaluator`.

``` swift
public init(performDefaultValidation: Bool = true, validateHost: Bool = true, options: Options = .any) 
```

> 

#### Parameters

  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.
  - options: The `Options` to use to check the revocation status of the certificate. `.any` by default.

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
