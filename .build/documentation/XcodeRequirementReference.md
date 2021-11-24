# XcodeRequirementReference

A reference to a version of Xcode that users of your documentation must use.

``` swift
public struct XcodeRequirementReference: RenderReference 
```

## Inheritance

[`RenderReference`](/RenderReference)

## Initializers

### `init(identifier:title:url:)`

Creates a reference to a version of Xcode that users of your documentation must use.

``` swift
public init(identifier: RenderReferenceIdentifier, title: String, url: URL) 
```

#### Parameters

  - identifier: An identifier for the requirement's reference
  - title: The Xcode version title.
  - url: A download URL for the Xcode version.

## Properties

### `type`

``` swift
public var type: RenderReferenceType = .xcodeRequirement
```

### `identifier`

``` swift
public let identifier: RenderReferenceIdentifier
```

### `title`

A presentation-friendly title for the version of Xcode required for users of your documentation.

``` swift
public let title: String
```

### `url`

A download URL for the version of Xcode required for users of your documentation.

``` swift
public let url: URL
```
