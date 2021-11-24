# autoreleasepool(\_:)

<dl>
<dt><code>os(Linux) || os(Android)</code></dt>
<dd>

A shim for Linux that runs the given block of code.

``` swift
@discardableResult
public func autoreleasepool<Result>(_ block: () throws -> Result) rethrows -> Result 
```

The existence of this shim allows you the use of auto-release pools to optimize memory footprint on Darwin platforms while maintaining
compatibility with Linux where this API is not implemented.

</dd>
</dl>
