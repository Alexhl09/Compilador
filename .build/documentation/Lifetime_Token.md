# Lifetime.Token

A token object which completes its signal when it deinitializes.

``` swift
public final class Token 
```

It is generally used in conjuncion with `Lifetime` as a private
deinitialization trigger.

``` 
class MyController {
	private let token = Lifetime.Token()
	public var lifetime: Lifetime {
		return Lifetime(token)
	}
}
```

## Initializers

### `init()`

``` swift
public init() 
```
