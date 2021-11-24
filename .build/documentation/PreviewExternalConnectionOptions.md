# PreviewExternalConnectionOptions

Resolves and validates `username`, `password`,  `tlsCertificateChainURL`,  and `tlsCertificateKeyURL`
values that can be used when configuring the preview server for external connections.

``` swift
public struct PreviewExternalConnectionOptions: ParsableArguments 
```

These values can be set via  via environment variables.

## Inheritance

`ParsableArguments`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `username`

The username to use when configuring the preview server for external connections
as provided by the environment variable `DOCC_PREVIEW_USERNAME`.

``` swift
public var username: String? 
```

### `password`

The password to use when configuring the preview server for external connections
as provided by the envrionment variable `DOCC_PREVIEW_PASSWORD`.

``` swift
public var password: String? 
```

### `tlsCertificateChainURL`

The path to the TLS certificate chain to use when configuring the preview server for external connections
as provided by the envrionment variable `DOCC_TLS_CERTIFICATE_CHAIN`.

``` swift
public var tlsCertificateChainURL: URL? 
```

### `tlsCertificateKeyURL`

The path to the TLS certificate key to use when configuring the preview server for external connections
as provided by the envrionment variable `DOCC_TLS_CERTIFICATE_KEY`.

``` swift
public var tlsCertificateKeyURL: URL? 
```

### `externalConnectionsAreEnabled`

A Boolean value indicating whether any configuration has been provided to enable external connections
for the preview server.

``` swift
public var externalConnectionsAreEnabled: Bool 
```

If this value is true, and the `validate()` function has been called,
the `username`, `password`, `tlsCertificateChainURL`, and
`tlsCertificateKeyURL` properties are all guaranteed to have valid values.

## Methods

### `validate()`

``` swift
public mutating func validate() throws 
```
