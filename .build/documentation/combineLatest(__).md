# combineLatest(\_:)

``` swift
@available(*, unavailable, renamed:"Signal.combineLatest")
public func combineLatest<S: Sequence, Value, Error>(_ signals: S) -> Signal<[Value], Error> where S.Iterator.Element == Signal<Value, Error> 
```

# combineLatest(\_:)

``` swift
@available(*, unavailable, renamed:"SignalProducer.combineLatest")
public func combineLatest<S: Sequence, Value, Error>(_ producers: S) -> SignalProducer<[Value], Error> where S.Iterator.Element == SignalProducer<Value, Error> 
```
