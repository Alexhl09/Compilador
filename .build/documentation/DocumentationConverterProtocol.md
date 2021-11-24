# DocumentationConverterProtocol

A converter from a documentation bundle to an output that can be consumed by a renderer.

``` swift
public protocol DocumentationConverterProtocol 
```

This protocol is primarily used for injecting mock documentation converters during testing.

## See Also

  - `DocumentationConverter`

## Requirements

### convert(outputConsumer:​)

Converts documentation, outputting products using the given output consumer.

``` swift
mutating func convert<OutputConsumer: ConvertOutputConsumer>(
        outputConsumer: OutputConsumer
    ) throws -> (analysisProblems: [Problem], conversionProblems: [Problem])
```

#### Parameters

  - outputConsumer: The output consumer for content produced during conversion.

#### Throws

Throws an error if the conversion process was not able to start at all, for example if the bundle could not be read. Partial failures, such as failing to consume a single render node, are returned in the `conversionProblems` component of the returned tuple.

#### Returns

The problems emitted during analysis of the documentation bundle and during conversion.
