# RenderBlockContent.TermListItem

A term definition.

``` swift
public struct TermListItem: Codable, Equatable 
```

Includes a named term and its definition, that look like:

  - term: "Generic Types"

  - definition: "Custom classes, structures, and enumerations that can
    work with any type, in a similar way to `Array` and `Dictionary`."

The term contains a list of inline elements to allow formatting while,
the definition can be any free-form content including images, paragraphs, tables, etc.

## Inheritance

`Codable`, `Equatable`

## Properties

### `term`

The term in the term-list item.

``` swift
public let term: Term
```

### `definition`

The definition in the term-list item.

``` swift
public let definition: Definition
```
