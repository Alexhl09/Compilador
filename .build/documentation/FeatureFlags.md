# FeatureFlags

A set of feature flags that conditionally enable (usually experimental) behavior in Swift-DocC.

``` swift
public struct FeatureFlags: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(enableExperimentalObjectiveCSupport:additionalFlags:)`

Creates a set of feature flags with the given values.

``` swift
public init(
        enableExperimentalObjectiveCSupport: Bool = false,
        additionalFlags: [String : Bool] = [:]
    ) 
```

#### Parameters

  - enableObjectiveCSupport: Whether or not experimental language support for Objective-C should be enabled.
  - additionalFlags: This field allows clients to set feature flags without adding new API.

## Properties

### `current`

The current feature flags that Swift-DocC uses to conditionally enable
(usually experimental) behavior in Swift-DocC.

``` swift
public static var current 
```

### `isExperimentalObjectiveCSupportEnabled`

Whether or not experimental language support for Objective-C is enabled.

``` swift
public var isExperimentalObjectiveCSupportEnabled = false
```

This can be enabled on the command-line by passing `--enable-experimental-objective-c-support`
to docc.
