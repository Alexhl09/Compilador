# LMDBData

A type with a customized data representation suited for storage inside an LMDB database.

``` swift
public protocol LMDBData 
```

Types that conform to the `LMDBData` protocol can provide their own representation to be used when converting
an instance to a valid data representation ready for LMDB storage.

> Note: Default implementations for some common Swift types are included. Custom types require an appropriate
> implementation of the conversion.

## Default Implementations

### `init?(data:)`

``` swift
init?(data: UnsafeRawBufferPointer) 
```

### `read(_:)`

``` swift
func read<R>(_ body: (UnsafeRawBufferPointer) throws -> R) rethrows -> R 
```

## Requirements

### init?(data:​)

``` swift
init?(data: UnsafeRawBufferPointer)
```

### read(\_:​)

``` swift
func read<ResultType>(_ body: (UnsafeRawBufferPointer) throws -> ResultType) rethrows -> ResultType
```
