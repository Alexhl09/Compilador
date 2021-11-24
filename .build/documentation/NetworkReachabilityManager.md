# NetworkReachabilityManager

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The `NetworkReachabilityManager` class listens for reachability changes of hosts and addresses for both WWAN and
WiFi network interfaces.

``` swift
public class NetworkReachabilityManager 
```

Reachability can be used to determine background information about why a network operation failed, or to retry
network requests when a connection is established. It should not be used to prevent a user from initiating a network
request, as it's possible that an initial request may be required to establish reachability.

</dd>
</dl>

## Nested Type Aliases

### `Listener`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

A closure executed when the network reachability status changes. The closure takes a single argument:​ the
network reachability status.

``` swift
public typealias Listener = (NetworkReachabilityStatus) -> Void
```

</dd>
</dl>

### `Listener`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

A closure executed when the network reachability status changes. The closure takes a single argument:​ the
network reachability status.

``` swift
public typealias Listener = (NetworkReachabilityStatus) -> Void
```

</dd>
</dl>

### `Listener`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

A closure executed when the network reachability status changes. The closure takes a single argument:​ the
network reachability status.

``` swift
public typealias Listener = (NetworkReachabilityStatus) -> Void
```

</dd>
</dl>

### `Listener`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

A closure executed when the network reachability status changes. The closure takes a single argument:​ the
network reachability status.

``` swift
public typealias Listener = (NetworkReachabilityStatus) -> Void
```

</dd>
</dl>

### `Listener`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

A closure executed when the network reachability status changes. The closure takes a single argument:​ the
network reachability status.

``` swift
public typealias Listener = (NetworkReachabilityStatus) -> Void
```

</dd>
</dl>

### `Listener`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

A closure executed when the network reachability status changes. The closure takes a single argument:​ the
network reachability status.

``` swift
public typealias Listener = (NetworkReachabilityStatus) -> Void
```

</dd>
</dl>

## Initializers

### `init?(host:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `NetworkReachabilityManager` instance with the specified host.

``` swift
public convenience init?(host: String) 
```

#### Parameters

  - host: The host used to evaluate network reachability.

#### Returns

The new `NetworkReachabilityManager` instance.

</dd>
</dl>

### `init?()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `NetworkReachabilityManager` instance that monitors the address 0.0.0.0.

``` swift
public convenience init?() 
```

Reachability treats the 0.0.0.0 address as a special token that causes it to monitor the general routing
status of the device, both IPv4 and IPv6.

#### Returns

The new `NetworkReachabilityManager` instance.

</dd>
</dl>

### `init?(host:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `NetworkReachabilityManager` instance with the specified host.

``` swift
public convenience init?(host: String) 
```

#### Parameters

  - host: The host used to evaluate network reachability.

#### Returns

The new `NetworkReachabilityManager` instance.

</dd>
</dl>

### `init?()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `NetworkReachabilityManager` instance that monitors the address 0.0.0.0.

``` swift
public convenience init?() 
```

Reachability treats the 0.0.0.0 address as a special token that causes it to monitor the general routing
status of the device, both IPv4 and IPv6.

#### Returns

The new `NetworkReachabilityManager` instance.

</dd>
</dl>

### `init?(host:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `NetworkReachabilityManager` instance with the specified host.

``` swift
public convenience init?(host: String) 
```

#### Parameters

  - host: The host used to evaluate network reachability.

#### Returns

The new `NetworkReachabilityManager` instance.

</dd>
</dl>

### `init?()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `NetworkReachabilityManager` instance that monitors the address 0.0.0.0.

``` swift
public convenience init?() 
```

Reachability treats the 0.0.0.0 address as a special token that causes it to monitor the general routing
status of the device, both IPv4 and IPv6.

#### Returns

The new `NetworkReachabilityManager` instance.

</dd>
</dl>

### `init?(host:)`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Creates an instance with the specified host.

``` swift
public convenience init?(host: String) 
```

> 

#### Parameters

  - host: Host used to evaluate network reachability. Must *not* include the scheme (e.g. `https`).

</dd>
</dl>

### `init?()`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Creates an instance that monitors the address 0.0.0.0.

``` swift
public convenience init?() 
```

Reachability treats the 0.0.0.0 address as a special token that causes it to monitor the general routing
status of the device, both IPv4 and IPv6.

</dd>
</dl>

### `init?(host:)`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Creates an instance with the specified host.

``` swift
public convenience init?(host: String) 
```

> 

#### Parameters

  - host: Host used to evaluate network reachability. Must *not* include the scheme (e.g. `https`).

</dd>
</dl>

### `init?()`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Creates an instance that monitors the address 0.0.0.0.

``` swift
public convenience init?() 
```

Reachability treats the 0.0.0.0 address as a special token that causes it to monitor the general routing
status of the device, both IPv4 and IPv6.

</dd>
</dl>

### `init?(host:)`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Creates an instance with the specified host.

``` swift
public convenience init?(host: String) 
```

> 

