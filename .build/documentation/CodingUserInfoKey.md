# Extensions on CodingUserInfoKey

## Properties

### `symbolCounter`

A user info key to store a symbol counter in the decoder.

``` swift
static let symbolCounter = CodingUserInfoKey(rawValue: "symbolCounter")!
```

### `batchIndex`

A user info key to store the current batch index.

``` swift
static let batchIndex = CodingUserInfoKey(rawValue: "symbolScaffolding")!
```

### `batchCount`

A user info key to store the total amount of concurrent batches.

``` swift
static let batchCount = CodingUserInfoKey(rawValue: "symbolBatches")!
```
