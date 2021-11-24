# timer(interval:on:)

Create a repeating timer of the given interval, with a reasonable default
leeway, sending updates on the given scheduler.

``` swift
public func timer(interval: DispatchTimeInterval, on scheduler: DateSchedulerProtocol) -> SignalProducer<Date, NoError> 
```

> 

> 

> 

## Parameters

  - interval: An interval between invocations.
  - scheduler: A scheduler to deliver events on.

## Returns

A producer that sends `NSDate` values every `interval` seconds.

# timer(interval:on:)

``` swift
@available(*, unavailable, message:"timer(interval:on:) now uses DispatchTimeInterval")
public func timer(interval: TimeInterval, on scheduler: DateSchedulerProtocol) -> SignalProducer<Date, NoError> 
```
