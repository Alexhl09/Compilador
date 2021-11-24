# TemplateOption

Resolves and validates a `templateURL` value that points to an HTML documentation template.

``` swift
public struct TemplateOption: ParsableArguments 
```

This value can be set via an environment variable.

## Inheritance

`ParsableArguments`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `templateURL`

The path to an HTML template to be used during conversion as provided by
the environment variable `DOCC_HTML_DIR`.

``` swift
public var templateURL: URL?
```

## Methods

### `validate()`

``` swift
public mutating func validate() throws 
```
