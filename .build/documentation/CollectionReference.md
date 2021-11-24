# Extensions on CollectionReference

## Methods

### `addDocument(from:encoder:completion:)`

Encodes an instance of `Encodable` and adds a new document to this collection
with the encoded data, assigning it a document ID automatically.

``` swift
public func addDocument<T: Encodable>(from value: T,
                                        encoder: Firestore.Encoder = Firestore.Encoder(),
                                        completion: ((Error?) -> Void)? = nil) throws
    -> DocumentReference 
```

See `Firestore.Encoder` for more details about the encoding process.

#### Parameters

  - value: An instance of `Encodable` to be encoded to a document.
  - encoder: An encoder instance to use to run the encoding.
  - completion: A block to execute once the document has been successfully written to the server. This block will not be called while the client is offline, though local changes will be visible immediately.

#### Returns

A `DocumentReference` pointing to the newly created document.
