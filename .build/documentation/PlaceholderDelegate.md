# PlaceholderDelegate

The delegate of a TableView/CollectionView object must adopt the PlaceholderDelegate protocol. the method of the protocol allow the delegate to perform placeholders action.

``` swift
public protocol PlaceholderDelegate: class 
```

## Inheritance

`class`

## Requirements

### view(\_:​actionButtonTappedFor:​)

Performs the action to the delegate of the table or collection view

``` swift
func view(_ view: Any, actionButtonTappedFor placeholder: Placeholder)
```

#### Parameters

  - view: the table view or the collection
  - placeholder: The placeholder source of the action
