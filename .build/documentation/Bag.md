# Bag

An unordered, non-unique collection of values of type `Element`.

``` swift
public struct Bag<Element> 
```

## Inheritance

`Collection`

## Nested Type Aliases

### `Index`

``` swift
public typealias Index = Array<Element>.Index
```

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `startIndex`

``` swift
public var startIndex: Index 
```

### `endIndex`

``` swift
public var endIndex: Index 
```

## Methods

### `insert(_:)`

Insert the given value into `self`, and return a token that can
later be passed to `remove(using:​)`.

``` swift
@discardableResult
	public mutating func insert(_ value: Element) -> RemovalToken 
```

#### Parameters

  - value: A value that will be inserted.

### `remove(using:)`

Remove a value, given the token returned from `insert()`.

``` swift
public mutating func remove(using token: RemovalToken) 
```

> 

#### Parameters

  - token: A token returned from a call to `insert()`.

### `index(after:)`

``` swift
public func index(after i: Index) -> Index 
```

### `makeIterator()`

``` swift
public func makeIterator() -> BagIterator<Element> 
```

### `removeValueForToken(_:)`

``` swift
@available(*, unavailable, renamed:"remove(using:)")
	public func removeValueForToken(_ token: RemovalToken) 
```
