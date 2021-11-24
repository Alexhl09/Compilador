# InterfaceLanguage

Interface Language identifies a programming language used to index a content of a documentation bundle.

``` swift
public struct InterfaceLanguage: Hashable, CustomStringConvertible, Codable, Equatable 
```

> 

## Inheritance

`Codable`, `CustomStringConvertible`, `Equatable`, `Hashable`

## Nested Type Aliases

### `ID`

``` swift
public typealias ID = UInt8
```

## Initializers

### `init(_:id:)`

Initialize a platform with the given display name and id.
Id is an integer used to shift bits and generate a mask for fast processing.

``` swift
public init(_ name: String, id: Int) 
```

#### Parameters

  - name: The name of the platform used also for display. Note: case sensitive.
  - id: The ID of the platform.

## Properties

### `name`

A user friendly name for the language.

``` swift
public let name: String
```

### `mask`

A mask to use to identify the `ProgrammingLanguage`.

``` swift
public let mask: ID
```

### `description`

``` swift
public var description: String 
```

### `swift`

``` swift
public static let swift 
```

### `objc`

``` swift
public static let objc  
```

### `data`

``` swift
public static let data  
```

### `undefined`

``` swift
public static let undefined 
```

### `any`

``` swift
public static let any 
```

### `apple`

``` swift
public static let apple 
```

### `all`

``` swift
public static let all 
```

## Methods

### `from(string:)`

``` swift
public static func from(string: String) -> InterfaceLanguage 
```

## Operators

### `==`

``` swift
public static func == (lhs: InterfaceLanguage, rhs: InterfaceLanguage) -> Bool 
```
