# PropertyProtocol

Represents a property that allows observation of its changes.

``` swift
public protocol PropertyProtocol: class, BindingSourceProtocol 
```

Only classes can conform to this protocol, because having a signal
for changes over time implies the origin must have a unique identity.

## Inheritance

[`BindingSourceProtocol`](/BindingSourceProtocol), `class`

## Default Implementations

### `combineLatestWith(_:)`

``` swift
@available(*, unavailable, renamed:"combineLatest(with:)")
	public func combineLatestWith<P: PropertyProtocol>(_ otherProperty: P) -> Property<(Value, P.Value)> 
```

### `zipWith(_:)`

``` swift
@available(*, unavailable, renamed:"zip(with:)")
	public func zipWith<P: PropertyProtocol>(_ otherProperty: P) -> Property<(Value, P.Value)> 
```

### `observe(_:during:)`

``` swift
@discardableResult
	public func observe(_ observer: Observer<Value, NoError>, during lifetime: Lifetime) -> Disposable? 
```

### `map(_:)`

Maps the current value and all subsequent values to a new property.

``` swift
public func map<U>(_ transform: @escaping (Value) -> U) -> Property<U> 
```

#### Parameters

  - transform: A closure that will map the current `value` of this `Property` to a new value.

#### Returns

A new instance of `AnyProperty` who's holds a mapped value from `self`.

### `combineLatest(with:)`

Combines the current value and the subsequent values of two `Property`s in
the manner described by `Signal.combineLatestWith:​`.

``` swift
public func combineLatest<P: PropertyProtocol>(with other: P) -> Property<(Value, P.Value)> 
```

#### Parameters

  - other: A property to combine `self`'s value with.

#### Returns

A property that holds a tuple containing values of `self` and the given property.

### `zip(with:)`

Zips the current value and the subsequent values of two `Property`s in
the manner described by `Signal.zipWith`.

``` swift
public func zip<P: PropertyProtocol>(with other: P) -> Property<(Value, P.Value)> 
```

#### Parameters

  - other: A property to zip `self`'s value with.

#### Returns

A property that holds a tuple containing values of `self` and the given property.

### `combinePrevious(_:)`

Forward events from `self` with history:​ values of the returned property
are a tuple whose first member is the previous value and whose second
member is the current value. `initial` is supplied as the first member
when `self` sends its first value.

``` swift
public func combinePrevious(_ initial: Value) -> Property<(Value, Value)> 
```

#### Parameters

  - initial: A value that will be combined with the first value sent by `self`.

#### Returns

A property that holds tuples that contain previous and current values of `self`.

### `skipRepeats(_:)`

Forward only those values from `self` which do not pass `isRepeat` with
respect to the previous value.

``` swift
public func skipRepeats(_ isRepeat: @escaping (Value, Value) -> Bool) -> Property<Value> 
```

#### Parameters

  - isRepeat: A predicate to determine if the two given values are equal.

#### Returns

A property that does not emit events for two equal values sequentially.

### `skipRepeats()`

Forward only those values from `self` which do not pass `isRepeat` with
respect to the previous value.

``` swift
public func skipRepeats() -> Property<Value> 
```

#### Returns

A property that does not emit events for two equal values sequentially.

### `flatten(_:)`

