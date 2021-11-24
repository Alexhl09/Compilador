# ServerTrustPolicy

The `ServerTrustPolicy` evaluates the server trust generally provided by an `NSURLAuthenticationChallenge` when
connecting to a server over a secure HTTPS connection. The policy configuration then evaluates the server trust
with a given set of criteria to determine whether the server trust is valid and the connection should be made.

``` swift
public enum ServerTrustPolicy 
```

Using pinned certificates or public keys for evaluation helps prevent man-in-the-middle (MITM) attacks and other
vulnerabilities. Applications dealing with sensitive customer data or financial information are strongly encouraged
to route all communication over an HTTPS connection with pinning enabled.

  - performDefaultEvaluation: Uses the default server trust evaluation while allowing you to control whether to
    validate the host provided by the challenge. Applications are encouraged to always
    validate the host in production environments to guarantee the validity of the server's
    certificate chain.

  - performRevokedEvaluation: Uses the default and revoked server trust evaluations allowing you to control whether to
    validate the host provided by the challenge as well as specify the revocation flags for
    testing for revoked certificates. Apple platforms did not start testing for revoked
    certificates automatically until iOS 10.1, macOS 10.12 and tvOS 10.1 which is
    demonstrated in our TLS tests. Applications are encouraged to always validate the host
    in production environments to guarantee the validity of the server's certificate chain.

  - pinCertificates:          Uses the pinned certificates to validate the server trust. The server trust is
    considered valid if one of the pinned certificates match one of the server certificates.
    By validating both the certificate chain and host, certificate pinning provides a very
    secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate
    chain in production environments.

  - pinPublicKeys:            Uses the pinned public keys to validate the server trust. The server trust is considered
    valid if one of the pinned public keys match one of the server certificate public keys.
    By validating both the certificate chain and host, public key pinning provides a very
    secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate
    chain in production environments.

  - disableEvaluation:        Disables all evaluation which in turn will always consider any server trust as valid.

  - customEvaluation:         Uses the associated closure to evaluate the validity of the server trust.

## Enumeration Cases

### `performDefaultEvaluation`

``` swift
case performDefaultEvaluation(validateHost: Bool)
```

### `performRevokedEvaluation`

``` swift
case performRevokedEvaluation(validateHost: Bool, revocationFlags: CFOptionFlags)
```

### `pinCertificates`

``` swift
case pinCertificates(certificates: [SecCertificate], validateCertificateChain: Bool, validateHost: Bool)
```

### `pinPublicKeys`

``` swift
case pinPublicKeys(publicKeys: [SecKey], validateCertificateChain: Bool, validateHost: Bool)
```

### `disableEvaluation`

``` swift
case disableEvaluation
```

### `customEvaluation`

``` swift
case customEvaluation((_ serverTrust: SecTrust, _ host: String) -> Bool)
```

### `performDefaultEvaluation`

``` swift
case performDefaultEvaluation(validateHost: Bool)
```

### `performRevokedEvaluation`

``` swift
case performRevokedEvaluation(validateHost: Bool, revocationFlags: CFOptionFlags)
```

### `pinCertificates`

``` swift
case pinCertificates(certificates: [SecCertificate], validateCertificateChain: Bool, validateHost: Bool)
```

### `pinPublicKeys`

``` swift
case pinPublicKeys(publicKeys: [SecKey], validateCertificateChain: Bool, validateHost: Bool)
```

### `disableEvaluation`

``` swift
case disableEvaluation
```

### `customEvaluation`

``` swift
case customEvaluation((_ serverTrust: SecTrust, _ host: String) -> Bool)
```

### `performDefaultEvaluation`

``` swift
case performDefaultEvaluation(validateHost: Bool)
```

### `performRevokedEvaluation`

``` swift
case performRevokedEvaluation(validateHost: Bool, revocationFlags: CFOptionFlags)
```

### `pinCertificates`

``` swift
case pinCertificates(certificates: [SecCertificate], validateCertificateChain: Bool, validateHost: Bool)
```

### `pinPublicKeys`

``` swift
case pinPublicKeys(publicKeys: [SecKey], validateCertificateChain: Bool, validateHost: Bool)
```

### `disableEvaluation`

``` swift
case disableEvaluation
```

### `customEvaluation`

``` swift
case customEvaluation((_ serverTrust: SecTrust, _ host: String) -> Bool)
```

## Methods

### `certificates(in:)`

Returns all certificates within the given bundle with a `.cer` file extension.

``` swift
public static func certificates(in bundle: Bundle = Bundle.main) -> [SecCertificate] 
```

#### Parameters

  - bundle: The bundle to search for all `.cer` files.

#### Returns

All certificates within the given bundle.

### `publicKeys(in:)`

Returns all public keys within the given bundle with a `.cer` file extension.

``` swift
public static func publicKeys(in bundle: Bundle = Bundle.main) -> [SecKey] 
```

#### Parameters

  - bundle: The bundle to search for all `*.cer` files.

#### Returns

All public keys within the given bundle.

### `evaluate(_:forHost:)`

Evaluates whether the server trust is valid for the given host.

``` swift
public func evaluate(_ serverTrust: SecTrust, forHost host: String) -> Bool 
```

#### Parameters

  - serverTrust: The server trust to evaluate.
  - host: The host of the challenge protection space.

#### Returns

Whether the server trust is valid.

### `certificates(in:)`

Returns all certificates within the given bundle with a `.cer` file extension.

``` swift
public static func certificates(in bundle: Bundle = Bundle.main) -> [SecCertificate] 
```

#### Parameters

  - bundle: The bundle to search for all `.cer` files.

#### Returns

All certificates within the given bundle.

### `publicKeys(in:)`

Returns all public keys within the given bundle with a `.cer` file extension.

``` swift
public static func publicKeys(in bundle: Bundle = Bundle.main) -> [SecKey] 
```

#### Parameters

  - bundle: The bundle to search for all `*.cer` files.

#### Returns

All public keys within the given bundle.

### `evaluate(_:forHost:)`

Evaluates whether the server trust is valid for the given host.

``` swift
public func evaluate(_ serverTrust: SecTrust, forHost host: String) -> Bool 
```

#### Parameters

  - serverTrust: The server trust to evaluate.
  - host: The host of the challenge protection space.

#### Returns

Whether the server trust is valid.

### `certificates(in:)`

Returns all certificates within the given bundle with a `.cer` file extension.

``` swift
public static func certificates(in bundle: Bundle = Bundle.main) -> [SecCertificate] 
```

#### Parameters

  - bundle: The bundle to search for all `.cer` files.

#### Returns

All certificates within the given bundle.

### `publicKeys(in:)`

Returns all public keys within the given bundle with a `.cer` file extension.

``` swift
public static func publicKeys(in bundle: Bundle = Bundle.main) -> [SecKey] 
```

#### Parameters

  - bundle: The bundle to search for all `*.cer` files.

#### Returns

All public keys within the given bundle.

### `evaluate(_:forHost:)`

Evaluates whether the server trust is valid for the given host.

``` swift
public func evaluate(_ serverTrust: SecTrust, forHost host: String) -> Bool 
```

#### Parameters

  - serverTrust: The server trust to evaluate.
  - host: The host of the challenge protection space.

#### Returns

Whether the server trust is valid.
