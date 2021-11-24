# CompositeDisposable

A disposable that will dispose of any number of other disposables.

``` swift
public final class CompositeDisposable: Disposable 
```

## Inheritance

[`Disposable`](/Disposable), [`Disposable`](/Disposable)

## Initializers

### `init(_:)`

Initialize a `CompositeDisposable` containing the given sequence of
disposables.

``` swift
public init<S: Sequence>(_ disposables: S)
		where S.Iterator.Element == Disposable
```

#### Parameters

  - disposables: A collection of objects conforming to the `Disposable` protocol

### `init(_:)`

Initialize a `CompositeDisposable` containing the given sequence of
disposables.

``` swift
public convenience init<S: Sequence>(_ disposables: S)
		where S.Iterator.Element == Disposable?
```

#### Parameters

  - disposables: A collection of objects conforming to the `Disposable` protocol

### `init()`

Initializes an empty `CompositeDisposable`.

``` swift
public convenience init() 
```

## Properties

### `isDisposed`

``` swift
public var isDisposed: Bool 
```

## Methods

### `addDisposable(_:)`

``` swift
@available(*, unavailable, renamed:"add(_:)")
	public func addDisposable(_ d: Disposable) -> DisposableHandle 
```

### `dispose()`

``` swift
public func dispose() 
```

### `add(_:)`

Add the given disposable to the list, then return a handle which can
be used to opaquely remove the disposable later (if desired).

``` swift
@discardableResult
	public func add(_ d: Disposable?) -> DisposableHandle 
```

#### Parameters

  - d: Optional disposable.

#### Returns

An instance of `DisposableHandle` that can be used to opaquely remove the disposable later (if desired).

### `add(_:)`

Add an ActionDisposable to the list.

``` swift
@discardableResult
	public func add(_ action: @escaping () -> Void) -> DisposableHandle 
```

#### Parameters

  - action: A closure that will be invoked when `dispose()` is called.

#### Returns

An instance of `DisposableHandle` that can be used to opaquely remove the disposable later (if desired).
