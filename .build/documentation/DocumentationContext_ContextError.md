# DocumentationContext.ContextError

An error that's encountered while interacting with a `SwiftDocC/DocumentationContext`.

``` swift
public enum ContextError: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `notFound`

The node couldn't be found in the documentation context.

``` swift
case notFound(URL)
```

### `utf8StringDecodingFailed`

The file wasn't UTF-8 encoded.

``` swift
case utf8StringDecodingFailed(url: URL)
```

### `unexpectedEmptyPlatformName`

We allow a symbol declaration with no OS (for REST & Plist symbols)
but if such a declaration is found the symbol can have only one declaration.

``` swift
case unexpectedEmptyPlatformName(String)
```

### `registrationDisabled`

The bundle registration operation is cancelled externally.

``` swift
case registrationDisabled
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```
