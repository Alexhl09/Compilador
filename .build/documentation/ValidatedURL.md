# ValidatedURL

An RFC 3986 compliant URL.

``` swift
public struct ValidatedURL: Hashable, Equatable 
```

Use this wrapper type to make sure your stored URLs comply
to RFC 3986 that `URLComponents` implements, rather than the less-
strict implementation of `URL`.

For example, due to older RFC compliance, `URL` fails to parse relative topic
references with a fragment like this:

  - `URL(string: "doc:tutorial#test")?.fragment` -\> `nil`

  - `URLComponents(string: "doc:tutorial#test")?.fragment` -\> `"test"`

## See Also

  - [RFC 3986](http://www.ietf.org/rfc/rfc3986.txt)

## Inheritance

`Equatable`, `Hashable`

## Properties

### `components`

The raw components that make up the validated URL.

``` swift
public private(set) var components: URLComponents
```
