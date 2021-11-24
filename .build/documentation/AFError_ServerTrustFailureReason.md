# AFError.ServerTrustFailureReason

Underlying reason a server trust evaluation error occurred.

``` swift
public enum ServerTrustFailureReason 
```

## Enumeration Cases

### `noRequiredEvaluator`

No `ServerTrustEvaluator` was found for the associated host.

``` swift
case noRequiredEvaluator(host: String)
```

### `noCertificatesFound`

No certificates were found with which to perform the trust evaluation.

``` swift
case noCertificatesFound
```

### `noPublicKeysFound`

No public keys were found with which to perform the trust evaluation.

``` swift
case noPublicKeysFound
```

### `policyApplicationFailed`

During evaluation, application of the associated `SecPolicy` failed.

``` swift
case policyApplicationFailed(trust: SecTrust, policy: SecPolicy, status: OSStatus)
```

### `settingAnchorCertificatesFailed`

During evaluation, setting the associated anchor certificates failed.

``` swift
case settingAnchorCertificatesFailed(status: OSStatus, certificates: [SecCertificate])
```

### `revocationPolicyCreationFailed`

During evaluation, creation of the revocation policy failed.

``` swift
case revocationPolicyCreationFailed
```

### `trustEvaluationFailed`

`SecTrust` evaluation failed with the associated `Error`, if one was produced.

``` swift
case trustEvaluationFailed(error: Error?)
```

### `defaultEvaluationFailed`

Default evaluation failed with the associated `Output`.

``` swift
case defaultEvaluationFailed(output: Output)
```

### `hostValidationFailed`

Host validation failed with the associated `Output`.

``` swift
case hostValidationFailed(output: Output)
```

### `revocationCheckFailed`

Revocation check failed with the associated `Output` and options.

``` swift
case revocationCheckFailed(output: Output, options: RevocationTrustEvaluator.Options)
```

### `certificatePinningFailed`

Certificate pinning failed.

``` swift
case certificatePinningFailed(host: String, trust: SecTrust, pinnedCertificates: [SecCertificate], serverCertificates: [SecCertificate])
```

### `publicKeyPinningFailed`

Public key pinning failed.

``` swift
case publicKeyPinningFailed(host: String, trust: SecTrust, pinnedKeys: [SecKey], serverKeys: [SecKey])
```

### `customEvaluationFailed`

Custom server trust evaluation failed due to the associated `Error`.

``` swift
case customEvaluationFailed(error: Error)
```

### `noRequiredEvaluator`

No `ServerTrustEvaluator` was found for the associated host.

``` swift
case noRequiredEvaluator(host: String)
```

### `noCertificatesFound`

No certificates were found with which to perform the trust evaluation.

``` swift
case noCertificatesFound
```

### `noPublicKeysFound`

No public keys were found with which to perform the trust evaluation.

``` swift
case noPublicKeysFound
```

### `policyApplicationFailed`

During evaluation, application of the associated `SecPolicy` failed.

``` swift
case policyApplicationFailed(trust: SecTrust, policy: SecPolicy, status: OSStatus)
```

### `settingAnchorCertificatesFailed`

During evaluation, setting the associated anchor certificates failed.

``` swift
case settingAnchorCertificatesFailed(status: OSStatus, certificates: [SecCertificate])
```

### `revocationPolicyCreationFailed`

During evaluation, creation of the revocation policy failed.

``` swift
case revocationPolicyCreationFailed
```

### `trustEvaluationFailed`

`SecTrust` evaluation failed with the associated `Error`, if one was produced.

``` swift
case trustEvaluationFailed(error: Error?)
```

### `defaultEvaluationFailed`

Default evaluation failed with the associated `Output`.

``` swift
case defaultEvaluationFailed(output: Output)
```

### `hostValidationFailed`

Host validation failed with the associated `Output`.

``` swift
case hostValidationFailed(output: Output)
```

### `revocationCheckFailed`

Revocation check failed with the associated `Output` and options.

``` swift
case revocationCheckFailed(output: Output, options: RevocationTrustEvaluator.Options)
```

### `certificatePinningFailed`

Certificate pinning failed.

``` swift
case certificatePinningFailed(host: String, trust: SecTrust, pinnedCertificates: [SecCertificate], serverCertificates: [SecCertificate])
```

### `publicKeyPinningFailed`

Public key pinning failed.

``` swift
case publicKeyPinningFailed(host: String, trust: SecTrust, pinnedKeys: [SecKey], serverKeys: [SecKey])
```

### `customEvaluationFailed`

Custom server trust evaluation failed due to the associated `Error`.

``` swift
case customEvaluationFailed(error: Error)
```

### `noRequiredEvaluator`

No `ServerTrustEvaluator` was found for the associated host.

``` swift
case noRequiredEvaluator(host: String)
```

### `noCertificatesFound`

No certificates were found with which to perform the trust evaluation.

``` swift
case noCertificatesFound
```

### `noPublicKeysFound`

No public keys were found with which to perform the trust evaluation.

``` swift
case noPublicKeysFound
```

### `policyApplicationFailed`

During evaluation, application of the associated `SecPolicy` failed.

``` swift
case policyApplicationFailed(trust: SecTrust, policy: SecPolicy, status: OSStatus)
```

### `settingAnchorCertificatesFailed`

During evaluation, setting the associated anchor certificates failed.

``` swift
case settingAnchorCertificatesFailed(status: OSStatus, certificates: [SecCertificate])
```

### `revocationPolicyCreationFailed`

During evaluation, creation of the revocation policy failed.

``` swift
case revocationPolicyCreationFailed
```

### `trustEvaluationFailed`

`SecTrust` evaluation failed with the associated `Error`, if one was produced.

``` swift
case trustEvaluationFailed(error: Error?)
```

### `defaultEvaluationFailed`

Default evaluation failed with the associated `Output`.

``` swift
case defaultEvaluationFailed(output: Output)
```

### `hostValidationFailed`

Host validation failed with the associated `Output`.

``` swift
case hostValidationFailed(output: Output)
```

### `revocationCheckFailed`

Revocation check failed with the associated `Output` and options.

``` swift
case revocationCheckFailed(output: Output, options: RevocationTrustEvaluator.Options)
```

### `certificatePinningFailed`

Certificate pinning failed.

``` swift
case certificatePinningFailed(host: String, trust: SecTrust, pinnedCertificates: [SecCertificate], serverCertificates: [SecCertificate])
```

### `publicKeyPinningFailed`

Public key pinning failed.

``` swift
case publicKeyPinningFailed(host: String, trust: SecTrust, pinnedKeys: [SecKey], serverKeys: [SecKey])
```

### `customEvaluationFailed`

Custom server trust evaluation failed due to the associated `Error`.

``` swift
case customEvaluationFailed(error: Error)
```
