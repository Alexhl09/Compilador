# AvailabilityIndex

The `AvailabilityIndex` class stores the information about availability for SDKs of symbols.
The information if a symbol is available for a given platform and version is stored inside this index.

``` swift
public class AvailabilityIndex: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init()`

``` swift
public init() 
```

### `init(from:)`

``` swift
public required init(from decoder: Decoder) throws 
```

## Properties

### `interfaceLanguages`

The set containing all the interface languages in the index.

``` swift
public private(set) var interfaceLanguages 
```

### `platforms`

``` swift
public private(set) var platforms: Set<Platform.Name> = []
```

## Methods

### `id(for:createIfMissing:)`

``` swift
public func id(for info: Info, createIfMissing: Bool = false) -> Int? 
```

### `info(for:)`

``` swift
public func info(for id: Int) -> Info? 
```

### `versions(for:)`

Returns a set containing the versions for a given platform.

``` swift
public func versions(for platform: Platform.Name) -> Set<Platform.Version>? 
```

### `sortedVersions(for:)`

Returns an array containing the versions for a given platform in ascending order.

``` swift
public func sortedVersions(for platform: Platform.Name) -> [Platform.Version]? 
```

### `platform(for:)`

Returns a Platform for a given ID.

``` swift
public func platform(for id: Platform.Name.ID) -> Platform.Name? 
```

### `platform(named:)`

Returns a `Platform.Name` with a given `String`, otherwise return the `undefined` platform.

``` swift
public func platform(named name: String) -> Platform.Name 
```

> 

### `platforms(for:)`

Returns a list of platforms for a given language.

``` swift
public func platforms(for interfaceLangauge: InterfaceLanguage) -> [Platform.Name]? 
```

### `add(language:)`

Insert a language inside the index.

``` swift
public func add(language: InterfaceLanguage) 
```

### `add(platform:for:)`

Insert a language inside the index.

``` swift
public func add(platform: Platform.Name, for language: InterfaceLanguage) 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