#### Parameters

  - host: Host used to evaluate network reachability. Must *not* include the scheme (e.g. `https`).

</dd>
</dl>

### `init?()`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Creates an instance that monitors the address 0.0.0.0.

``` swift
public convenience init?() 
```

Reachability treats the 0.0.0.0 address as a special token that causes it to monitor the general routing
status of the device, both IPv4 and IPv6.

</dd>
</dl>

## Properties

### `isReachable`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable.

``` swift
public var isReachable: Bool 
```

</dd>
</dl>

### `isReachableOnWWAN`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable over the WWAN interface.

``` swift
public var isReachableOnWWAN: Bool 
```

</dd>
</dl>

### `isReachableOnEthernetOrWiFi`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable over Ethernet or WiFi interface.

``` swift
public var isReachableOnEthernetOrWiFi: Bool 
```

</dd>
</dl>

### `networkReachabilityStatus`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The current network reachability status.

``` swift
public var networkReachabilityStatus: NetworkReachabilityStatus 
```

</dd>
</dl>

### `listenerQueue`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The dispatch queue to execute the `listener` closure on.

``` swift
public var listenerQueue: DispatchQueue = DispatchQueue.main
```

</dd>
</dl>

### `listener`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

A closure executed when the network reachability status changes.

``` swift
public var listener: Listener?
```

</dd>
</dl>

### `isReachable`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable.

``` swift
open var isReachable: Bool 
```

</dd>
</dl>

### `isReachableOnWWAN`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable over the WWAN interface.

``` swift
open var isReachableOnWWAN: Bool 
```

</dd>
</dl>

### `isReachableOnEthernetOrWiFi`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable over Ethernet or WiFi interface.

``` swift
open var isReachableOnEthernetOrWiFi: Bool 
```

</dd>
</dl>

### `networkReachabilityStatus`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The current network reachability status.

``` swift
open var networkReachabilityStatus: NetworkReachabilityStatus 
```

</dd>
</dl>

### `listenerQueue`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The dispatch queue to execute the `listener` closure on.

``` swift
open var listenerQueue: DispatchQueue = DispatchQueue.main
```

</dd>
</dl>

### `listener`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

A closure executed when the network reachability status changes.

``` swift
open var listener: Listener?
```

</dd>
</dl>

### `flags`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

``` swift
open var flags: SCNetworkReachabilityFlags? 
```

</dd>
</dl>

### `previousFlags`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

``` swift
open var previousFlags: SCNetworkReachabilityFlags
```

</dd>
</dl>

### `isReachable`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable.

``` swift
open var isReachable: Bool 
```

</dd>
</dl>

### `isReachableOnWWAN`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable over the WWAN interface.

``` swift
open var isReachableOnWWAN: Bool 
```

</dd>
</dl>

### `isReachableOnEthernetOrWiFi`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Whether the network is currently reachable over Ethernet or WiFi interface.

``` swift
open var isReachableOnEthernetOrWiFi: Bool 
```

</dd>
</dl>

### `networkReachabilityStatus`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The current network reachability status.

``` swift
open var networkReachabilityStatus: NetworkReachabilityStatus 
```

</dd>
</dl>

### `listenerQueue`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The dispatch queue to execute the `listener` closure on.

``` swift
open var listenerQueue: DispatchQueue = DispatchQueue.main
```

</dd>
</dl>

### `listener`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

A closure executed when the network reachability status changes.

``` swift
open var listener: Listener?
```

</dd>
</dl>

### `flags`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

``` swift
open var flags: SCNetworkReachabilityFlags? 
```

</dd>
</dl>

### `previousFlags`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

``` swift
open var previousFlags: SCNetworkReachabilityFlags
```

</dd>
</dl>

### `` `default` ``

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Default `NetworkReachabilityManager` for the zero address and a `listenerQueue` of `.main`.

``` swift
public static let `default` 
```

</dd>
</dl>

### `isReachable`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable.

``` swift
open var isReachable: Bool 
```

</dd>
</dl>

### `isReachableOnCellular`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable over the cellular interface.

``` swift
open var isReachableOnCellular: Bool 
```

> 

</dd>
</dl>

### `isReachableOnEthernetOrWiFi`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable over Ethernet or WiFi interface.

``` swift
open var isReachableOnEthernetOrWiFi: Bool 
```

</dd>
</dl>

### `reachabilityQueue`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

`DispatchQueue` on which reachability will update.

``` swift
public let reachabilityQueue 
```

</dd>
</dl>

### `flags`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Flags of the current reachability type, if any.

``` swift
open var flags: SCNetworkReachabilityFlags? 
```

</dd>
</dl>

### `status`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

The current network reachability status.

``` swift
open var status: NetworkReachabilityStatus 
```

</dd>
</dl>

### `` `default` ``

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Default `NetworkReachabilityManager` for the zero address and a `listenerQueue` of `.main`.

``` swift
public static let `default` 
```

</dd>
</dl>

### `isReachable`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable.

``` swift
open var isReachable: Bool 
```

