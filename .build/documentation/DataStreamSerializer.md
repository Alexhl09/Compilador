# DataStreamSerializer

A type which can serialize incoming `Data`.

``` swift
public protocol DataStreamSerializer 
```

## Requirements

### SerializedObject

Type produced from the serialized `Data`.

``` swift
associatedtype SerializedObject
```

### serialize(\_:​)

Serializes incoming `Data` into a `SerializedObject` value.

``` swift
func serialize(_ data: Data) throws -> SerializedObject
```

#### Parameters

  - data: `Data` to be serialized.

#### Throws

Any error produced during serialization.

### SerializedObject

Type produced from the serialized `Data`.

``` swift
associatedtype SerializedObject
```

### serialize(\_:​)

Serializes incoming `Data` into a `SerializedObject` value.

``` swift
func serialize(_ data: Data) throws -> SerializedObject
```

#### Parameters

  - data: `Data` to be serialized.

#### Throws

Any error produced during serialization.

### SerializedObject

Type produced from the serialized `Data`.

``` swift
associatedtype SerializedObject
```

### serialize(\_:​)

Serializes incoming `Data` into a `SerializedObject` value.

``` swift
func serialize(_ data: Data) throws -> SerializedObject
```

#### Parameters

  - data: `Data` to be serialized.

#### Throws

Any error produced during serialization.
