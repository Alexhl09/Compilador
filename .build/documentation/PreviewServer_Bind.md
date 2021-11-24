# PreviewServer.Bind

A list of server-bind destinations.

``` swift
public enum Bind: CustomStringConvertible 
```

## Inheritance

`CustomStringConvertible`

## Enumeration Cases

### `localhost`

A port on the local machine.

``` swift
case localhost(port: Int)
```

### `socket`

A file socket on disk.

``` swift
case socket(path: String)
```
