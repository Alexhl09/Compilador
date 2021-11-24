# \`try\`(\_:file:line:\`try\`:)

<dl>
<dt><code>!os(Linux)</code></dt>
<dd>

Constructs a `Result` with the result of calling `try` with an error pointer.

``` swift
public func `try`<T>(_ function: String = #function, file: String = #file, line: Int = #line, `try`: (NSErrorPointer) -> T?) -> Result<T, NSError> 
```

This is convenient for wrapping Cocoa API which returns an object or `nil` + an error, by reference. e.g.:

``` 
Result.try { NSData(contentsOfURL: URL, options: .dataReadingMapped, error: $0) }
```

</dd>
</dl>

# \`try\`(\_:file:line:\`try\`:)

<dl>
<dt><code>!os(Linux)</code></dt>
<dd>

Constructs a `Result` with the result of calling `try` with an error pointer.

``` swift
public func `try`(_ function: String = #function, file: String = #file, line: Int = #line, `try`: (NSErrorPointer) -> Bool) -> Result<(), NSError> 
```

This is convenient for wrapping Cocoa API which returns a `Bool` + an error, by reference. e.g.:

``` 
Result.try { NSFileManager.defaultManager().removeItemAtURL(URL, error: $0) }
```

</dd>
</dl>
