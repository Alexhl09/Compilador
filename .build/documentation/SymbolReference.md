# SymbolReference

A reference to a symbol, possibly defined in a symbol graph.

``` swift
public struct SymbolReference 
```

## Initializers

### `init(_:interfaceLanguage:symbol:shouldAddHash:shouldAddKind:)`

Creates a new reference to a symbol.

``` swift
public init(_ identifier: String, interfaceLanguage: SourceLanguage, symbol: SymbolGraph.Symbol? = nil, shouldAddHash: Bool = false, shouldAddKind: Bool = false) 
```

The two symbols `MyFramework/Manager`, a class, and `MyFramework/manager`, a static variable,
have the same topic reference paths. For such symbols, set `shouldAddKind` to `true`
to add the symbol kind to the reference path and generate the unique paths
`/myframework/manager-swift.class` and `/myframework/manager-swift.variable`.

Another case might be two symbols of the same kind with colliding paths, for example,
the variable `MyFramework/vaRiable` and `MyFramework/VARiable`. Set `shouldAddHash` to `true`
to append a hash of the symbol name at the end of the path to make the two paths distinct.

#### Parameters

  - identifier: The precise identifier of a symbol.
  - interfaceLanguage: The source language of the symbol.
  - symbol: A symbol graph node, if available.
  - shouldAddHash: If `true`, the new reference has a hash appended to its path.
  - shouldAddKind: If `true`, the new reference has the referenced-symbol kind appended to its path.

### `init(pathComponents:interfaceLanguage:)`

Creates a new symbol reference with the given components and language.

``` swift
public init(pathComponents: [String], interfaceLanguage: SourceLanguage) 
```

#### Parameters

  - pathComponents: The relative path components from the module or framework to the symbol.
  - interfaceLanguage: The source language of the symbol.

## Properties

### `path`

The relative path from the module or framework to the symbol itself.

``` swift
public let path: String
```

### `interfaceLanguage`

The interface language for the reference.

``` swift
public let interfaceLanguage: SourceLanguage
```
