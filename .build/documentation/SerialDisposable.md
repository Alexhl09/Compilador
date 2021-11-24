# SerialDisposable

A disposable that disposes of its wrapped disposable, and allows its
wrapped disposable to be replaced.

``` swift
public final class SerialDisposable: Disposable 
```

## Inheritance

[`Disposable`](/Disposable), [`Disposable`](/Disposable)

## Initializers

### `init(_:)`

Initializes the receiver to dispose of the argument when the
SerialDisposable is disposed.

``` swift
public init(_ disposable: Disposable? = nil) 
```

#### Parameters

  - disposable: Optional disposable.

## Properties

### `innerDisposable`

``` swift
@available(*, unavailable, renamed:"inner")
	public var innerDisposable: Disposable? 
```

### `isDisposed`

``` swift
public var isDisposed: Bool 
```

### `inner`

The current inner disposable to dispose of.

``` swift
public var inner: Disposable? 
```

Whenever this property is set (even to the same value\!), the previous
disposable is automatically disposed.

## Methods

### `dispose()`

``` swift
public func dispose() 
```
