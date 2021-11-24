# AbsoluteSymbolLink

An absolute link to a symbol.

``` swift
public struct AbsoluteSymbolLink: CustomStringConvertible 
```

You can use this model to validate a symbol link and access its different parts.

## Inheritance

`CustomStringConvertible`

## Initializers

### `init?(string:)`

Create a new documentation symbol link from a path.

``` swift
public init?(string: String) 
```

Expects an absolute symbol link structured like one of the following:

  - doc://org.swift.docc.example/documentation/ModuleName

  - doc://org.swift.docc.example/documentation/ModuleName/TypeName

  - doc://org.swift.docc.example/documentation/ModuleName/ParentType/Test-swift.class/testFunc()-k2k9d

  - doc://org.swift.docc.example/documentation/ModuleName/ClassName/functionName(firstParameter:secondParameter:)

## Properties

### `bundleID`

The identifier for the documentation bundle this link is from.

``` swift
public let bundleID: String
```

### `module`

The name of the module that contains this symbol link.

``` swift
public let module: String
```

> 

### `topLevelSymbol`

The top level symbol in this documentation link.

``` swift
public let topLevelSymbol: LinkComponent
```

If this symbol represents a module (see `representsModule`), then
this is just the module and can be ignored. Otherwise, it's the top level symbol within
the module.

### `basePathComponents`

The ordered path components, excluding the module and top level symbol.

``` swift
public let basePathComponents: [LinkComponent]
```

### `representsModule`

A Boolean value that is true if this is a link to a module.

``` swift
public let representsModule: Bool
```

### `description`

``` swift
public var description: String 
```
