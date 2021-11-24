# ServerTrustManager

Responsible for managing the mapping of `ServerTrustEvaluating` values to given hosts.

``` swift
open class ServerTrustManager 
```

## Initializers

### `init(allHostsMustBeEvaluated:evaluators:)`

Initializes the `ServerTrustManager` instance with the given evaluators.

``` swift
public init(allHostsMustBeEvaluated: Bool = true, evaluators: [String: ServerTrustEvaluating]) 
```

Since different servers and web services can have different leaf certificates, intermediate and even root
certificates, it is important to have the flexibility to specify evaluation policies on a per host basis. This
allows for scenarios such as using default evaluation for host1, certificate pinning for host2, public key
pinning for host3 and disabling evaluation for host4.

#### Parameters

  - allHostsMustBeEvaluated: The value determining whether all hosts for this instance must be evaluated. `true` by default.
  - evaluators: A dictionary of evaluators mapped to hosts.

### `init(allHostsMustBeEvaluated:evaluators:)`

Initializes the `ServerTrustManager` instance with the given evaluators.

``` swift
public init(allHostsMustBeEvaluated: Bool = true, evaluators: [String: ServerTrustEvaluating]) 
```

Since different servers and web services can have different leaf certificates, intermediate and even root
certificates, it is important to have the flexibility to specify evaluation policies on a per host basis. This
allows for scenarios such as using default evaluation for host1, certificate pinning for host2, public key
pinning for host3 and disabling evaluation for host4.

#### Parameters

  - allHostsMustBeEvaluated: The value determining whether all hosts for this instance must be evaluated. `true` by default.
  - evaluators: A dictionary of evaluators mapped to hosts.

### `init(allHostsMustBeEvaluated:evaluators:)`

Initializes the `ServerTrustManager` instance with the given evaluators.

``` swift
public init(allHostsMustBeEvaluated: Bool = true, evaluators: [String: ServerTrustEvaluating]) 
```

Since different servers and web services can have different leaf certificates, intermediate and even root
certificates, it is important to have the flexibility to specify evaluation policies on a per host basis. This
allows for scenarios such as using default evaluation for host1, certificate pinning for host2, public key
pinning for host3 and disabling evaluation for host4.

#### Parameters

  - allHostsMustBeEvaluated: The value determining whether all hosts for this instance must be evaluated. `true` by default.
  - evaluators: A dictionary of evaluators mapped to hosts.

## Properties

### `allHostsMustBeEvaluated`

Determines whether all hosts for this `ServerTrustManager` must be evaluated. `true` by default.

``` swift
public let allHostsMustBeEvaluated: Bool
```

### `evaluators`

The dictionary of policies mapped to a particular host.

``` swift
public let evaluators: [String: ServerTrustEvaluating]
```

### `allHostsMustBeEvaluated`

Determines whether all hosts for this `ServerTrustManager` must be evaluated. `true` by default.

``` swift
public let allHostsMustBeEvaluated: Bool
```

### `evaluators`

The dictionary of policies mapped to a particular host.

``` swift
public let evaluators: [String: ServerTrustEvaluating]
```

### `allHostsMustBeEvaluated`

Determines whether all hosts for this `ServerTrustManager` must be evaluated. `true` by default.

``` swift
public let allHostsMustBeEvaluated: Bool
```

### `evaluators`

The dictionary of policies mapped to a particular host.

``` swift
public let evaluators: [String: ServerTrustEvaluating]
```

## Methods

### `serverTrustEvaluator(forHost:)`

Returns the `ServerTrustEvaluating` value for the given host, if one is set.

``` swift
open func serverTrustEvaluator(forHost host: String) throws -> ServerTrustEvaluating? 
```

By default, this method will return the policy that perfectly matches the given host. Subclasses could override
this method and implement more complex mapping implementations such as wildcards.

#### Parameters

  - host: The host to use when searching for a matching policy.

#### Throws

`AFError.serverTrustEvaluationFailed` if `allHostsMustBeEvaluated` is `true` and no matching evaluators are found.

#### Returns

The `ServerTrustEvaluating` value for the given host if found, `nil` otherwise.

### `serverTrustEvaluator(forHost:)`

Returns the `ServerTrustEvaluating` value for the given host, if one is set.

``` swift
open func serverTrustEvaluator(forHost host: String) throws -> ServerTrustEvaluating? 
```

By default, this method will return the policy that perfectly matches the given host. Subclasses could override
this method and implement more complex mapping implementations such as wildcards.

#### Parameters

  - host: The host to use when searching for a matching policy.

#### Throws

`AFError.serverTrustEvaluationFailed` if `allHostsMustBeEvaluated` is `true` and no matching evaluators are found.

#### Returns

The `ServerTrustEvaluating` value for the given host if found, `nil` otherwise.

### `serverTrustEvaluator(forHost:)`

Returns the `ServerTrustEvaluating` value for the given host, if one is set.

``` swift
open func serverTrustEvaluator(forHost host: String) throws -> ServerTrustEvaluating? 
```

By default, this method will return the policy that perfectly matches the given host. Subclasses could override
this method and implement more complex mapping implementations such as wildcards.

#### Parameters

  - host: The host to use when searching for a matching policy.

#### Throws

`AFError.serverTrustEvaluationFailed` if `allHostsMustBeEvaluated` is `true` and no matching evaluators are found.

#### Returns

The `ServerTrustEvaluating` value for the given host if found, `nil` otherwise.
