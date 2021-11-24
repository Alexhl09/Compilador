# pure(\_:)

Wrap a value in a minimal context of `[]`

``` swift
public func pure<T>(_ a: T) -> [T] 
```

## Parameters

  - a: A value of type `T`

## Returns

The provided value wrapped in an array

# pure(\_:)

Wrap a value in a minimal context of `.Some`

``` swift
public func pure<T>(_ a: T) -> T? 
```

## Parameters

  - a: A value of type `T`

## Returns

The provided value wrapped in `.Some`

# pure(\_:)

Wrap a value in the minimal context of `.Success`.

``` swift
public func pure<T>(_ x: T) -> Decoded<T> 
```

## Parameters

  - x: Any value

## Returns

The provided value wrapped in `.Success`
