# CosmosSettings

Settings that define the appearance of the star rating views.

``` swift
public struct CosmosSettings 
```

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `` `default` ``

Returns default set of settings for CosmosView

``` swift
public static var `default`: CosmosSettings 
```

### `emptyBorderColor`

Border color of an empty star.

``` swift
public var emptyBorderColor = CosmosDefaultSettings.emptyBorderColor
```

### `emptyBorderWidth`

Width of the border for empty star.

``` swift
public var emptyBorderWidth: Double = CosmosDefaultSettings.emptyBorderWidth
```

### `filledBorderColor`

Border color of a filled star.

``` swift
public var filledBorderColor = CosmosDefaultSettings.filledBorderColor
```

### `filledBorderWidth`

Width of the border for a filled star.

``` swift
public var filledBorderWidth: Double = CosmosDefaultSettings.filledBorderWidth
```

### `emptyColor`

Background color of an empty star.

``` swift
public var emptyColor = CosmosDefaultSettings.emptyColor
```

### `filledColor`

Background color of a filled star.

``` swift
public var filledColor = CosmosDefaultSettings.filledColor
```

### `fillMode`

Defines how the star is filled when the rating value is not a whole integer. It can either show full stars, half stars or stars partially filled according to the rating value.

``` swift
public var fillMode = CosmosDefaultSettings.fillMode
```

### `starMargin`

Distance between stars.

``` swift
public var starMargin: Double = CosmosDefaultSettings.starMargin
```

### `starPoints`

Array of points for drawing the star with size of 100 by 100 pixels. Supply your points if you need to draw a different shape.

``` swift
public var starPoints: [CGPoint] = CosmosDefaultSettings.starPoints
```

### `starSize`

Size of a single star.

``` swift
public var starSize: Double = CosmosDefaultSettings.starSize
```

### `totalStars`

The maximum number of stars to be shown.

``` swift
public var totalStars = CosmosDefaultSettings.totalStars
```

### `filledImage`

Image used for the filled portion of the star. By default the star is drawn from the array of points unless an image is supplied.

``` swift
public var filledImage: UIImage? = nil
```

### `emptyImage`

Image used for the empty portion of the star. By default the star is drawn from the array of points unless an image is supplied.

``` swift
public var emptyImage: UIImage? = nil
```

### `textColor`

Color of the text.

``` swift
public var textColor = CosmosDefaultSettings.textColor
```

### `textFont`

Font for the text.

``` swift
public var textFont = CosmosDefaultSettings.textFont
```

### `textMargin`

Distance between the text and the stars.

``` swift
public var textMargin: Double = CosmosDefaultSettings.textMargin
```

### `minTouchRating`

The lowest rating that user can set by touching the stars.

``` swift
public var minTouchRating: Double = CosmosDefaultSettings.minTouchRating
```

### `updateOnTouch`

When `true` the star fill level is updated when user touches the cosmos view. When `false` the Cosmos view only shows the rating and does not act as the input control.

``` swift
public var updateOnTouch = CosmosDefaultSettings.updateOnTouch
```
