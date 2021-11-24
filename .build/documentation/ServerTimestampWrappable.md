# ServerTimestampWrappable

<dl>
<dt><code>compiler(>=5.1)</code></dt>
<dd>

A type that can initialize itself from a Firestore Timestamp, which makes
it suitable for use with the `@ServerTimestamp` property wrapper.

``` swift
public protocol ServerTimestampWrappable 
```

Firestore includes extensions that make `Timestamp` and `Date` conform to
`ServerTimestampWrappable`.

</dd>
</dl>

## Requirements

### wrap(\_:​)

<dl>
<dt><code>compiler(>=5.1)</code></dt>
<dd>

Creates a new instance by converting from the given `Timestamp`.

``` swift
static func wrap(_ timestamp: Timestamp) throws -> Self
```

#### Parameters

  - timestamp: The timestamp from which to convert.

</dd>
</dl>

### unwrap(\_:​)

<dl>
<dt><code>compiler(>=5.1)</code></dt>
<dd>

Converts this value into a Firestore `Timestamp`.

``` swift
static func unwrap(_ value: Self) throws -> Timestamp
```

#### Returns

A `Timestamp` representation of this value.

</dd>
</dl>
