# timer(interval:on:leeway:)

Creates a repeating timer of the given interval, sending updates on the
given scheduler.

``` swift
public func timer(interval: DispatchTimeInterval, on scheduler: DateSchedulerProtocol, leeway: DispatchTimeInterval) -> SignalProducer<Date, NoError> 
```

> 

> 

> 

## Parameters

  - interval: An interval between invocations.
  - scheduler: A scheduler to deliver events on.
  - leeway: Interval leeway. Apple's "Power Efficiency Guide for Mac Apps" recommends a leeway of at least 10% of the timer interval.

## Returns

A producer that sends `NSDate` values every `interval` seconds.

# timer(interval:on:leeway:)

``` swift
@available(*, unavailable, message:"timer(interval:on:leeway:) now uses DispatchTimeInterval")
public func timer(interval: TimeInterval, on scheduler: DateSchedulerProtocol, leeway: TimeInterval) -> SignalProducer<Date, NoError> 
```
