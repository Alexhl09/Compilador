# Deck

A model for shuffling and dealing a deck of playing cards.

``` swift
public struct Deck: Equatable 
```

The playing card deck consists of 52 individual cards in four suites: spades, hearts, diamonds, and clubs. There are 13 ranks from two to ten, then jack, queen, king, and ace.

## Inheritance

`Equatable`, `ExpressibleByArrayLiteral`

## Initializers

### `init(_:)`

Creates a deck of playing cards.

``` swift
public init(_ cards: [PlayingCard]) 
```

### `init(arrayLiteral:)`

``` swift
public init(arrayLiteral elements: PlayingCard...) 
```

## Methods

### `standard52CardDeck()`

Returns a deck of playing cards.

``` swift
public static func standard52CardDeck() -> Deck 
```

### `shuffle()`

Randomly shuffles a deck of playing cards.

``` swift
public mutating func shuffle() 
```

### `deal()`

Deals a card from the deck.

``` swift
public mutating func deal() -> PlayingCard? 
```

The function returns the last card in the deck.
