# MarkupLayout

A collection of markup elements that you arrange with a specified layout.

``` swift
public enum MarkupLayout 
```

## Enumeration Cases

### `markup`

A general-purpose markup container.

``` swift
case markup(MarkupContainer)
```

### `contentAndMedia`

A piece of media with an attached description.

``` swift
case contentAndMedia(ContentAndMedia)
```

### `stack`

A view that arranges its children in a row.

``` swift
case stack(Stack)
```
