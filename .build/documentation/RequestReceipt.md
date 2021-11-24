# RequestReceipt

The `RequestReceipt` is an object vended by the `ImageDownloader` when starting a download request. It can be used
to cancel active requests running on the `ImageDownloader` session. As a general rule, image download requests
should be cancelled using the `RequestReceipt` instead of calling `cancel` directly on the `request` itself. The
`ImageDownloader` is optimized to handle duplicate request scenarios as well as pending versus active downloads.

``` swift
open class RequestReceipt 
```

## Properties

### `request`

The download request created by the `ImageDownloader`.

``` swift
public let request: DataRequest
```

### `receiptID`

The unique identifier for the image filters and completion handlers when duplicate requests are made.

``` swift
public let receiptID: String
```
