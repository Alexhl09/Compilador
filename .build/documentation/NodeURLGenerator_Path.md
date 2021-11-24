# NodeURLGenerator.Path

``` swift
public enum Path 
```

## Enumeration Cases

### `documentation`

``` swift
case documentation(path: String)
```

### `documentationCuration`

``` swift
case documentationCuration(parentPath: String, articleName: String)
```

### `article`

``` swift
case article(bundleName: String, articleName: String)
```

### `technology`

``` swift
case technology(technologyName: String)
```

### `tutorial`

``` swift
case tutorial(bundleName: String, tutorialName: String)
```

## Properties

### `tutorialsFolderName`

``` swift
public static let tutorialsFolderName = "tutorials"
```

### `documentationFolderName`

``` swift
public static let documentationFolderName = "documentation"
```

### `tutorialsFolder`

``` swift
public static let tutorialsFolder = "/\(tutorialsFolderName)"
```

### `documentationFolder`

``` swift
public static let documentationFolder = "/\(documentationFolderName)"
```

### `stringValue`

A URL safe path under the given root path.

``` swift
public var stringValue: String 
```
