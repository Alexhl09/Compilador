# PlaceholderData

Contains the placeholder data:​ texts, image, etc

``` swift
public struct PlaceholderData 
```

## Initializers

### `init()`

Create and return PlaceholderData object

``` swift
public init() 
```

## Properties

### `image`

The placeholder image, if the image is nil, the placeholder image view will be hidden

``` swift
public var image: UIImage?
```

### `title`

the placeholder title

``` swift
public var title: String?
```

### `subtitle`

The placeholder subtitle

``` swift
public var subtitle: String?
```

### `action`

The placehlder action title, if the action title is nil, the placeholder action button will be hidden

``` swift
public var action: String?
```

### `showsLoading`

Should shows the activity indicator of the placeholder or not

``` swift
public var showsLoading = false
```

### `noResults`

The default data (texts, image, ...) of the default no results placeholder

``` swift
public static var noResults: PlaceholderData 
```

### `loading`

The default data (texts, image, ...) of the default loading placeholder

``` swift
public static var loading: PlaceholderData 
```

### `error`

The default data (texts, image, ...) of the default error placeholder

``` swift
public static var error: PlaceholderData 
```

### `noConnection`

The default data (texts, image, ...) of the default no connecton placeholder

``` swift
public static var noConnection: PlaceholderData 
```
