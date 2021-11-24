# BundleDiscoveryOptions

Options to configure the discovery of documentation bundles

``` swift
public struct BundleDiscoveryOptions 
```

## Initializers

### `init(fallbackDisplayName:fallbackIdentifier:fallbackVersion:fallbackDefaultCodeListingLanguage:fallbackDefaultModuleKind:fallbackDefaultAvailability:additionalSymbolGraphFiles:)`

Creates new bundle discovery options with the given information.

``` swift
public init(
        fallbackDisplayName: String? = nil,
        fallbackIdentifier: String? = nil,
        fallbackVersion: String? = nil,
        fallbackDefaultCodeListingLanguage: String? = nil,
        fallbackDefaultModuleKind: String? = nil,
        fallbackDefaultAvailability: DefaultAvailability? = nil,
        additionalSymbolGraphFiles: [URL] = []
    ) 
```

The given fallback values will be used if any of the discovered bundles are missing that
value in their Info.plist configuration file.

#### Parameters

  - fallbackDisplayName: A fallback display name for the bundle.
  - fallbackIdentifier: A fallback identifier for the bundle.
  - fallbackVersion: A fallback version for the bundle.
  - fallbackDefaultCodeListingLanguage: A fallback default code listing language for the bundle.
  - fallbackDefaultAvailability: A fallback default availability for the bundle.
  - additionalSymbolGraphFiles: Additional symbol graph files to augment any discovered bundles.

### `init(infoPlistFallbacks:additionalSymbolGraphFiles:)`

Creates a new options value with the given configurations.

``` swift
public init(
        infoPlistFallbacks: [String: Any] = [:],
        additionalSymbolGraphFiles: [URL] = []
    ) 
```

#### Parameters

  - infoPlistFallbacks: Fallback values for information that's missing in the bundle's Info.plist file.
  - additionalSymbolGraphFiles: Additional symbol graph files that the provider should include in the discovered bundles.

### `init(fallbackInfo:additionalSymbolGraphFiles:)`

Creates new bundle discovery options with the provided documentation bundle info
as Info.plist fallback values.

``` swift
public init(
        fallbackInfo: DocumentationBundle.Info,
        additionalSymbolGraphFiles: [URL] = []
    ) throws 
```

#### Parameters

  - fallbackInfo: Fallback documentation bundle information to use if any discovered bundles are missing an Info.plist.
  - additionalSymbolGraphFiles: Additional symbol graph files to augment any discovered bundles.

## Properties

### `infoPlistFallbacks`

Fallback values for information that's missing in the bundle's Info.plist file.

``` swift
public let infoPlistFallbacks: [String: Any]
```

### `additionalSymbolGraphFiles`

Additional symbol graph files that the provider should include in the discovered bundles.

``` swift
public let additionalSymbolGraphFiles: [URL]
```
