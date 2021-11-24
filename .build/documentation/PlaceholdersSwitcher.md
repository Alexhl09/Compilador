# PlaceholdersSwitcher

Protocol allows to switch between the different placehodlers used by CollectionView and TableView

``` swift
public protocol PlaceholdersSwitcher 
```

## Requirements

### showLoadingPlaceholder()

Shows loading placeholder, if you call this method and placeholdersProvider does not contains loading placeholder, assertionFailure is called

``` swift
func showLoadingPlaceholder()
```

### showNoResultsPlaceholder()

Shows no results placeholder, if you call this method and placeholdersProvider does not contains loading placeholder, assertionFailure is called...

``` swift
func showNoResultsPlaceholder()
```

### showErrorPlaceholder()

Shows error placeholder, if you call this method and placeholdersProvider does not contains error placeholder, assertionFailure is called...

``` swift
func showErrorPlaceholder()
```

### showNoConnectionPlaceholder()

Shows no internet connection placeholder, if you call this method and placeholdersProvider does not contains no internet connection placeholder, assertionFailure is called

``` swift
func showNoConnectionPlaceholder()
```

### showCustomPlaceholder(with:​)

Shows a custom placeholder
If you call this method and placeholdersProvider does not contains this custom placeholder, assertionFailure is called

``` swift
func showCustomPlaceholder(with key: PlaceholderKey)
```

#### Parameters

  - key: the key of the custom placeholder

### showDefault()

Shows the default data of the collection view

``` swift
func showDefault()
```
