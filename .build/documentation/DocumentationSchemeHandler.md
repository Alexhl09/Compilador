# DocumentationSchemeHandler

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public class DocumentationSchemeHandler: NSObject 
```

</dd>
</dl>

## Inheritance

`NSObject`, `WKURLSchemeHandler`

## Nested Type Aliases

### `FallbackResponseHandler`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public typealias FallbackResponseHandler = (URLRequest) -> (URLResponse, Data)?
```

</dd>
</dl>

## Initializers

### `init(withTemplateURL:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Initializes a `DocumentationSchemeHandler` with content coming from a folder.

``` swift
public init(withTemplateURL templateURL:URL) 
```

</dd>
</dl>

### `init()`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public override init() 
```

</dd>
</dl>

## Properties

### `scheme`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public static let scheme = "doc"
```

</dd>
</dl>

### `fullScheme`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public static var fullScheme: String 
```

</dd>
</dl>

### `fallbackHandler`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Fallback handler is called if the response data is nil.

``` swift
public var fallbackHandler: FallbackResponseHandler?
```

</dd>
</dl>

## Methods

### `setData(data:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Adds the data to the FileServer.

``` swift
public func setData(data: [String: Data]) 
```

</dd>
</dl>

### `setTemplate(files:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Set the template files of the renderer.

``` swift
public func setTemplate(files: [String: Data]) 
```

</dd>
</dl>

### `loadTemplate(from:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Loads the template from an existing path on disk.

``` swift
public func loadTemplate(from path: String) 
```

</dd>
</dl>

### `response(to:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Returns a response to a given request.

``` swift
public func response(to request: URLRequest) -> (URLResponse, Data?) 
```

</dd>
</dl>

### `webView(_:start:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public func webView(_ webView: WKWebView, start urlSchemeTask: WKURLSchemeTask) 
```

</dd>
</dl>

### `webView(_:stop:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public func webView(_ webView: WKWebView, stop urlSchemeTask: WKURLSchemeTask) 
```

</dd>
</dl>
