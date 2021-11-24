# DescribedError

An error that offers a plain-text error message.

``` swift
public protocol DescribedError: Foundation.LocalizedError 
```

## Inheritance

`Foundation.LocalizedError`

## Default Implementations

### `errorDescription`

``` swift
var errorDescription: String? 
```

## Requirements

### errorDescription

A plain-text description of the error.

``` swift
var errorDescription: String 
```
