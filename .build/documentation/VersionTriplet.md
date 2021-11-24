# VersionTriplet

A semantic version-number triplet with major, minor, and patch components.

``` swift
public struct VersionTriplet: Equatable, Comparable 
```

## Inheritance

`Comparable`, `Equatable`

## Initializers

### `init(_:_:_:)`

Creates a new version triplet with the given major, minor, and patch components.

``` swift
public init(_ major: Int, _ minor: Int, _ patch: Int) 
```

#### Parameters

  - major: The major component.
  - minor: The minor component.
  - patch: The patch component.

## Operators

### `<`

Returns a Boolean value that indicates whether the first version is less than the second version.

``` swift
public static func < (lhs: VersionTriplet, rhs: VersionTriplet) -> Bool 
```

#### Parameters

  - lhs: A version to compare.
  - rhs: Another version to compare.
