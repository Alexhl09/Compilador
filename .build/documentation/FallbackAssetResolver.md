# FallbackAssetResolver

An asset resolver that can be used to resolve assets that couldn't be resolved locally.

``` swift
public protocol FallbackAssetResolver 
```

## Requirements

### resolve(assetNamed:​bundleIdentifier:​)

Attempts to resolve an asset that couldn't be resolved externally given its name and the bundle it's apart of.

``` swift
func resolve(assetNamed assetName: String, bundleIdentifier: String) -> DataAsset?
```
