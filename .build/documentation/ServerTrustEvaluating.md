# ServerTrustEvaluating

A protocol describing the API used to evaluate server trusts.

``` swift
public protocol ServerTrustEvaluating 
```

## Requirements

### evaluate(\_:​forHost:​)

<dl>
<dt><code>!((os(Linux)))</code></dt>
<dd>

Evaluates the given `SecTrust` value for the given `host`.

``` swift
func evaluate(_ trust: SecTrust, forHost host: String) throws
```

#### Parameters

  - trust: The `SecTrust` value to evaluate.
  - host: The host for which to evaluate the `SecTrust` value.

#### Returns

A `Bool` indicating whether the evaluator considers the `SecTrust` value valid for `host`.

</dd>
</dl>

### evaluate(\_:​forHost:​)

<dl>
<dt><code>!((os(Linux)))</code></dt>
<dd>

Evaluates the given `SecTrust` value for the given `host`.

``` swift
func evaluate(_ trust: SecTrust, forHost host: String) throws
```

#### Parameters

  - trust: The `SecTrust` value to evaluate.
  - host: The host for which to evaluate the `SecTrust` value.

#### Returns

A `Bool` indicating whether the evaluator considers the `SecTrust` value valid for `host`.

</dd>
</dl>

### evaluate(\_:​forHost:​)

<dl>
<dt><code>!((os(Linux)))</code></dt>
<dd>

Evaluates the given `SecTrust` value for the given `host`.

``` swift
func evaluate(_ trust: SecTrust, forHost host: String) throws
```

#### Parameters

  - trust: The `SecTrust` value to evaluate.
  - host: The host for which to evaluate the `SecTrust` value.

#### Returns

A `Bool` indicating whether the evaluator considers the `SecTrust` value valid for `host`.

</dd>
</dl>
