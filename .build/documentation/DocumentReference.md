# Extensions on DocumentReference

## Methods

### `setData(from:encoder:completion:)`

Encodes an instance of `Encodable` and overwrites the encoded data
to the document referred by this `DocumentReference`. If no document exists,
it is created. If a document already exists, it is overwritten.

``` swift
public func setData<T: Encodable>(from value: T,
                                    encoder: Firestore.Encoder = Firestore.Encoder(),
                                    completion: ((Error?) -> Void)? = nil) throws 
```

See `Firestore.Encoder` for more details about the encoding process.

#### Parameters

  - value: An instance of `Encodable` to be encoded to a document.
  - encoder: An encoder instance to use to run the encoding.
  - completion: A block to execute once the document has been successfully written to the server. This block will not be called while the client is offline, though local changes will be visible immediately.

### `setData(from:merge:encoder:completion:)`

Encodes an instance of `Encodable` and overwrites the encoded data
to the document referred by this `DocumentReference`. If no document exists,
it is created. If a document already exists, it is overwritten.  If you pass
merge:​true, the provided `Encodable` will be merged into any existing document.

``` swift
public func setData<T: Encodable>(from value: T,
                                    merge: Bool,
                                    encoder: Firestore.Encoder = Firestore.Encoder(),
                                    completion: ((Error?) -> Void)? = nil) throws 
```

See `Firestore.Encoder` for more details about the encoding process.

#### Parameters

  - value: An instance of `Encodable` to be encoded to a document.
  - merge: Whether to merge the provided `Encodable` into any existing document.
  - encoder: An encoder instance to use to run the encoding.
  - completion: A block to execute once the document has been successfully written to the server. This block will not be called while the client is offline, though local changes will be visible immediately.

### `setData(from:mergeFields:encoder:completion:)`

Encodes an instance of `Encodable` and writes the encoded data to the document referred
by this `DocumentReference` by only replacing the fields specified under `mergeFields`.
Any field that is not specified in mergeFields is ignored and remains untouched. If the
document doesn’t yet exist, this method creates it and then sets the data.

``` swift
public func setData<T: Encodable>(from value: T,
                                    mergeFields: [Any],
                                    encoder: Firestore.Encoder = Firestore.Encoder(),
                                    completion: ((Error?) -> Void)? = nil) throws 
```

It is an error to include a field in `mergeFields` that does not have a corresponding
field in the `Encodable`.

See `Firestore.Encoder` for more details about the encoding process.

#### Parameters

  - value: An instance of `Encodable` to be encoded to a document.
  - mergeFields: Array of `String` or `FieldPath` elements specifying which fields to merge. Fields can contain dots to reference nested fields within the document.
  - encoder: An encoder instance to use to run the encoding.
  - completion: A block to execute once the document has been successfully written to the server. This block will not be called while the client is offline, though local changes will be visible immediately.
