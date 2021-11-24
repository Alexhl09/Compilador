# OutOfProcessReferenceResolver.Response

A response message from the external link resolver.

``` swift
public enum Response: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `bundleIdentifier`

A bundle identifier response.

``` swift
case bundleIdentifier(String)
```

This message should only be sent once, after the external link resolver has launched.

### `errorMessage`

The error message of the problem that the external link resolver encountered while resolving the requested topic or symbol.

``` swift
case errorMessage(String)
```

### `resolvedInformation`

A response with the resolved information about the requested topic or symbol.

``` swift
case resolvedInformation(ResolvedInformation)
```

### `asset`

A response with information about the resolved asset.

``` swift
case asset(DataAsset)
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
