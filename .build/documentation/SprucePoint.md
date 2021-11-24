# SprucePoint

Internal struct to access CGPoint extensions. Use this to call methods such as `.euclideanDistance`

``` swift
public struct SprucePoint 
```

## Methods

### `euclideanDistance(to:)`

Calculate the euclidean distance between two points

``` swift
func euclideanDistance(to point: CGPoint) -> Double 
```

``` 
distance = sqrt((x1 - x2)^2 + (y1 - y2)^2)
```

#### Parameters

  - point: the end point of the line for calculating the distance

#### Returns

a double value of the euclidean distance between the two points

### `horizontalDistance(to:)`

Calculate the horizontal euclidean distance between two points. Esentially the same thing as euclideanDistance except it ignores the `y` components of the two points.

``` swift
func horizontalDistance(to point: CGPoint) -> Double 
```

#### Parameters

  - point: the end point of the line for calculating the distance

#### Returns

a double value of the distance horizontal euclidean between the two points

### `verticalDistance(to:)`

Calculate the vertical euclidean distance between two points. Esentially the same thing as euclideanDistance except it ignores the `x` components of the two points.

``` swift
func verticalDistance(to point: CGPoint) -> Double 
```

#### Parameters

  - point: the end point of the line for calculating the distance

#### Returns

a double value of the distance vertical euclidean between the two points
