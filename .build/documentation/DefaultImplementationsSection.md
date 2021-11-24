# DefaultImplementationsSection

A section that contains default implementations of a protocol-requirement, for example a property or a method.

``` swift
public struct DefaultImplementationsSection 
```

Protocol extensions might provide a default implementation of a required property or a method,
that can optionally be available under certain conditions.

For example the `AdditiveArithmetic` protocol from the Swift Standard Library requires conforming
types to have the notion of zero through a requirement of a static-property member called `zero`.
However, if your type conforming to `AdditiveArithmetic` represents an integer and adopts `ExpressibleByIntegerLiteral`
it will get a default `zero` implementation, because the standard library knows how to represent
zero in integer arithmetic.

To aid documentation discoverability, `DefaultImplementationsSection` lists all default implementations of a
certain requirement, grouped by the type that provides the implementations.

## Properties

### `groups`

A grouped list of the default implementations.

``` swift
public var groups: [ImplementationsGroup] 
```

### `implementations`

A plain list of the default implementations.

``` swift
public private(set) var implementations 
```
