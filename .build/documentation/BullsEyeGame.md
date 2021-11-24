# BullsEyeGame

``` swift
public final class BullsEyeGame: ObservableObject 
```

## Inheritance

`ObservableObject`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `objectWillChange`

``` swift
public let objectWillChange 
```

### `round`

``` swift
public var round = 0
```

### `startValue`

``` swift
public var startValue = 50
```

### `targetValue`

``` swift
public var targetValue = 50
```

### `scoreRound`

``` swift
public var scoreRound = 0
```

### `scoreTotal`

``` swift
public var scoreTotal = 0
```

## Methods

### `startNewGame()`

``` swift
public func startNewGame() 
```

### `startNewRound()`

``` swift
public func startNewRound() 
```

### `checkGuess(_:)`

``` swift
public func checkGuess(_ guess: Int) 
```
