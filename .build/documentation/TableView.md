# TableView

A table view  that allows to show easily placeholders like no results, no internet connection, etc

``` swift
open class TableView: UITableView 
```

## Inheritance

[`PlaceholdersSwitcher`](/PlaceholdersSwitcher), `UITableView`

## Initializers

### `init?(coder:)`

Returns an table view initialized from data in a given unarchiver.

``` swift
required public init?(coder aDecoder: NSCoder) 
```

#### Parameters

  - aDecoder: An unarchiver object.

#### Returns

self, initialized using the data in decoder.

### `init(frame:style:)`

Initializes and returns a table view object having the given frame and style.
Returns an initialized TableView object, or nil if the object could not be successfully initialized.

``` swift
override public init(frame: CGRect, style: UITableView.Style) 
```

#### Parameters

  - frame: A rectangle specifying the initial location and size of the table view in its superview’s coordinates. The frame of the table view changes as table cells are added and deleted.
  - style: A constant that specifies the style of the table view. See Table View Style for descriptions of valid constants.

#### Returns

Returns an initialized TableView object, or nil if the object could not be successfully initialized.

## Properties

### `placeholdersProvider`

The placeholdersProvider property is responsible for the placeholders views and data

``` swift
final public var placeholdersProvider = PlaceholdersProvider.default 
```

### `placeholderDelegate`

``` swift
public weak var placeholderDelegate: PlaceholderDelegate?
```

  - The object that acts as the delegate of the table view placeholders.
  - The delegate must adopt the PlaceholderDelegate protocol. The delegate is not retained.

### `dataSource`

``` swift
weak open override var dataSource: UITableViewDataSource? 
```

  - The object that acts as the data source of the table view.
  - The data source must adopt the UITableViewDataSource protocol. The data source is not retained.

### `delegate`

``` swift
open override weak var delegate: UITableViewDelegate? 
```

  - The object that acts as the delegate of the table view.
  - The delegate must adopt the UITableViewDelegate protocol. The delegate is not retained.

### `tableHeaderView`

``` swift
open override var tableHeaderView: UIView? 
```

  - Returns an accessory view that is displayed above the table.
  - The default value is nil. The table header view is different from a section header.

### `tableFooterView`

``` swift
open override var tableFooterView: UIView? 
```

  - Returns an accessory view that is displayed below the table.
  - The default value is nil. The table footer view is different from a section footer.

### `separatorStyle`

``` swift
open override var separatorStyle: UITableViewCell.SeparatorStyle 
```

  - Keeps user seperatorStyle instead of overriding with system default
  - The default value is UITableViewCellSeparatorStyle.singleLine

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

Reloads the rows and sections of the table view.
If the number of rows == 0 it shows no results placeholder

``` swift
open override func reloadData() 
```

### `adjustedContentInsetDidChange()`

Called when the adjusted content insets of the scroll view change.

``` swift
open override func adjustedContentInsetDidChange() 
```
