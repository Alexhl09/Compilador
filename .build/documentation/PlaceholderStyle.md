# PlaceholderStyle

PlaceholderStyle is used to customise the placeholder cell style

``` swift
public struct PlaceholderStyle 
```

## Initializers

### `init()`

Create and return a PlaceholderStyle object

``` swift
public init() 
```

## Properties

### `titleColor`

The color of the placeholder title, the default value is darkText

``` swift
public var titleColor: UIColor = .darkText
```

### `titleFont`

The font of the placeholder title, the default value is boldSystemFont 19

``` swift
public var titleFont 
```

### `subtitleColor`

The color of the placeholder subtitle, the default value is gray

``` swift
public var subtitleColor: UIColor = .gray
```

### `subtitleFont`

The font of the placeholder subtitle, the default value is  systemFont 14

``` swift
public var subtitleFont 
```

### `actionTitleColor`

The color of the action button title of the placeholder, the default value is white

``` swift
public var actionTitleColor: UIColor = .white
```

### `actionTitleFont`

The font of the placeholder subtitle, the default value is  boldSystemFont 17

``` swift
public var actionTitleFont 
```

### `actionBackgroundColor`

The color of the action button background of the placeholder, the default value is the tint color

``` swift
public var actionBackgroundColor: UIColor?
```

### `activityIndicatorColor`

The color of activity indicator view of the placeholder, the default value is light gray

``` swift
public var activityIndicatorColor = UIColor.lightGray
```

### `backgroundColor`

The background color of the placeholder, the default value is clear

``` swift
public var backgroundColor = UIColor.clear
```

### `isAnimated`

Should display the placeholder with animation or not

``` swift
public var isAnimated = true
```

### `shouldShowTableViewHeader`

Should display the tableViewHeader or not, the default value is false

``` swift
public var shouldShowTableViewHeader = false
```

### `shouldShowTableViewFooter`

Should display the tableViewFooter or not, the default value is  false

``` swift
public var shouldShowTableViewFooter = false
```
