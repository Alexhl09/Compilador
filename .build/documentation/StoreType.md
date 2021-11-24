# StoreType

A protocol that defines storage of an observable state and dispatch methods to
modify it. Typically you will implement this on a struct and create a shared
instance that you reference throughout your application to get the state or
dispatch actions to change it.

``` swift
public protocol StoreType 
```

Sample store:

``` swift
struct AppState {
    var id = ObservableProperty(0)
}

struct Store: StoreType {
    var state: ObservableProperty<AppState>
}

let initialState = AppState()
var store = Store(state: ObservableProperty(initialState))
```

## Default Implementations

### `dispatch(_:)`

Dispatches an action by settings the state's value to the result of
calling it's `reduce` method.

``` swift
public mutating func dispatch<Action: ActionType>(_ action: Action) where Action.StateValueType == ObservableState.ValueType 
```

### `dispatch(_:)`

Dispatches an async action by calling it's `call` method.

``` swift
public func dispatch<DynamicAction: DynamicActionType>(_ action: DynamicAction) -> DynamicAction.ResponseType 
```

## Requirements

### ObservableState

An observable state of the store. This is accessed directly to subscribe to
changes.

``` swift
associatedtype ObservableState: ObservablePropertyType
```

### state

The type of the root state of the application.

``` swift
var state: ObservableState 
```

> 

### dispatch(\_:​)

Dispatch an action that will mutate the state of the store.

``` swift
mutating func dispatch<Action: ActionType>(_ action: Action) where Action.StateValueType == ObservableState.ValueType
```

### dispatch(\_:​)

Dispatch an async action that when called should trigger another dispatch
with a synchronous action.

``` swift
func dispatch<DynamicAction: DynamicActionType>(_ action: DynamicAction) -> DynamicAction.ResponseType
```
