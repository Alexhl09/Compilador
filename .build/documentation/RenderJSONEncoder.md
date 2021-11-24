# RenderJSONEncoder

A namespace for encoders for render node JSON.

``` swift
public enum RenderJSONEncoder 
```

## Methods

### `makeEncoder(prettyPrint:emitVariantOverrides:)`

Creates a new JSON encoder for render node values.

``` swift
public static func makeEncoder(
        prettyPrint: Bool = shouldPrettyPrintOutputJSON,
        emitVariantOverrides: Bool = true
    ) -> JSONEncoder 
```

Returns an encoder that's configured to encode `RenderNode` values.

> Important: Don't reuse encoders returned by this function to encode multiple render nodes, as the encoder accumulates state during the encoding
> process which should not be shared in other encoding units. Instead, call this API to create a new encoder for each render node you want to encode.

#### Parameters

  - prettyPrint: If `true`, the encoder formats its output to make it easy to read; if `false`, the output is compact.
  - emitVariantOverrides: Whether the encoder should emit the top-level `RenderNode/variantOverrides` property that holds language- specific documentation data.

#### Returns

The new JSON encoder.
