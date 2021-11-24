# ActionDisposable

A disposable that will run an action upon disposal.

``` swift
public final class ActionDisposable: Disposable 
```

## Inheritance

[`Disposable`](/Disposable), [`Disposable`](/Disposable)

## Initializers

### `init(action:)`

Initialize the disposable to run the given action upon disposal.

``` swift
public init(action: @escaping () -> Void) 
```

#### Parameters

  - action: A closure to run when calling `dispose()`.

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
