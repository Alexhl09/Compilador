# RenderReference

A reference to a resource.

``` swift
public protocol RenderReference: Codable 
```

The reference can refer to a resource within a documentation bundle (e.g., another symbol) or an external resource (e.g., a web URL).
Check the conforming types to browse the different kinds of references.

## Inheritance

`Codable`

## Requirements

### type

The type of the reference.

``` swift
var type: RenderReferenceType 
```

### identifier

The identifier of the reference.

``` swift
var identifier: RenderReferenceIdentifier 
```

The identifier can be used to look up a value in the render node's `RenderNode/references` dictionary.
