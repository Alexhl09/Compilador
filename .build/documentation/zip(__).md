# zip(\_:)

``` swift
@available(*, unavailable, renamed:"Signal.zip")
public func zip<S: Sequence, Value, Error>(_ signals: S) -> Signal<[Value], Error> where S.Iterator.Element == Signal<Value, Error> 
```

# zip(\_:)

``` swift
@available(*, unavailable, renamed:"SignalProducer.zip")
public func zip<S: Sequence, Value, Error>(_ producers: S) -> SignalProducer<[Value], Error> where S.Iterator.Element == SignalProducer<Value, Error> 
```
