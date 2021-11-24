# Extensions on Array

## Methods

### `apply(_:)`

apply an array of functions to `self`

``` swift
func apply<T>(_ fs: [(Element) -> T]) -> [T] 
```

This will return a new array resulting from the matrix of each function
being applied to each value inside `self`

#### Parameters

  - fs: An array of transformation functions from type `Element` to type `T`

#### Returns

A value of type `[T]`
