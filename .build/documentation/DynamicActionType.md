# DynamicActionType

This protocol is used when you want to do some async behavior that updates the
store.  It is very minimal in that it's not allowed to modify the store
directly. The async behavior is done within the `call` method and to make
changes it should dispatch a synchronous action.

``` swift
public protocol DynamicActionType 
```

Sample Action:

``` swift
struct FetchUsers: DynamicActionType {
    func call() {
        someApi.fetchUsers { users in
            store.dispatch(SetUsersAction(users: users))
        }
    }
}

store.dispatch(UpdateIdAction(id: 1))
```

## Requirements

### ResponseType

The return type from the `call` method.

``` swift
associatedtype ResponseType
```

> 

### call()

This method is where you perform some async behavior that when completed,
should dispatch a synchronous action on the store.

``` swift
func call() -> ResponseType
```

You can optionally return an object that wraps async behavior. This might
be a `Promise` from PromiseKit or `SignalProducer` from ReactiveCocoa.
