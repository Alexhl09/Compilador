# Disposable

Represents something that can be “disposed”, usually associated with freeing
resources or canceling work.

``` swift
public protocol Disposable: class 
```

## Inheritance

`class`

## Associated Types

### `Dispose`

Type for closure to be executed on deallocation.

``` swift
public typealias Dispose = () -> Void
```

## Initializers

### `init(_:)`

Creates a new instance.

``` swift
public init(_ dispose: @escaping Dispose) 
```

#### Parameters

  - dispose: The closure that is executed on deallocation.

## Properties

### `disposed`

``` swift
@available(*, unavailable, renamed:"isDisposed")
	public var disposed: Bool 
```

## Methods

### `disposed(by:)`

Adds the current instance to the given array of disposables.

``` swift
public func disposed(by bag: inout DisposeBag) 
```

## Default Implementations

### `disposed`

``` swift
@available(*, unavailable, renamed:"isDisposed")
	public var disposed: Bool 
```

## Requirements

### isDisposed

Whether this disposable has been disposed already.

``` swift
var isDisposed: Bool 
```

### dispose()

Disposing of the resources represented by `self`. If `self` has already
been disposed of, it does nothing.

``` swift
func dispose()
```

> 
