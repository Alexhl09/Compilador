# DocumentationBundle.Info

Information about a documentation bundle that's unrelated to its documentation content.

``` swift
public struct Info: Codable, Equatable 
```

This information is meant to be decoded from the bundle's Info.plist file.

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `displayName`

The display name of the bundle.

``` swift
public var displayName: String
```

### `identifier`

The unique identifier of the bundle.

``` swift
public var identifier: String
```

### `version`

The version of the bundle.

``` swift
public var version: Version
```

### `defaultCodeListingLanguage`

The default language identifier for code listings in the bundle.

``` swift
public var defaultCodeListingLanguage: String?
```

### `defaultAvailability`

The default availability for the various modules in the bundle.

``` swift
public var defaultAvailability: DefaultAvailability?
```

### `defaultModuleKind`

The default kind for the various modules in the bundle.

``` swift
public var defaultModuleKind: String?
```
