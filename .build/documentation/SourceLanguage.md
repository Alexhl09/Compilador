# SourceLanguage

A programming language.

``` swift
public struct SourceLanguage: Hashable, Codable 
```

## Inheritance

`Codable`, `Hashable`

## Initializers

### `init(name:id:)`

Creates a new language with a given name and identifier.

``` swift
public init(name: String, id: String) 
```

#### Parameters

  - name: The display name of the programming language.
  - id: A globally unique identifier for the language.

### `init?(queryID:)`

Finds the programming language that matches a given query identifier.

``` swift
@available(*, deprecated, renamed: "init(id:)")
    public init?(queryID: String) 
```

If the query identifier doesn't match any known language, this initializer returns `nil`.

#### Parameters

  - queryID: The query identifier of the programming language.

### `init(id:)`

Finds the programming language that matches a given identifier, or creates a new one if it finds no existing language.

``` swift
public init(id: String) 
```

#### Parameters

  - id: The identifier of the programming language.

### `init(name:)`

Finds the programming language that matches a given display name, or creates a new one if it finds no existing language.

``` swift
public init(name: String) 
```

#### Parameters

  - name: The display name of the programming language.

### `init?(knownLanguageName:)`

Finds the programming language that matches a given display name.

``` swift
public init?(knownLanguageName: String) 
```

If the language name doesn't match any known language, this initializer returns `nil`.

#### Parameters

  - knownLanguageName: The display name of the programming language.

### `init?(knownLanguageIdentifier:)`

Finds the programming language that matches a given identifier.

``` swift
public init?(knownLanguageIdentifier: String) 
```

If the language identifier doesn't match any known language, this initializer returns `nil`.

#### Parameters

  - knownLanguageIdentifier: The identifier name of the programming language.

## Properties

### `name`

The display name of the programming language.

``` swift
public var name: String
```

### `id`

A globally unique identifier for the language.

``` swift
public var id: String
```

### `swift`

The Swift programming language.

``` swift
public static let swift 
```

### `objectiveC`

The Objective-C programming language.

``` swift
public static let objectiveC 
```

### `javaScript`

The JavaScript programming language or another language that conforms to the ECMAScript specification.

``` swift
public static let javaScript 
```

### `data`

Miscellaneous data, that's not a programming language.

``` swift
public static let data 
```

For example, use this to represent JSON or XML content.

### `metal`

The Metal programming language.

``` swift
public static let metal 
```

### `knownLanguages`

The list of programming languages that are known to DocC.

``` swift
public static var knownLanguages: [SourceLanguage] = [.swift, .objectiveC, .javaScript, .data, .metal]
```
