# ConformanceSection

A section that contains a list of generic constraints for a symbol.

``` swift
public struct ConformanceSection: Codable, Equatable 
```

The section contains a list of generic constraints that describe the conditions
when a symbol is available or conforms to a protocol. For example:
"Available when `Element` conforms to `Equatable` and `S` conforms to `StringLiteral`."

## Inheritance

`Codable`, `Equatable`
