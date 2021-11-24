# ImageDownloader.DownloadPrioritization

Defines the order prioritization of incoming download requests being inserted into the queue.

``` swift
public enum DownloadPrioritization 
```

  - fifo: All incoming downloads are added to the back of the queue.

  - lifo: All incoming downloads are added to the front of the queue.

## Enumeration Cases

### `fifo`

``` swift
case fifo, lifo
```

### `lifo`

``` swift
case fifo, lifo
```
