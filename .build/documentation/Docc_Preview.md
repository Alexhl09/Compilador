# Docc.Preview

Runs the `Convert` command and then sets up a web server that can be used to preview that documentation content.

``` swift
public struct Preview: ParsableCommand 
```

## Inheritance

`ParsableCommand`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `configuration`

``` swift
public static var configuration 
```

### `previewOptions`

The options used for configuring the preview server.

``` swift
@OptionGroup
        public var previewOptions: PreviewOptions
```

## Methods

### `validate()`

``` swift
public mutating func validate() throws 
```

### `run()`

``` swift
public mutating func run() throws 
```
