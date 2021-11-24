# Parameter

Documentation about a parameter for a symbol.

``` swift
public struct Parameter 
```

## Initializers

### `init(name:contents:)`

Initialize a value to describe documentation about a parameter for a symbol.

``` swift
public init(name: String, contents: [Markup]) 
```

#### Parameters

  - name: The name of this parameter.
  - contents: The content that describe this parameter.

## Properties

### `name`

The name of the parameter.

``` swift
public var name: String
```

### `contents`

The content that describe the parameter.

``` swift
public var contents: [Markup]
```