</dd>
</dl>

### `isReachableOnCellular`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable over the cellular interface.

``` swift
open var isReachableOnCellular: Bool 
```

> 

</dd>
</dl>

### `isReachableOnEthernetOrWiFi`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable over Ethernet or WiFi interface.

``` swift
open var isReachableOnEthernetOrWiFi: Bool 
```

</dd>
</dl>

### `reachabilityQueue`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

`DispatchQueue` on which reachability will update.

``` swift
public let reachabilityQueue 
```

</dd>
</dl>

### `flags`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Flags of the current reachability type, if any.

``` swift
open var flags: SCNetworkReachabilityFlags? 
```

</dd>
</dl>

### `status`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

The current network reachability status.

``` swift
open var status: NetworkReachabilityStatus 
```

</dd>
</dl>

### `` `default` ``

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Default `NetworkReachabilityManager` for the zero address and a `listenerQueue` of `.main`.

``` swift
public static let `default` 
```

</dd>
</dl>

### `isReachable`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable.

``` swift
open var isReachable: Bool 
```

</dd>
</dl>

### `isReachableOnCellular`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable over the cellular interface.

``` swift
open var isReachableOnCellular: Bool 
```

> 

</dd>
</dl>

### `isReachableOnEthernetOrWiFi`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Whether the network is currently reachable over Ethernet or WiFi interface.

``` swift
open var isReachableOnEthernetOrWiFi: Bool 
```

</dd>
</dl>

### `reachabilityQueue`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

`DispatchQueue` on which reachability will update.

``` swift
public let reachabilityQueue 
```

</dd>
</dl>

### `flags`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Flags of the current reachability type, if any.

``` swift
open var flags: SCNetworkReachabilityFlags? 
```

</dd>
</dl>

### `status`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

The current network reachability status.

``` swift
open var status: NetworkReachabilityStatus 
```

</dd>
</dl>

## Methods

### `startListening()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Starts listening for changes in network reachability status.

``` swift
@discardableResult
    public func startListening() -> Bool 
```

#### Returns

`true` if listening was started successfully, `false` otherwise.

</dd>
</dl>

### `stopListening()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Stops listening for changes in network reachability status.

``` swift
public func stopListening() 
```

</dd>
</dl>

### `startListening()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Starts listening for changes in network reachability status.

``` swift
@discardableResult
    open func startListening() -> Bool 
```

#### Returns

`true` if listening was started successfully, `false` otherwise.

</dd>
</dl>

### `stopListening()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Stops listening for changes in network reachability status.

``` swift
open func stopListening() 
```

</dd>
</dl>

### `startListening()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Starts listening for changes in network reachability status.

``` swift
@discardableResult
    open func startListening() -> Bool 
```

#### Returns

`true` if listening was started successfully, `false` otherwise.

</dd>
</dl>

### `stopListening()`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Stops listening for changes in network reachability status.

``` swift
open func stopListening() 
```

</dd>
</dl>

### `startListening(onQueue:onUpdatePerforming:)`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Starts listening for changes in network reachability status.

``` swift
@discardableResult
    open func startListening(onQueue queue: DispatchQueue = .main,
                             onUpdatePerforming listener: @escaping Listener) -> Bool 
```

> 

#### Parameters

  - queue: `DispatchQueue` on which to call the `listener` closure. `.main` by default.
  - listener: `Listener` closure called when reachability changes.

#### Returns

`true` if listening was started successfully, `false` otherwise.

</dd>
</dl>

### `stopListening()`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Stops listening for changes in network reachability status.

``` swift
open func stopListening() 
```

</dd>
</dl>

### `startListening(onQueue:onUpdatePerforming:)`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Starts listening for changes in network reachability status.

``` swift
@discardableResult
    open func startListening(onQueue queue: DispatchQueue = .main,
                             onUpdatePerforming listener: @escaping Listener) -> Bool 
```

> 

#### Parameters

  - queue: `DispatchQueue` on which to call the `listener` closure. `.main` by default.
  - listener: `Listener` closure called when reachability changes.

#### Returns

`true` if listening was started successfully, `false` otherwise.

</dd>
</dl>

### `stopListening()`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Stops listening for changes in network reachability status.

``` swift
open func stopListening() 
```

</dd>
</dl>

### `startListening(onQueue:onUpdatePerforming:)`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Starts listening for changes in network reachability status.

``` swift
@discardableResult
    open func startListening(onQueue queue: DispatchQueue = .main,
                             onUpdatePerforming listener: @escaping Listener) -> Bool 
```

> 

#### Parameters

  - queue: `DispatchQueue` on which to call the `listener` closure. `.main` by default.
  - listener: `Listener` closure called when reachability changes.

#### Returns

`true` if listening was started successfully, `false` otherwise.

</dd>
</dl>

### `stopListening()`

<dl>
<dt><code>!(os(watchOS) || os(Linux))</code></dt>
<dd>

Stops listening for changes in network reachability status.

``` swift
open func stopListening() 
```

</dd>
</dl>
