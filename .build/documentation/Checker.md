# Checker

A markup checker.

``` swift
public protocol Checker: MarkupWalker 
```

A Checker is a `MarkupWalker` that collects a list of `Problem`s along the way.

## Inheritance

`MarkupWalker`

## Default Implementations

### `any()`

Returns this checker wrapped in an `AnyChecker`.

``` swift
public func any() -> AnyChecker 
```

## Requirements

### problems

Problems found while walking.

``` swift
var problems: [Problem] 
```
