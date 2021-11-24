# ServerTrustPolicyManager

Responsible for managing the mapping of `ServerTrustPolicy` objects to a given host.

``` swift
open class ServerTrustPolicyManager 
```

## Initializers

### `init(policies:)`

Initializes the `ServerTrustPolicyManager` instance with the given policies.

``` swift
public init(policies: [String: ServerTrustPolicy]) 
```

Since different servers and web services can have different leaf certificates, intermediate and even root
certficates, it is important to have the flexibility to specify evaluation policies on a per host basis. This
allows for scenarios such as using default evaluation for host1, certificate pinning for host2, public key
pinning for host3 and disabling evaluation for host4.

#### Parameters

  - policies: A dictionary of all policies mapped to a particular host.

#### Returns

The new `ServerTrustPolicyManager` instance.

### `init(policies:)`

Initializes the `ServerTrustPolicyManager` instance with the given policies.

``` swift
public init(policies: [String: ServerTrustPolicy]) 
```

Since different servers and web services can have different leaf certificates, intermediate and even root
certficates, it is important to have the flexibility to specify evaluation policies on a per host basis. This
allows for scenarios such as using default evaluation for host1, certificate pinning for host2, public key
pinning for host3 and disabling evaluation for host4.

#### Parameters

  - policies: A dictionary of all policies mapped to a particular host.

#### Returns

The new `ServerTrustPolicyManager` instance.

### `init(policies:)`

Initializes the `ServerTrustPolicyManager` instance with the given policies.

``` swift
public init(policies: [String: ServerTrustPolicy]) 
```

Since different servers and web services can have different leaf certificates, intermediate and even root
certficates, it is important to have the flexibility to specify evaluation policies on a per host basis. This
allows for scenarios such as using default evaluation for host1, certificate pinning for host2, public key
pinning for host3 and disabling evaluation for host4.

#### Parameters

  - policies: A dictionary of all policies mapped to a particular host.

#### Returns

The new `ServerTrustPolicyManager` instance.

## Properties

### `policies`

The dictionary of policies mapped to a particular host.

``` swift
open let policies: [String: ServerTrustPolicy]
```

### `policies`

The dictionary of policies mapped to a particular host.

``` swift
public let policies: [String: ServerTrustPolicy]
```

### `policies`

The dictionary of policies mapped to a particular host.

``` swift
public let policies: [String: ServerTrustPolicy]
```

## Methods

### `serverTrustPolicy(forHost:)`

Returns the `ServerTrustPolicy` for the given host if applicable.

``` swift
open func serverTrustPolicy(forHost host: String) -> ServerTrustPolicy? 
```

By default, this method will return the policy that perfectly matches the given host. Subclasses could override
this method and implement more complex mapping implementations such as wildcards.

#### Parameters

  - host: The host to use when searching for a matching policy.

#### Returns

The server trust policy for the given host if found.

### `serverTrustPolicy(forHost:)`

Returns the `ServerTrustPolicy` for the given host if applicable.

``` swift
open func serverTrustPolicy(forHost host: String) -> ServerTrustPolicy? 
```

By default, this method will return the policy that perfectly matches the given host. Subclasses could override
this method and implement more complex mapping implementations such as wildcards.

#### Parameters

  - host: The host to use when searching for a matching policy.

#### Returns

The server trust policy for the given host if found.

### `serverTrustPolicy(forHost:)`

Returns the `ServerTrustPolicy` for the given host if applicable.

``` swift
open func serverTrustPolicy(forHost host: String) -> ServerTrustPolicy? 
```

By default, this method will return the policy that perfectly matches the given host. Subclasses could override
this method and implement more complex mapping implementations such as wildcards.

#### Parameters

  - host: The host to use when searching for a matching policy.

#### Returns

The server trust policy for the given host if found.