Flattens the inner property held by `self` (into a single property of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Property<Value.Value> 
```

#### Parameters

  - strategy: The preferred flatten strategy.

#### Returns

A property that sends the values of its inner properties.

### `flatMap(_:transform:)`

Maps each property from `self` to a new property, then flattens the
resulting properties (into a single property), according to the
semantics of the given strategy.

``` swift
public func flatMap<P: PropertyProtocol>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> P) -> Property<P.Value> 
```

#### Parameters

  - strategy: The preferred flatten strategy.
  - transform: The transform to be applied on `self` before flattening.

#### Returns

A property that sends the values of its inner properties.

### `uniqueValues(_:)`

Forward only those values from `self` that have unique identities across
the set of all values that have been held.

``` swift
public func uniqueValues<Identity: Hashable>(_ transform: @escaping (Value) -> Identity) -> Property<Value> 
```

> 

#### Parameters

  - transform: A closure that accepts a value and returns identity value.

#### Returns

A property that sends unique values during its lifetime.

### `uniqueValues()`

Forwards only those values from `self` that are unique across the set of
all values that have been seen.

``` swift
public func uniqueValues() -> Property<Value> 
```

> 

#### Returns

A property that sends unique values during its lifetime.

### `combineLatest(_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol>(_ a: A, _ b: B) -> Property<(A.Value, B.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol>(_ a: A, _ b: B, _ c: C) -> Property<(A.Value, B.Value, C.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D) -> Property<(A.Value, B.Value, C.Value, D.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:_:_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:_:_:_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol, H: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:_:_:_:_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol, H: PropertyProtocol, I: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value, I.Value)> where Value == A.Value 
```

### `combineLatest(_:_:_:_:_:_:_:_:_:_:)`

Combines the values of all the given properties, in the manner described
by `combineLatest(with:​)`.

``` swift
public static func combineLatest<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol, H: PropertyProtocol, I: PropertyProtocol, J: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value, I.Value, J.Value)> where Value == A.Value 
```

### `combineLatest(_:)`

Combines the values of all the given producers, in the manner described by
`combineLatest(with:​)`. Returns nil if the sequence is empty.

``` swift
public static func combineLatest<S: Sequence>(_ properties: S) -> Property<[S.Iterator.Element.Value]>? where S.Iterator.Element: PropertyProtocol 
```

### `zip(_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol>(_ a: A, _ b: B) -> Property<(A.Value, B.Value)> where Value == A.Value 
```

### `zip(_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol>(_ a: A, _ b: B, _ c: C) -> Property<(A.Value, B.Value, C.Value)> where Value == A.Value 
```

### `zip(_:_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D) -> Property<(A.Value, B.Value, C.Value, D.Value)> where Value == A.Value 
```

### `zip(_:_:_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value)> where Value == A.Value 
```

### `zip(_:_:_:_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value)> where Value == A.Value 
```

### `zip(_:_:_:_:_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value)> where Value == A.Value 
```

### `zip(_:_:_:_:_:_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol, H: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value)> where Value == A.Value 
```

### `zip(_:_:_:_:_:_:_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol, H: PropertyProtocol, I: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value, I.Value)> where Value == A.Value 
```

### `zip(_:_:_:_:_:_:_:_:_:_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`.

``` swift
public static func zip<A: PropertyProtocol, B: PropertyProtocol, C: PropertyProtocol, D: PropertyProtocol, E: PropertyProtocol, F: PropertyProtocol, G: PropertyProtocol, H: PropertyProtocol, I: PropertyProtocol, J: PropertyProtocol>(_ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J) -> Property<(A.Value, B.Value, C.Value, D.Value, E.Value, F.Value, G.Value, H.Value, I.Value, J.Value)> where Value == A.Value 
```

### `zip(_:)`

Zips the values of all the given properties, in the manner described by
`zip(with:​)`. Returns nil if the sequence is empty.

``` swift
public static func zip<S: Sequence>(_ properties: S) -> Property<[S.Iterator.Element.Value]>? where S.Iterator.Element: PropertyProtocol 
```

## Requirements

### Value

``` swift
associatedtype Value
```

### value

The current value of the property.

``` swift
var value: Value 
```

### producer

The values producer of the property.

``` swift
var producer: SignalProducer<Value, NoError> 
```

It produces a signal that sends the property's current value,
followed by all changes over time. It completes when the property
has deinitialized, or has no further change.

> 

### signal

A signal that will send the property's changes over time. It
completes when the property has deinitialized, or has no further
change.

``` swift
var signal: Signal<Value, NoError> 
```

> 
