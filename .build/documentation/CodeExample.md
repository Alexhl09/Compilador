# CodeExample

A section that contains a code example.

``` swift
public struct CodeExample: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Properties

### `type`

An optional type for the example.

``` swift
public let type: String?
```

### `syntax`

An optional source language for syntax highlighting.

``` swift
public let syntax: String?
```

### `content`

A list of code chunks.

``` swift
public let content: [Code]
```
