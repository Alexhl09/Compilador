# DefaultAvailability

A collection of modules and the default platform availability for symbols in that module.

``` swift
public struct DefaultAvailability: Codable, Equatable 
```

Default availability is used as a fallback value for symbols without explicit availability information.

This information can be authored in the bundle's Info.plist file, as a dictionary of module names to arrays of platform "name" and "version" pairs:

``` 
<key>CDAppleDefaultAvailability</key>
<dict>
    <key>Module Name</key>
    <array>
        <dict>
            <key>name</key>
            <string>Platform Name</string>
            <key>version</key>
            <string>Version Number</string>
        </dict>
    </array>
</dict>
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
