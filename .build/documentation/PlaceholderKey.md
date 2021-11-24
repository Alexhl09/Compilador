# PlaceholderKey

Manage all keys of placeholsers, each placeholder should has an unique key
Struct instead of enum because here we need to extend the number of cases.

``` swift
public struct PlaceholderKey: Hashable 
```

## Inheritance

`Equatable`, `Hashable`

## Properties

### `value`

The key value

``` swift
public let value: String
```

### `loadingKey`

The default loading key, is used for loading placeholder

``` swift
public static var loadingKey 
```

### `noConnectionKey`

The default no internet connection key, is used for no internet connection placeholder

``` swift
public static var noConnectionKey 
```

### `errorKey`

The default error key, is used for error placeholder

``` swift
public static var errorKey 
```

### `noResultsKey`

The default no result key, is used for no results placeholder

``` swift
public static var noResultsKey 
```

### `hashValue`

``` swift
public var hashValue: Int 
```

## Methods

### `custom(key:)`

Is used to add new keys

``` swift
public static func custom(key: String) -> PlaceholderKey 
```

## Operators

### `==`

To make PlaceholderKey hashable

``` swift
public static func == (lhs: PlaceholderKey, rhs: PlaceholderKey) -> Bool 
```
