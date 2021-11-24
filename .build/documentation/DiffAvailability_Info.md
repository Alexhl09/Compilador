# DiffAvailability.Info

An item describing an availability change.

``` swift
public struct Info: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(change:platform:versions:)`

Creates a new availability change.

``` swift
public init(change: String, platform: String, versions: [String]) 
```

#### Parameters

  - change: The type of change, for example, "modified" or "added".
  - platform: The platform where the change occurred.
  - versions: The target versions of the platform for this diff.

## Properties

### `change`

The type of change, for example, "modified" or "added".

``` swift
public var change: String
```

### `platform`

The platform where the change occurred.

``` swift
public var platform: String
```

### `versions`

The target versions of the platform for this diff.

``` swift
public var versions: [String]
```
