# AnyDisposable

A type-erased disposable that forwards operations to an underlying disposable.

``` swift
public final class AnyDisposable: Disposable 
```

## Inheritance

[`Disposable`](/Disposable), [`Disposable`](/Disposable)

## Initializers

### `init(_:)`

``` swift
public init(_ disposable: Disposable) 
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
