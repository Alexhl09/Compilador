# EventLogger

A type that represents an event logging function.

``` swift
public typealias EventLogger = (
	_ identifier: String,
	_ event: String,
	_ fileName: String,
	_ functionName: String,
	_ lineNumber: Int
) -> Void
```
