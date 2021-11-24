# SemanticVersion

A semantic version.

``` swift
public struct SemanticVersion: Codable, Equatable, CustomStringConvertible 
```

A version that follows the [Semantic Versioning](https://semver.org) specification.

## Inheritance

`Codable`, `CustomStringConvertible`, `Equatable`

## Initializers

### `init(major:minor:patch:prerelease:buildMetadata:)`

``` swift
public init(major: Int, minor: Int, patch: Int, prerelease: String? = nil, buildMetadata: String? = nil) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `major`

The major version number.

``` swift
public var major: Int
```

For example, the `1` in `1.2.3`

### `minor`

The minor version number.

``` swift
public var minor: Int
```

For example, the `2` in `1.2.3`

### `patch`

The patch version number.

``` swift
public var patch: Int
```

For example, the `3` in `1.2.3`

### `prerelease`

The optional prerelease version component, which may contain non-numeric characters.

``` swift
public var prerelease: String?
```

For example, the `4` in `1.2.3-4`.

### `buildMetadata`

Optional build metadata.

``` swift
public var buildMetadata: String?
```

### `description`

``` swift
public var description: String 
```
