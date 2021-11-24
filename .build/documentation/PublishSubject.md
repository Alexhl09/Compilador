# PublishSubject

Starts empty and only emits new elements to subscribers.

``` swift
public final class PublishSubject<T>: Observable<T> 
```

## Inheritance

`Observable<T>`

## Initializers

### `init()`

Initializes a new publish subject.

``` swift
public override init() 
```

> 

## Properties

### `value`

The current (readonly) value of the observable (if available).

``` swift
public override var value: Value? 
```

## Methods

### `update(_:)`

Updates the publish subject using the given value.

``` swift
public func update(_ value: Value) 
```
