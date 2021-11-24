# BundleIdentifier

Documentation bundles use a string value as a unique identifier.

``` swift
public typealias BundleIdentifier = String
```

This value is typically a reverse host name, for example: `com.<organization-name>.<product-name>`.

Documentation links may include the bundle identifier—as a host component of the URL—to reference content in a specific documentation bundle.
