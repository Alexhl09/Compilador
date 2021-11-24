# PreviewOptions

Resolves and validates the arguments needed to start a documentation preview server.

``` swift
public struct PreviewOptions: ParsableArguments 
```

These options are used by the `Docc/Preview` subcommand.

## Inheritance

`ParsableArguments`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `convertCommand`

Converts a documentation bundle.

``` swift
@OptionGroup()
    public var convertCommand: Docc.Convert
```

`PreviewAction` makes use of `ConvertAction` so we import all the options
that `Docc/Convert` provides.

### `port`

The port number to use for the preview web server.

``` swift
@Option(
        name: .shortAndLong,
        help: ArgumentHelp(
            "Port number to use for the preview web server.",
            valueName: "port-number"))
    public var port: Int = 8000
```

Defaults to `8000`.

### `externalConnectionOptions`

The options used when configuring the preview server for external connections.

``` swift
@OptionGroup()
    public var externalConnectionOptions: PreviewExternalConnectionOptions
```

This group of options is only considered valid if either none of
the `PreviewExternalConnectionOptions/username`, `PreviewExternalConnectionOptions/password`,
`PreviewExternalConnectionOptions/tlsCertificateChainURL`, `PreviewExternalConnectionOptions/tlsCertificateKeyURL`
values were provided **or** if they all were.

If the `PreviewExternalConnectionOptions/externalConnectionsAreEnabled` Boolean value
is true, then **all** four values were provided and validated.

## Methods

### `validate()`

``` swift
public mutating func validate() throws 
```
