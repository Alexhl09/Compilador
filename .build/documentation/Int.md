# Extensions on Int

## Properties

### `seconds`

``` swift
public var seconds: TimeChunk 
```

  - A `TimeChunk` with its seconds component set to the value of self

### `minutes`

``` swift
public var minutes: TimeChunk 
```

  - A `TimeChunk` with its minutes component set to the value of self

### `hours`

``` swift
public var hours: TimeChunk 
```

  - A `TimeChunk` with its hours component set to the value of self

### `days`

``` swift
public var days: TimeChunk 
```

  - A `TimeChunk` with its days component set to the value of self

### `weeks`

``` swift
public var weeks: TimeChunk 
```

  - A `TimeChunk` with its weeks component set to the value of self

### `months`

``` swift
public var months: TimeChunk 
```

  - A `TimeChunk` with its months component set to the value of self

### `years`

``` swift
public var years: TimeChunk 
```

  - A `TimeChunk` with its years component set to the value of self

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<Int>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<Int> 
```

Succeeds if the value is a number that can be converted to an `Int`,
otherwise it returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `Int` value
