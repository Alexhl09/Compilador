# NavigatorIndex.Error

A specific error to describe issues when processing a `NavigatorIndex`.

``` swift
public enum Error: Swift.Error, DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError), `Swift.Error`

## Enumeration Cases

### `missingBundleIndentifier`

Missing bundle identifier.

``` swift
case missingBundleIndentifier
```

### `missingTitle`

A RenderNode has no title and won't be indexed.

``` swift
case missingTitle(description: String)
```

### `navigatorIndexIsNil`

The navigator index has not been initialized.

``` swift
case navigatorIndexIsNil
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```
