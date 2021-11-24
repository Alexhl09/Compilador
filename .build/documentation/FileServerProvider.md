# FileServerProvider

A protocol used for serving content to a `FileServer`. The data can then come from multiple sources such as:​

``` swift
public protocol FileServerProvider 
```

  - disk

  - remote source

  - in memory storage

This abstraction lets a `FileServer` provide content from multiple types of sources at the same time.

## Requirements

### data(for:​)

Retrieve the data linked to a given path based on the `baseURL`.

``` swift
func data(for path: String) -> Data?
```

#### Parameters

  - path: The path.

#### Returns

The data matching the url, if possible.
