# PinnedCertificatesTrustEvaluator

Uses the pinned certificates to validate the server trust. The server trust is considered valid if one of the pinned
certificates match one of the server certificates. By validating both the certificate chain and host, certificate
pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
Applications are encouraged to always validate the host and require a valid certificate chain in production
environments.

``` swift
public final class PinnedCertificatesTrustEvaluator: ServerTrustEvaluating 
```

## Inheritance

[`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating), [`ServerTrustEvaluating`](/ServerTrustEvaluating)

## Initializers

### `init(certificates:acceptSelfSignedCertificates:performDefaultValidation:validateHost:)`

Creates a `PinnedCertificatesTrustEvaluator`.

``` swift
public init(certificates: [SecCertificate] = Bundle.main.af.certificates,
                acceptSelfSignedCertificates: Bool = false,
                performDefaultValidation: Bool = true,
                validateHost: Bool = true) 
```

#### Parameters

  - certificates: The certificates to use to evaluate the trust. All `cer`, `crt`, and `der` certificates in `Bundle.main` by default.
  - acceptSelfSignedCertificates: Adds the provided certificates as anchors for the trust evaluation, allowing self-signed certificates to pass. `false` by default. THIS SETTING SHOULD BE FALSE IN PRODUCTION\!
  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.

### `init(certificates:acceptSelfSignedCertificates:performDefaultValidation:validateHost:)`

Creates a `PinnedCertificatesTrustEvaluator`.

``` swift
public init(certificates: [SecCertificate] = Bundle.main.af.certificates,
                acceptSelfSignedCertificates: Bool = false,
                performDefaultValidation: Bool = true,
                validateHost: Bool = true) 
```

#### Parameters

  - certificates: The certificates to use to evaluate the trust. All `cer`, `crt`, and `der` certificates in `Bundle.main` by default.
  - acceptSelfSignedCertificates: Adds the provided certificates as anchors for the trust evaluation, allowing self-signed certificates to pass. `false` by default. THIS SETTING SHOULD BE FALSE IN PRODUCTION\!
  - performDefaultValidation: Determines whether default validation should be performed in addition to evaluating the pinned certificates. `true` by default.
  - validateHost: Determines whether or not the evaluator should validate the host, in addition to performing the default evaluation, even if `performDefaultValidation` is `false`. `true` by default.

### `init(certificates:acceptSelfSignedCertificates:performDefaultValidation:validateHost:)`

Creates a `PinnedCertificatesTrustEvaluator`.

``` swift
public init(certificates: [SecCertificate] = Bundle.main.af.certificates,
                acceptSelfSignedCertificates: Bool = false,
                performDefaultValidation: Bool = true,
                validateHost: Bool = true) 
```

#### Parameters

  - certificates: The certificates to use to evaluate the trust. All `cer`, `crt`, and `der` certificates in `Bundle.main` by default.
  - acceptSelfSignedCertificates: Adds the provided certificates as anchors for the trust evaluation, allowing self-signed certificates to pass. `false` by default. THIS SETTING SHOULD BE FALSE IN PRODUCTION\!
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
