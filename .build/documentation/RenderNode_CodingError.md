# RenderNode.CodingError

An error that describes failures that may occur while encoding or decoding a render node.

``` swift
enum CodingError: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `decoding`

JSON data could not be decoded as a render node value.

``` swift
case decoding(description: String, context: DecodingError.Context)
```

### `encoding`

A render node value could not be encoded as JSON.

``` swift
case encoding(description: String, context: EncodingError.Context)
```

## Properties

### `errorDescription`

A user-facing description of the coding error.

``` swift
public var errorDescription: String 
```
