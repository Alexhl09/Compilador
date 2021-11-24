# ScopedDisposable

A disposable that, upon deinitialization, will automatically dispose of
its inner disposable.

``` swift
public final class ScopedDisposable<Inner: Disposable>: Disposable 
```

## Inheritance

[`Disposable`](/Disposable), [`Disposable`](/Disposable)

## Initializers

### `init(_:)`

Initialize the receiver to dispose of the argument upon
deinitialization.

``` swift
public init(_ disposable: Inner) 
```

#### Parameters

  - disposable: A disposable to dispose of when deinitializing.

## Properties

### `innerDisposable`

``` swift
@available(*, unavailable, renamed:"inner")
	public var innerDisposable: Disposable 
```

### `inner`

The disposable which will be disposed when the ScopedDisposable
deinitializes.

``` swift
public let inner: Inner
```

### `isDisposed`

``` swift
public var isDisposed: Bool 
```

## Methods

### `dispose()`

``` swift
public func dispose() 
```
