# DocumentationBundleFileTypes

A collection of functions to check if a file is one of the documentation bundle files types.

``` swift
public enum DocumentationBundleFileTypes 
```

## Methods

### `isReferenceDocumentationFile(_:)`

Checks if a file is a reference documentation file.

``` swift
public static func isReferenceDocumentationFile(_ url: URL) -> Bool 
```

#### Parameters

  - url: The file to check.

#### Returns

Whether or not the file at `url` is a reference documentation file.

### `isTutorialFile(_:)`

Checks if a file is a tutorial file.

``` swift
public static func isTutorialFile(_ url: URL) -> Bool 
```

#### Parameters

  - url: The file to check.

#### Returns

Whether or not the file at `url` is a tutorial file.

### `isMarkupFile(_:)`

Checks if a file is a markup file; that is, either a reference documentation file or a tutorial file.

``` swift
public static func isMarkupFile(_ url: URL) -> Bool 
```

#### Parameters

  - url: The file to check.

#### Returns

Whether or not the file at `url` is a markup file.

### `isSymbolGraphFile(_:)`

Checks if a file is a symbol graph file.

``` swift
public static func isSymbolGraphFile(_ url: URL) -> Bool 
```

#### Parameters

  - url: The file to check.

#### Returns

Whether or not the file at `url` is a symbol graph file.

### `isDocumentationBundle(_:)`

Checks if a folder is a documentation bundle.

``` swift
public static func isDocumentationBundle(_ url: URL) -> Bool 
```

#### Parameters

  - url: The folder to check.

#### Returns

Whether or not the folder at `url` is a documentation bundle.

### `isInfoPlistFile(_:)`

Checks if a file is an Info.plist file.

``` swift
public static func isInfoPlistFile(_ url: URL) -> Bool 
```

#### Parameters

  - url: The file to check.

#### Returns

Whether or not the file at `url` is an Info.plist file.

### `isCustomHeader(_:)`

Checks if a file is a custom header.

``` swift
public static func isCustomHeader(_ url: URL) -> Bool 
```

#### Parameters

  - url: The file to check.

#### Returns

Whether or not the file at `url` is a custom header.

### `isCustomFooter(_:)`

Checks if a file is a custom footer.

``` swift
public static func isCustomFooter(_ url: URL) -> Bool 
```

#### Parameters

  - url: The file to check.

#### Returns

Whether or not the file at `url` is a custom footer.
