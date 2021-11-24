# DocumentationNode.Kind

The kind of a documentation node.

``` swift
public struct Kind: Hashable, Codable 
```

## Inheritance

`Codable`, `Hashable`

## Properties

### `name`

The name of the kind, suitable for display.

``` swift
public var name: String
```

### `id`

A globally unique identifier for the kind, typically a reverse-dns name.

``` swift
public var id: String
```

### `isSymbol`

`true` if the documentation node is about a symbol, `false` otherwise.

``` swift
public var isSymbol: Bool
```

### `isPage`

`true` if the documentation has its own "page", `false` if it only exists in another node.

``` swift
public var isPage: Bool 
```

### `unknown`

An unknown kind of documentation node.

``` swift
public static let unknown 
```

### `unknownSymbol`

An unknown kind of symbol documentation node.

``` swift
public static let unknownSymbol 
```

### `landingPage`

A documentation landing page.

``` swift
public static let landingPage 
```

### `collection`

A documentation collection.

``` swift
public static let collection 
```

### `collectionGroup`

A group of documentation collections.

``` swift
public static let collectionGroup 
```

### `root`

Root-level documentation.

``` swift
public static let root 
```

### `module`

Documentation about a module (also known as a framework, a library, or a package in some programming languages).

``` swift
public static let module 
```

### `article`

A documentation article.

``` swift
public static let article 
```

### `sampleCode`

A sample code project.

``` swift
public static let sampleCode 
```

### `technologyOverview`

A technology overview.

``` swift
public static let technologyOverview 
```

### `volume`

A volume of documentation within a technology.

``` swift
public static let volume 
```

### `chapter`

A chapter of documentation within a volume.

``` swift
public static let chapter 
```

### `tutorial`

A tutorial.

``` swift
public static let tutorial 
```

### `tutorialArticle`

A tutorial article.

``` swift
public static let tutorialArticle 
```

### `onPageLandmark`

An on-page landmark.

``` swift
public static let onPageLandmark 
```

### `` `class` ``

Documentation about a class.

``` swift
public static let `class` 
```

### `structure`

Documentation about a structure.

``` swift
public static let structure 
```

### `enumeration`

Documentation about an enumeration.

``` swift
public static let enumeration 
```

### `` `protocol` ``

Documentation about a protocol.

``` swift
public static let `protocol` 
```

### `technology`

Documentation about a technology.

``` swift
public static let technology 
```

### `` `extension` ``

Documentation about an extension.

``` swift
public static let `extension` 
```

### `localVariable`

Documentation about a local variable.

``` swift
public static let localVariable 
```

### `globalVariable`

Documentation about a global variable.

``` swift
public static let globalVariable 
```

### `typeAlias`

Documentation about a type alias.

``` swift
public static let typeAlias 
```

### `typeDef`

Documentation about a type definition.

``` swift
public static let typeDef 
```

### `associatedType`

Documentation about an associated type.

``` swift
public static let associatedType 
```

### `function`

Documentation about a function.

``` swift
public static let function 
```

### `` `operator` ``

Documentation about an operator.

``` swift
public static let `operator` 
```

### `macro`

Documentation about a macro.

``` swift
public static let macro 
```

### `union`

Documentation about a union.

``` swift
public static let union 
```

### `enumerationCase`

Documentation about an enumeration case.

``` swift
public static let enumerationCase 
```

### `initializer`

Documentation about an initializer.

``` swift
public static let initializer 
```

### `deinitializer`

Documentation about a deinitializer.

``` swift
public static let deinitializer 
```

### `instanceMethod`

Documentation about an instance method.

``` swift
public static let instanceMethod 
```

### `instanceProperty`

Documentation about an instance property.

``` swift
public static let instanceProperty 
```

### `instanceSubscript`

Documentation about an instance subscript.

``` swift
public static let instanceSubscript 
```

### `instanceVariable`

Documentation about a type subscript.

``` swift
public static let instanceVariable 
```

### `typeMethod`

Documentation about a type method.

``` swift
public static let typeMethod 
```

### `typeProperty`

Documentation about a type property.

``` swift
public static let typeProperty 
```

### `typeSubscript`

Documentation about a type subscript.

``` swift
public static let typeSubscript 
```

### `typeConstant`

Documentation about a type constant.

``` swift
public static let typeConstant 
```

### `buildSetting`

Documentation about a build setting.

``` swift
public static let buildSetting 
```

### `propertyListKey`

Documentation about a property list key.

``` swift
public static let propertyListKey 
```

### `keyword`

Documentation about a keyword.

``` swift
public static let keyword 
```

### `restAPI`

Documentation about a REST API.

``` swift
public static let restAPI 
```

### `tag`

Documentation about a tag.

``` swift
public static let tag 
```

### `propertyList`

Documentation about a property list.

``` swift
public static let propertyList 
```

### `object`

Documentation about an object.

``` swift
public static let object 
```

### `allKnownValues`

The list of all known kinds of documentation nodes.

``` swift
public static let allKnownValues: [DocumentationNode.Kind] = [
        // Grouping
        .landingPage, .collection, .collectionGroup,
        // Conceptual
        .root, .module, .article, .sampleCode, .technologyOverview, .volume, .chapter, .tutorial, .tutorialArticle, .onPageLandmark,
        // Containers
        .class, .structure, .enumeration, .protocol, .technology, .extension,
        // Leaves
        .localVariable, .globalVariable, .typeAlias, .typeDef, .typeConstant, .associatedType, .function, .operator, .macro, .union,
        // Member-only leaves
        .enumerationCase, .initializer, .deinitializer, .instanceMethod, .instanceProperty, .instanceSubscript, .instanceVariable, .typeMethod, .typeProperty, .typeSubscript,
        // Data
        .buildSetting, .propertyListKey,
        // Other
        .keyword, .restAPI, .tag, .propertyList, .object
    ]
```

> 
