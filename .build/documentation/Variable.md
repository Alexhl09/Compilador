# Variable

Starts with an initial value and replays it or the latest element to new subscribers.

``` swift
public final class Variable<T>: Observable<T> 
```

## Inheritance

`Observable<T>`

## Initializers

### `init(_:)`

Initializes a new variable with the given value.

``` swift
public init(_ value: Value) 
```

> 

## Properties

### `value`

The current (read- and writeable) value of the variable.

``` swift
public override var value: Value 
```

## Methods

### `subscribe(_:)`

``` swift
public override func subscribe(_ observer: @escaping Observer) -> Disposable 
```
