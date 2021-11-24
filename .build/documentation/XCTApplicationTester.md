# Extensions on XCTApplicationTester

## Methods

### `loginAdmin(user:)`

``` swift
public func loginAdmin(
    user: Administrator
  ) throws -> Token 
```

### `loginUser(user:)`

``` swift
public func loginUser(
      user: ClientUser
    ) throws -> TokenClient 
```

### `test(_:_:headers:body:loggedInRequest:loggedInUser:file:line:userLoggin:userClient:beforeRequest:afterResponse:)`

``` swift
@discardableResult
  public func test(
    _ method: HTTPMethod,
    _ path: String,
    headers: HTTPHeaders = [:],
    body: ByteBuffer? = nil,
    loggedInRequest: Bool = false,
    loggedInUser: Administrator? = nil,
    file: StaticString = #file,
    line: UInt = #line,
    userLoggin: Bool = false,
    userClient: ClientUser? = nil,
    beforeRequest: (inout XCTHTTPRequest) throws -> () = { _ in },
    afterResponse: (XCTHTTPResponse) throws -> () = { _ in }
  ) throws -> XCTApplicationTester 
```
