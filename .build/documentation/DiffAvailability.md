# DiffAvailability

An availability-change diff for a symbol, if that data is available.

``` swift
public struct DiffAvailability: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(beta:minor:major:sdk:)`

Creates a new availability change diff.

``` swift
public init(beta: Info?, minor: Info?, major: Info?, sdk: Info?) 
```

#### Parameters

  - beta: Beta change information.
  - minor: Minor version change information.
  - major: Major version change information.
  - sdk: Platform version change information.

## Properties

### `beta`

The change information for a symbol that was updated in a beta version of the current platform.

``` swift
public var beta: Info?
```

### `minor`

The change information for a symbol that was updated in a minor increment of the current platform version.

``` swift
public var minor: Info?
```

### `major`

The change information for a symbol that was updated in a major increment of the current platform version.

``` swift
public var major: Info?
```

### `sdk`

The change information for a symbol that was updated in the current platform version.

``` swift
public var sdk: Info?
```
