# PublicKeysTrustEvaluator

Uses the pinned public keys to validate the server trust. The server trust is considered valid if one of the pinned
public keys match one of the server certificate public keys. By validating both the certificate chain and host,
public key pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
Applications are encouraged to always validate the host and require a valid certificate chain in production
environments.

``` swift
public final class PublicKeysTrustEvaluator: ServerTrustEvaluating 
```

## Inheritance

[`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating)

## Initializers

### `init(keys:performDefaultValidation:validateHost:)`

Creates a `PublicKeysTrustEvaluator`.

``` swift
public init(keys: [SecKey] = Bundle.main.af.publicKeys,
                performDefaultValidation: Bool = true,
                validateHost: Bool = true) 
```

> 

#### Parameters

  - keys: The `SecKey`s to use to validate public keys. Defaults to the public keys of all certificates included in the main bundle.
  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.

### `init(keys:performDefaultValidation:validateHost:)`

Creates a `PublicKeysTrustEvaluator`.

``` swift
public init(keys: [SecKey] = Bundle.main.af.publicKeys,
                performDefaultValidation: Bool = true,
                validateHost: Bool = true) 
```

> 

#### Parameters

  - keys: The `SecKey`s to use to validate public keys. Defaults to the public keys of all certificates included in the main bundle.
  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.

### `init(keys:performDefaultValidation:validateHost:)`

Creates a `PublicKeysTrustEvaluator`.

``` swift
public init(keys: [SecKey] = Bundle.main.af.publicKeys,
                performDefaultValidation: Bool = true,
                validateHost: Bool = true) 
```

> 

#### Parameters

  - keys: The `SecKey`s to use to validate public keys. Defaults to the public keys of all certificates included in the main bundle.
  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.

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
