# ImageResponseSerializer

``` swift
public final class ImageResponseSerializer: ResponseSerializer 
```

## Inheritance

[`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer)

## Initializers

### `init(imageScale:inflateResponseImage:emptyResponseCodes:emptyRequestMethods:)`

``` swift
public init(imageScale: CGFloat = ImageResponseSerializer.deviceScreenScale,
                inflateResponseImage: Bool = true,
                emptyResponseCodes: Set<Int> = ImageResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = ImageResponseSerializer.defaultEmptyRequestMethods) 
```

## Properties

### `deviceScreenScale`

``` swift
public static var deviceScreenScale: CGFloat 
```

### `imageScale`

``` swift
public let imageScale: CGFloat
```

### `inflateResponseImage`

``` swift
public let inflateResponseImage: Bool
```

### `emptyResponseCodes`

``` swift
public let emptyResponseCodes: Set<Int>
```

### `emptyRequestMethods`

``` swift
public let emptyRequestMethods: Set<HTTPMethod>
```

## Methods

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> Image 
```

### `serializeImage(from:)`

``` swift
public func serializeImage(from data: Data) throws -> Image 
```

### `addAcceptableImageContentTypes(_:)`

Adds the content types specified to the list of acceptable images content types for validation.

``` swift
public class func addAcceptableImageContentTypes(_ contentTypes: Set<String>) 
```

#### Parameters

  - contentTypes: The additional content types.

### `validateContentType(for:response:)`

``` swift
public func validateContentType(for request: URLRequest?, response: HTTPURLResponse?) throws 
```
