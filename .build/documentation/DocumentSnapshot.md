# Extensions on DocumentSnapshot

## Methods

### `data(as:decoder:)`

Retrieves all fields in a document and converts them to an instance of
caller-specified type. Returns `nil` if the document does not exist.

``` swift
public func data<T: Decodable>(as type: T.Type,
                                 decoder: Firestore.Decoder? = nil) throws -> T? 
```

See `Firestore.Decoder` for more details about the decoding process.

  - Parameters
    
      - type: The type to convert the document fields to.
      - decoder: The decoder to use to convert the document. `nil` to use
        default decoder.
