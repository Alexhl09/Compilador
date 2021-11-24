# DownloadRequest.DownloadOptions

A collection of options to be executed prior to moving a downloaded file from the temporary URL to the
destination URL.

``` swift
public struct DownloadOptions: OptionSet 
```

## Inheritance

`OptionSet`, `OptionSet`, `OptionSet`

## Initializers

### `init(rawValue:)`

Creates a `DownloadFileDestinationOptions` instance with the specified raw value.

``` swift
public init(rawValue: UInt) 
```

#### Parameters

  - rawValue: The raw bitmask value for the option.

#### Returns

A new log level instance.

### `init(rawValue:)`

Creates a `DownloadFileDestinationOptions` instance with the specified raw value.

``` swift
public init(rawValue: UInt) 
```

#### Parameters

  - rawValue: The raw bitmask value for the option.

#### Returns

A new log level instance.

### `init(rawValue:)`

Creates a `DownloadFileDestinationOptions` instance with the specified raw value.

``` swift
public init(rawValue: UInt) 
```

#### Parameters

  - rawValue: The raw bitmask value for the option.

#### Returns

A new log level instance.

## Properties

### `rawValue`

Returns the raw bitmask value of the option and satisfies the `RawRepresentable` protocol.

``` swift
public let rawValue: UInt
```

### `createIntermediateDirectories`

A `DownloadOptions` flag that creates intermediate directories for the destination URL if specified.

``` swift
public static let createIntermediateDirectories 
```

### `removePreviousFile`

A `DownloadOptions` flag that removes a previous file from the destination URL if specified.

``` swift
public static let removePreviousFile 
```

### `rawValue`

Returns the raw bitmask value of the option and satisfies the `RawRepresentable` protocol.

``` swift
public let rawValue: UInt
```

### `createIntermediateDirectories`

A `DownloadOptions` flag that creates intermediate directories for the destination URL if specified.

``` swift
public static let createIntermediateDirectories 
```

### `removePreviousFile`

A `DownloadOptions` flag that removes a previous file from the destination URL if specified.

``` swift
public static let removePreviousFile 
```

### `rawValue`

Returns the raw bitmask value of the option and satisfies the `RawRepresentable` protocol.

``` swift
public let rawValue: UInt
```

### `createIntermediateDirectories`

A `DownloadOptions` flag that creates intermediate directories for the destination URL if specified.

``` swift
public static let createIntermediateDirectories 
```

### `removePreviousFile`

A `DownloadOptions` flag that removes a previous file from the destination URL if specified.

``` swift
public static let removePreviousFile 
```
