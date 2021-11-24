# StarsKit

Global StarsKit client

``` swift
public class StarsKit 
```

## Initializers

### `init(delegate:uiDelegate:)`

``` swift
public init(delegate: StarsKitDelegate? = nil, uiDelegate: StarsKitUIDelegate? = nil) 
```

## Properties

### `shared`

Default StarsKit singleton instance

``` swift
public static let shared 
```

### `configuration`

``` swift
public var configuration 
```

### `context`

``` swift
public var context 
```

### `graphicContext`

``` swift
public var graphicContext 
```

### `validateRatingButtonEnable`

Defines if you want to submit immediatelly after Stars touches
or validate after with a specific submit button.

``` swift
public var validateRatingButtonEnable = true
```

### `customImageMode`

Defines if StarsKit will use custom images provided by you instead of the stars.

``` swift
public var customImageMode = false
```

### `useDefaultBehavior`

Defines if StarsKit will apply its own behavior process or if you want to apply yours.

``` swift
public var useDefaultBehavior = true
```

### `useSessionSpaceChecking`

Defines if you want to enable the time condition space between to sessions.

``` swift
public var useSessionSpaceChecking = true
```

If the session set is to close in the given period time, the session number will not be set.

See `maxDaysBetweenSession` in `StarsKitConfiguration`.

### `localLocalizableStringsEnabled`

Defines if StarsKit uses the Localizable strings (and your overrided ones)
or if it uses the configuration strings ones

``` swift
public var localLocalizableStringsEnabled = false
```

### `delegate`

Use the StarsKitDelegate to have configuration & event feedbacks

``` swift
public weak var delegate: StarsKitDelegate?
```

### `uiDelegate`

Use the StarsKitUIDelegate to have UI feedbacks

``` swift
public weak var uiDelegate: StarsKitUIDelegate?
```

## Methods

### `displayRateIfNeeded(forced:)`

Starts the rating checking and display the rating view if needed.

``` swift
@discardableResult
  public func displayRateIfNeeded(forced: Bool = false) -> Bool 
```

### `resetContext()`

See the `StarsKitContextProperties`
**Warning**:​ Be sure about calling a reset context \!

``` swift
public func resetContext() 
```

### `resetConfig()`

See the `StarsKitConfigProperties`

``` swift
public func resetConfig() 
```

### `resetCrashMetrics()`

``` swift
public func resetCrashMetrics() 
```

### `incrementSession(by:)`

``` swift
public func incrementSession(by sessionCount: Int = 1) 
```

### `updateConfig(from:)`

``` swift
public func updateConfig(from values: [String: Any?]) 
```
