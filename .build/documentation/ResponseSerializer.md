# ResponseSerializer

A serializer that can handle both data and download responses.

``` swift
public protocol ResponseSerializer: DataResponseSerializerProtocol & DownloadResponseSerializerProtocol 
```

## Inheritance

[`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol)

## Default Implementations

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultDataPreprocessor`

Default `DataPreprocessor`. `PassthroughPreprocessor` by default.

``` swift
public static var defaultDataPreprocessor: DataPreprocessor 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyRequestMethods`

Default `HTTPMethod`s for which empty response bodies are considered appropriate. `[.head]` by default.

``` swift
public static var defaultEmptyRequestMethods: Set<HTTPMethod> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `defaultEmptyResponseCodes`

HTTP response codes for which empty response bodies are considered appropriate. `[204, 205]` by default.

``` swift
public static var defaultEmptyResponseCodes: Set<Int> 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `dataPreprocessor`

``` swift
public var dataPreprocessor: DataPreprocessor 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyRequestMethods`

``` swift
public var emptyRequestMethods: Set<HTTPMethod> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `emptyResponseCodes`

``` swift
public var emptyResponseCodes: Set<Int> 
```

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `requestAllowsEmptyResponseData(_:)`

Determines whether the `request` allows empty response bodies, if `request` exists.

``` swift
public func requestAllowsEmptyResponseData(_ request: URLRequest?) -> Bool? 
```

#### Parameters

  - request: `URLRequest` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `request` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `responseAllowsEmptyResponseData(_:)`

Determines whether the `response` allows empty response bodies, if `response` exists\`.

``` swift
public func responseAllowsEmptyResponseData(_ response: HTTPURLResponse?) -> Bool? 
```

#### Parameters

  - response: `HTTPURLResponse` to evaluate.

#### Returns

`Bool` representing the outcome of the evaluation, or `nil` if `response` was `nil`.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

### `emptyResponseAllowed(forRequest:response:)`

Determines whether `request` and `response` allow empty response bodies.

``` swift
public func emptyResponseAllowed(forRequest request: URLRequest?, response: HTTPURLResponse?) -> Bool 
```

#### Parameters

  - request: `URLRequest` to evaluate.
  - response: `HTTPURLResponse` to evaluate.

#### Returns

`true` if `request` or `response` allow empty bodies, `false` otherwise.

## Requirements

### dataPreprocessor

`DataPreprocessor` used to prepare incoming `Data` for serialization.

``` swift
var dataPreprocessor: DataPreprocessor 
```

### emptyRequestMethods

`HTTPMethod`s for which empty response bodies are considered appropriate.

``` swift
var emptyRequestMethods: Set<HTTPMethod> 
```

### emptyResponseCodes

HTTP response codes for which empty response bodies are considered appropriate.

``` swift
var emptyResponseCodes: Set<Int> 
```

### dataPreprocessor

`DataPreprocessor` used to prepare incoming `Data` for serialization.

``` swift
var dataPreprocessor: DataPreprocessor 
```

### emptyRequestMethods

`HTTPMethod`s for which empty response bodies are considered appropriate.

``` swift
var emptyRequestMethods: Set<HTTPMethod> 
```

### emptyResponseCodes

HTTP response codes for which empty response bodies are considered appropriate.

``` swift
var emptyResponseCodes: Set<Int> 
```

### dataPreprocessor

`DataPreprocessor` used to prepare incoming `Data` for serialization.

``` swift
var dataPreprocessor: DataPreprocessor 
```

### emptyRequestMethods

`HTTPMethod`s for which empty response bodies are considered appropriate.

``` swift
var emptyRequestMethods: Set<HTTPMethod> 
```

### emptyResponseCodes

HTTP response codes for which empty response bodies are considered appropriate.

``` swift
var emptyResponseCodes: Set<Int> 
```
