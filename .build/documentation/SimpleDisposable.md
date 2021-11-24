# SimpleDisposable

A disposable that only flips `isDisposed` upon disposal, and performs no other
work.

``` swift
public final class SimpleDisposable: Disposable 
```

## Inheritance

[`Disposable`](/Disposable), [`Disposable`](/Disposable)

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `isDisposed`

``` swift
public var isDisposed: Bool 
```

## Methods

### `dispose()`

``` swift
public func dispose() 
```
