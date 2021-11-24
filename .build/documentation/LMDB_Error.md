# LMDB.Error

A convenience Error enum to handle potential LMDB errors.

``` swift
public enum Error: Swift.Error, Equatable 
```

> 

## Inheritance

`Equatable`, `Swift.Error`

## Enumeration Cases

### `keyExists`

``` swift
case keyExists
```

### `notFound`

``` swift
case notFound
```

### `pageNotFound`

``` swift
case pageNotFound
```

### `corrupted`

``` swift
case corrupted
```

### `panic`

``` swift
case panic
```

### `versionMismatch`

``` swift
case versionMismatch
```

### `invalid`

``` swift
case invalid
```

### `mapFull`

``` swift
case mapFull
```

### `dbsFull`

``` swift
case dbsFull
```

### `readersFull`

``` swift
case readersFull
```

### `tlsFull`

``` swift
case tlsFull
```

### `txnFull`

``` swift
case txnFull
```

### `cursorFull`

``` swift
case cursorFull
```

### `pageFull`

``` swift
case pageFull
```

### `mapResized`

``` swift
case mapResized
```

### `incompatible`

``` swift
case incompatible
```

### `badReaderSlot`

``` swift
case badReaderSlot
```

### `badTransaction`

``` swift
case badTransaction
```

### `badValueSize`

``` swift
case badValueSize
```

### `badDBI`

``` swift
case badDBI
```

### `invalidParameter`

``` swift
case invalidParameter
```

### `accessError`

``` swift
case accessError
```

### `synchronizationError`

``` swift
case synchronizationError
```

### `readOnlyFileSystem`

``` swift
case readOnlyFileSystem
```

### `other`

``` swift
case other(errorCode: Int32)
```
