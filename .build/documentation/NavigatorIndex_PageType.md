# NavigatorIndex.PageType

Indicates the page type of a given item inside the tree.

``` swift
public enum PageType: UInt8 
```

> 

## Inheritance

`UInt8`

## Enumeration Cases

### `root`

``` swift
case root = 0
```

### `article`

``` swift
case article = 1
```

### `tutorial`

``` swift
case tutorial = 2
```

### `section`

``` swift
case section = 3
```

### `learn`

``` swift
case learn = 4
```

### `overview`

``` swift
case overview = 5
```

### `resources`

``` swift
case resources = 6
```

### `symbol`

``` swift
case symbol = 7
```

### `framework`

``` swift
case framework = 10
```

### `` `class` ``

``` swift
case `class` = 20
```

### `structure`

``` swift
case structure = 21
```

### `` `protocol` ``

``` swift
case `protocol` = 22
```

### `enumeration`

``` swift
case enumeration = 23
```

### `function`

``` swift
case function = 24
```

### `` `extension` ``

``` swift
case `extension` = 25
```

### `localVariable`

``` swift
case localVariable = 26
```

### `globalVariable`

``` swift
case globalVariable = 27
```

### `typeAlias`

``` swift
case typeAlias = 28
```

### `associatedType`

``` swift
case associatedType = 29
```

### `` `operator` ``

``` swift
case `operator` = 30
```

### `macro`

``` swift
case macro = 31
```

### `union`

``` swift
case union = 32
```

### `enumerationCase`

``` swift
case enumerationCase = 33
```

### `initializer`

``` swift
case initializer = 34
```

### `instanceMethod`

``` swift
case instanceMethod = 35
```

### `instanceProperty`

``` swift
case instanceProperty = 36
```

### `instanceVariable`

``` swift
case instanceVariable = 37
```

### `` `subscript` ``

``` swift
case `subscript` = 38
```

### `typeMethod`

``` swift
case typeMethod =  39
```

### `typeProperty`

``` swift
case typeProperty = 40
```

### `buildSetting`

``` swift
case buildSetting = 42
```

### `propertyListKey`

``` swift
case propertyListKey = 43
```

### `sampleCode`

``` swift
case sampleCode = 44
```

### `httpRequest`

``` swift
case httpRequest = 45
```

### `dictionarySymbol`

``` swift
case dictionarySymbol = 46
```

### `propertyListKeyReference`

``` swift
case propertyListKeyReference = 47
```

### `languageGroup`

``` swift
case languageGroup = 127
```

### `container`

``` swift
case container = 254
```

### `groupMarker`

``` swift
case groupMarker = 255
```

## Properties

### `property`

``` swift
@available(*, deprecated, message: "Please use instanceProperty.")
        public static let property = PageType.instanceProperty
```

### `project`

``` swift
@available(*, deprecated, message: "Please use tutorial.")
        public static let project = PageType.tutorial
```
