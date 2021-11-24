# Observable

A lightweight implementation of an observable sequence that you can subscribe to.

``` swift
public class Observable<T> 
```

> 

> 

## Nested Type Aliases

### `Value`

The type for the new value of the observable.

``` swift
public typealias Value = T
```

### `OldValue`

The type for the previous value of the observable.

``` swift
public typealias OldValue = T?
```

### `Observer`

The type for the closure to executed on change of the observable.

``` swift
public typealias Observer = (_ value: Value, _ oldValue: OldValue) -> Void
```

#### Parameters

  - value: The current (new) value.
  - oldValue: The previous (old) value.

## Properties

### `value`

The current (readonly) value of the observable (if available).

``` swift
public var value: Value? 
```

> 

> 

## Methods

### `bind(to:on:)`

Updates the property at the given key-path on changes to our property `value`.

``` swift
func bind<Root: AnyObject>(to keyPath: ReferenceWritableKeyPath<Root, Value>, on object: Root) -> Disposable 
```

#### Parameters

  - keyPath: The key-path that indicates the property to assign.
  - object: The object containing the property to update.

### `bind(to:on:)`

Updates the property at the given key-path on changes to our property `value`.

``` swift
func bind<Root>(to keyPath: ReferenceWritableKeyPath<Root, Value?>, on object: Root) -> Disposable 
```

> 

#### Parameters

  - keyPath: The key-path that indicates the property to assign.
  - object: The object containing the property to update.

### `subscribe(_:)`

Informs the given observer on changes to our underlying property `value`.

``` swift
public func subscribe(_ observer: @escaping Observer) -> Disposable 
```

#### Parameters

  - observer: The closure that is notified on changes.
