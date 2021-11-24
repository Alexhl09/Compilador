# Lifetime

Represents the lifetime of an object, and provides a hook to observe when
the object deinitializes.

``` swift
public final class Lifetime 
```

## Initializers

### `init(_:)`

Initialize a `Lifetime` from a lifetime token, which is expected to be
associated with an object.

``` swift
public convenience init(_ token: Token) 
```

> 

#### Parameters

  - token: A lifetime token for detecting the deinitialization of the associated object.

## Properties

### `empty`

MARK:​ Type properties and methods
A `Lifetime` that has already ended.

``` swift
public static var empty: Lifetime 
```

### `ended`

MARK:​ Instance properties
A signal that sends a `completed` event when the lifetime ends.

``` swift
public let ended: Signal<(), NoError>
```
