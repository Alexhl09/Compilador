# PlaceholdersProvider

This class is responsible for generating placeholders for the table view
Takes a list of Placeholders object and generate for everyone the data source and delegate
A placeholder view is a table view with one cell

``` swift
final public class PlaceholdersProvider 
```

## Initializers

### `init(loading:error:noResults:noConnection:)`

Create and return PlaceholdersProvider object with the specified placeholder
By Default, you have 4 placeholders:​ loading, error, no results, and no internet connection

``` swift
public init(loading: Placeholder, error: Placeholder, noResults: Placeholder, noConnection: Placeholder) 
```

#### Parameters

  - loading: the loading placeholder
  - error: the placeholder to show when an error occured
  - noResults: the placeholer to show when no results is avaible
  - noConnection: the placeholder of no internet connection

### `init(placeholders:)`

Create and return PlaceholdersProvider object with the specified (custom) placeholders

``` swift
public init(placeholders: Placeholder...) 
```

#### Parameters

  - placeholders: the placeholders

## Properties

### `default2`

The default2 provider has the same placeholders as default, but with different images

``` swift
public static var default2: PlaceholdersProvider 
```

### `` `default` ``

The default provider has 4 placeholders:​ loading, error, noResults, and no internet conntection

``` swift
public static var `default`: PlaceholdersProvider 
```

### `basic`

The basic provider has the same placeholders as default, but without any images

``` swift
public static var basic: PlaceholdersProvider 
```

### `halloween`

The halloween provider has the same placeholders as default, but with different images and style (for fun :​))

``` swift
public static var halloween: PlaceholdersProvider 
```

## Methods

### `add(placeholders:)`

Allows you to add new placeholders

``` swift
public func add(placeholders: Placeholder...) 
```
