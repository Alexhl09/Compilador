# Extensions on FieldValue

## Methods

### `encode(to:)`

Encoding a FieldValue will throw by default unless the encoder implementation
explicitly handles it, which is what Firestore.Encoder does.

``` swift
public func encode(to encoder: Encoder) throws 
```
