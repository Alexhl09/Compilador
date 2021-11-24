# ActionType

``` swift
@available(*, unavailable, renamed:"ActionProtocol")
public enum ActionType 
```

## Requirements

### StateValueType

The type of the app's state.

``` swift
associatedtype StateValueType
```

> 

### reduce(state:​)

This method is called when this action is dispatched. Its purpose is to
make modifications to the state and return a new version of it.

``` swift
func reduce(state: StateValueType) -> StateValueType
```

> 

#### Parameters

  - state: The current state of the store.

#### Returns

The new state.
