# Extensions on WriteBatch

## Methods

### `setData(from:forDocument:encoder:)`

Encodes an instance of `Encodable` and overwrites the encoded data
to the document referred by `doc`. If no document exists,
it is created. If a document already exists, it is overwritten.

``` swift
@discardableResult
  public func setData<T: Encodable>(from value: T,
                                    forDocument doc: DocumentReference,
                                    encoder: Firestore.Encoder = Firestore
                                      .Encoder()) throws -> WriteBatch 
```

See `Firestore.Encoder` for more details about the encoding process.

#### Parameters

  - value: An instance of `Encodable` to be encoded to a document.
  - encoder: The encoder instance to use to run the encoding.
  - doc: The document to create/overwrite the encoded data to.

#### Returns

This instance of `WriteBatch`. Used for chaining method calls.

### `setData(from:forDocument:merge:encoder:)`

Encodes an instance of `Encodable` and overwrites the encoded data
to the document referred by `doc`. If no document exists,
it is created. If a document already exists, it is overwritten.  If you pass
merge:​true, the provided `Encodable` will be merged into any existing document.

``` swift
@discardableResult
  public func setData<T: Encodable>(from value: T,
                                    forDocument doc: DocumentReference,
                                    merge: Bool,
                                    encoder: Firestore.Encoder = Firestore
                                      .Encoder()) throws -> WriteBatch 
```

See `Firestore.Encoder` for more details about the encoding process.

#### Parameters

  - value: An instance of `Encodable` to be encoded to a document.
  - doc: The document to create/overwrite the encoded data to.
  - merge: Whether to merge the provided `Encodable` into any existing document.
  - encoder: The encoder instance to use to run the encoding.

#### Returns

This instance of `WriteBatch`. Used for chaining method calls.

### `setData(from:forDocument:mergeFields:encoder:)`

Encodes an instance of `Encodable` and writes the encoded data to the document referred
by `doc` by only replacing the fields specified under `mergeFields`.
Any field that is not specified in mergeFields is ignored and remains untouched. If the
document doesn’t yet exist, this method creates it and then sets the data.

``` swift
@discardableResult
  public func setData<T: Encodable>(from value: T,
                                    forDocument doc: DocumentReference,
                                    mergeFields: [Any],
                                    encoder: Firestore.Encoder = Firestore
                                      .Encoder()) throws -> WriteBatch 
```

It is an error to include a field in `mergeFields` that does not have a corresponding
field in the `Encodable`.

See `Firestore.Encoder` for more details about the encoding process.

#### Parameters

  - value: An instance of `Encodable` to be encoded to a document.
  - doc: The document to create/overwrite the encoded data to.
  - mergeFields: Array of `String` or `FieldPath` elements specifying which fields to merge. Fields can contain dots to reference nested fields within the document.
  - encoder: The encoder instance to use to run the encoding.

#### Returns

This instance of `WriteBatch`. Used for chaining method calls.
