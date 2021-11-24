# RenderNodeVariantOverridesApplier.Error

An error that occured while applying overrides in a render node.

``` swift
public enum Error: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `corruptedRenderNode`

An error indicating that the error node is corrupted or malformed.

``` swift
case corruptedRenderNode
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```
