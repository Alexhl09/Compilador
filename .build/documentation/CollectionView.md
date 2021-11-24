# CollectionView

A collection view  that allows to show easily placeholders like no results, no internet connection, etc

``` swift
open class CollectionView: UICollectionView 
```

## Inheritance

[`PlaceholdersSwitcher`](/PlaceholdersSwitcher), `UICollectionView`

## Initializers

### `init?(coder:)`

Returns an collection view initialized from data in a given unarchiver.

``` swift
required public init?(coder aDecoder: NSCoder) 
```

#### Parameters

  - aDecoder: An unarchiver object.

#### Returns

self, initialized using the data in decoder.

### `init(frame:collectionViewLayout:)`

Initializes and returns a collection view object having the given frame and style.
Returns an initialized collectionView object, or nil if the object could not be successfully initialized.

``` swift
override public init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) 
```

#### Parameters

  - frame: A rectangle specifying the initial location and size of the collection view in its superview’s coordinates. The frame of the collection view changes as collection cells are added and deleted.
  - style: A constant that specifies the style of the collection view. See collection view Style for descriptions of valid constants.

#### Returns

Returns an initialized collectionView object, or nil if the object could not be successfully initialized.

## Properties

### `collectionViewLayout`

``` swift
open override var collectionViewLayout: UICollectionViewLayout 
```

  - The layout used to organize the collected view’s items.
    Assigning a new layout object to this property causes the new layout to be applied (without animations) to the collection view’s items.

### `placeholdersProvider`

The placeholdersProvider property is responsible for the placeholders views and data

``` swift
final public var placeholdersProvider = PlaceholdersProvider.default 
```

### `placeholderDelegate`

``` swift
public weak var placeholderDelegate: PlaceholderDelegate?
```

  - The object that acts as the delegate of the collection view placeholders.
  - The delegate must adopt the PlaceholderDelegate protocol. The delegate is not retained.

### `dataSource`

``` swift
open override weak var dataSource: UICollectionViewDataSource? 
```

  - The object that acts as the data source of the collection view.
  - The data source must adopt the UICollectionViewDataSource protocol. The data source is not retained.

### `delegate`

``` swift
open override weak var delegate: UICollectionViewDelegate? 
```

  - The object that acts as the delegate of the collection view.
  - The delegate must adopt the UICollectionViewDelegate protocol. The delegate is not retained.

### `placeholdersAlwaysBounceVertical`

``` swift
open var placeholdersAlwaysBounceVertical = false
```

  - A Boolean value that determines whether bouncing always occurs when the placeholder is shown.
  - The default value is false

## Methods

### `showLoadingPlaceholder()`

``` swift
public func showLoadingPlaceholder() 
```

### `showNoResultsPlaceholder()`

``` swift
public func showNoResultsPlaceholder() 
```

### `showErrorPlaceholder()`

``` swift
public func showErrorPlaceholder() 
```

### `showNoConnectionPlaceholder()`

``` swift
public func showNoConnectionPlaceholder() 
```

### `showCustomPlaceholder(with:)`

``` swift
public func showCustomPlaceholder(with key: PlaceholderKey) 
```

### `showDefault()`

``` swift
public func showDefault() 
```

### `customSetup()`

Implement this method of you want to add new default placeholdersProvider, new default cell, etc

``` swift
open func customSetup() 
```

### `reloadData()`

Reloads the rows and sections of the collection view.
If the number of rows == 0 it shows no results placeholder

``` swift
open override func reloadData() 
```
