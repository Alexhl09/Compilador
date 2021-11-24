# DecodableStreamSerializer

`DataStreamSerializer` which uses the provided `DataPreprocessor` and `DataDecoder` to serialize the incoming `Data`.

``` swift
public struct DecodableStreamSerializer<T: Decodable>: DataStreamSerializer 
```

## Inheritance

[`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer), [`DataStreamSerializer`](/DataStreamSerializer)

## Initializers

### `init(decoder:dataPreprocessor:)`

Creates an instance with the provided `DataDecoder` and `DataPreprocessor`.

``` swift
public init(decoder: DataDecoder = JSONDecoder(), dataPreprocessor: DataPreprocessor = PassthroughPreprocessor()) 
```

#### Parameters

  - decoder: `        DataDecoder` used to decode incoming `Data`.
  - dataPreprocessor: `DataPreprocessor` used to process incoming `Data` before it's passed through the `decoder`.

### `init(decoder:dataPreprocessor:)`

Creates an instance with the provided `DataDecoder` and `DataPreprocessor`.

``` swift
public init(decoder: DataDecoder = JSONDecoder(), dataPreprocessor: DataPreprocessor = PassthroughPreprocessor()) 
```

#### Parameters

  - decoder: `        DataDecoder` used to decode incoming `Data`.
  - dataPreprocessor: `DataPreprocessor` used to process incoming `Data` before it's passed through the `decoder`.

### `init(decoder:dataPreprocessor:)`

Creates an instance with the provided `DataDecoder` and `DataPreprocessor`.

``` swift
public init(decoder: DataDecoder = JSONDecoder(), dataPreprocessor: DataPreprocessor = PassthroughPreprocessor()) 
```

#### Parameters

  - decoder: `        DataDecoder` used to decode incoming `Data`.
  - dataPreprocessor: `DataPreprocessor` used to process incoming `Data` before it's passed through the `decoder`.

## Properties

### `decoder`

`DataDecoder` used to decode incoming `Data`.

``` swift
public let decoder: DataDecoder
```

### `dataPreprocessor`

`DataPreprocessor` incoming `Data` is passed through before being passed to the `DataDecoder`.

``` swift
public let dataPreprocessor: DataPreprocessor
```

### `decoder`

`DataDecoder` used to decode incoming `Data`.

``` swift
public let decoder: DataDecoder
```

### `dataPreprocessor`

`DataPreprocessor` incoming `Data` is passed through before being passed to the `DataDecoder`.

``` swift
public let dataPreprocessor: DataPreprocessor
```

### `decoder`

`DataDecoder` used to decode incoming `Data`.

``` swift
public let decoder: DataDecoder
```

### `dataPreprocessor`

`DataPreprocessor` incoming `Data` is passed through before being passed to the `DataDecoder`.

``` swift
public let dataPreprocessor: DataPreprocessor
```

## Methods

### `serialize(_:)`

``` swift
public func serialize(_ data: Data) throws -> T 
```

### `serialize(_:)`

``` swift
public func serialize(_ data: Data) throws -> T 
```

### `serialize(_:)`

``` swift
public func serialize(_ data: Data) throws -> T 
```
