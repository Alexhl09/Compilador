# RevocationTrustEvaluator.Options

Represents the options to be use when evaluating the status of a certificate.
Only Revocation Policy Constants are valid, and can be found in [Apple's documentation](https:​//developer.apple.com/documentation/security/certificate_key_and_trust_services/policies/1563600-revocation_policy_constants).

``` swift
public struct Options: OptionSet 
```

## Inheritance

`OptionSet`, `OptionSet`, `OptionSet`

## Initializers

### `init(rawValue:)`

Creates an `Options` value with the given `CFOptionFlags`.

``` swift
public init(rawValue: CFOptionFlags) 
```

#### Parameters

  - rawValue: The `CFOptionFlags` value to initialize with.

### `init(rawValue:)`

Creates an `Options` value with the given `CFOptionFlags`.

``` swift
public init(rawValue: CFOptionFlags) 
```

#### Parameters

  - rawValue: The `CFOptionFlags` value to initialize with.

### `init(rawValue:)`

Creates an `Options` value with the given `CFOptionFlags`.

``` swift
public init(rawValue: CFOptionFlags) 
```

#### Parameters

  - rawValue: The `CFOptionFlags` value to initialize with.

## Properties

### `crl`

Perform revocation checking using the CRL (Certification Revocation List) method.

``` swift
public static let crl 
```

### `networkAccessDisabled`

Consult only locally cached replies; do not use network access.

``` swift
public static let networkAccessDisabled 
```

### `ocsp`

Perform revocation checking using OCSP (Online Certificate Status Protocol).

``` swift
public static let ocsp 
```

### `preferCRL`

Prefer CRL revocation checking over OCSP; by default, OCSP is preferred.

``` swift
public static let preferCRL 
```

### `requirePositiveResponse`

Require a positive response to pass the policy. If the flag is not set, revocation checking is done on a
"best attempt" basis, where failure to reach the server is not considered fatal.

``` swift
public static let requirePositiveResponse 
```

### `any`

Perform either OCSP or CRL checking. The checking is performed according to the method(s) specified in the
certificate and the value of `preferCRL`.

``` swift
public static let any 
```

### `rawValue`

The raw value of the option.

``` swift
public let rawValue: CFOptionFlags
```

### `crl`

Perform revocation checking using the CRL (Certification Revocation List) method.

``` swift
public static let crl 
```

### `networkAccessDisabled`

Consult only locally cached replies; do not use network access.

``` swift
public static let networkAccessDisabled 
```

### `ocsp`

Perform revocation checking using OCSP (Online Certificate Status Protocol).

``` swift
public static let ocsp 
```

### `preferCRL`

Prefer CRL revocation checking over OCSP; by default, OCSP is preferred.

``` swift
public static let preferCRL 
```

### `requirePositiveResponse`

Require a positive response to pass the policy. If the flag is not set, revocation checking is done on a
"best attempt" basis, where failure to reach the server is not considered fatal.

``` swift
public static let requirePositiveResponse 
```

### `any`

Perform either OCSP or CRL checking. The checking is performed according to the method(s) specified in the
certificate and the value of `preferCRL`.

``` swift
public static let any 
```

### `rawValue`

The raw value of the option.

``` swift
public let rawValue: CFOptionFlags
```

### `crl`

Perform revocation checking using the CRL (Certification Revocation List) method.

``` swift
public static let crl 
```

### `networkAccessDisabled`

Consult only locally cached replies; do not use network access.

``` swift
public static let networkAccessDisabled 
```

### `ocsp`

Perform revocation checking using OCSP (Online Certificate Status Protocol).

``` swift
public static let ocsp 
```

### `preferCRL`

Prefer CRL revocation checking over OCSP; by default, OCSP is preferred.

``` swift
public static let preferCRL 
```

### `requirePositiveResponse`

Require a positive response to pass the policy. If the flag is not set, revocation checking is done on a
"best attempt" basis, where failure to reach the server is not considered fatal.

``` swift
public static let requirePositiveResponse 
```

### `any`

Perform either OCSP or CRL checking. The checking is performed according to the method(s) specified in the
certificate and the value of `preferCRL`.

``` swift
public static let any 
```

### `rawValue`

The raw value of the option.

``` swift
public let rawValue: CFOptionFlags
```
