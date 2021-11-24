# DocumentationWorkspace.WorkspaceError

An error when requesting information from a workspace.

``` swift
public enum WorkspaceError: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `unknownBundle`

A bundle with the provided ID wasn't found in the workspace.

``` swift
case unknownBundle(id: String)
```

### `unknownProvider`

A data provider with the provided ID wasn't found in the workspace.

``` swift
case unknownProvider(id: String)
```

## Properties

### `errorDescription`

A plain-text description of the error.

``` swift
public var errorDescription: String 
```
