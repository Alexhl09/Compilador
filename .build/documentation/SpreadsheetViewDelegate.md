# SpreadsheetViewDelegate

The `SpreadsheetViewDelegate` protocol defines methods that allow you to manage the selection and
highlighting of cells in a spreadsheet view and to perform actions on those cells.
The methods of this protocol are all optional.

``` swift
public protocol SpreadsheetViewDelegate: class 
```

## Inheritance

`class`

## Default Implementations

### `spreadsheetView(_:shouldHighlightItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, shouldHighlightItemAt indexPath: IndexPath) -> Bool 
```

### `spreadsheetView(_:didHighlightItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, didHighlightItemAt indexPath: IndexPath) 
```

### `spreadsheetView(_:didUnhighlightItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, didUnhighlightItemAt indexPath: IndexPath) 
```

### `spreadsheetView(_:shouldSelectItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, shouldSelectItemAt indexPath: IndexPath) -> Bool 
```

### `spreadsheetView(_:shouldDeselectItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, shouldDeselectItemAt indexPath: IndexPath) -> Bool 
```

### `spreadsheetView(_:didSelectItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, didSelectItemAt indexPath: IndexPath) 
```

### `spreadsheetView(_:didDeselectItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, didDeselectItemAt indexPath: IndexPath) 
```

## Requirements

### spreadsheetView(\_:​shouldHighlightItemAt:​)

Asks the delegate if the cell should be highlighted during tracking.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, shouldHighlightItemAt indexPath: IndexPath) -> Bool
```

> 

#### Parameters

  - spreadsheetView: The spreadsheet view object that is asking about the highlight change.
  - indexPath: The index path of the cell to be highlighted.

#### Returns

`true` if the item should be highlighted or `false` if it should not.

### spreadsheetView(\_:​didHighlightItemAt:​)

Tells the delegate that the cell at the specified index path was highlighted.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, didHighlightItemAt indexPath: IndexPath)
```

> 

#### Parameters

  - spreadsheetView: The spreadsheet view object that is notifying you of the highlight change.
  - indexPath: The index path of the cell that was highlighted.

### spreadsheetView(\_:​didUnhighlightItemAt:​)

Tells the delegate that the highlight was removed from the cell at the specified index path.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, didUnhighlightItemAt indexPath: IndexPath)
```

> 

#### Parameters

  - spreadsheetView: The spreadsheet view object that is notifying you of the highlight change.
  - indexPath: The index path of the cell that had its highlight removed.

### spreadsheetView(\_:​shouldSelectItemAt:​)

Asks the delegate if the specified cell should be selected.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, shouldSelectItemAt indexPath: IndexPath) -> Bool
```

> 

#### Parameters

  - spreadsheetView: The spreadsheet view object that is asking whether the selection should change.
  - indexPath: The index path of the cell to be selected.

#### Returns

`true` if the item should be selected or `false` if it should not.

### spreadsheetView(\_:​shouldDeselectItemAt:​)

Asks the delegate if the specified item should be deselected.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, shouldDeselectItemAt indexPath: IndexPath) -> Bool
```

> 

#### Parameters

  - spreadsheetView: The spreadsheet view object that is asking whether the selection should change.
  - indexPath: The index path of the cell to be deselected.

#### Returns

`true` if the cell should be deselected or `false` if it should not.

### spreadsheetView(\_:​didSelectItemAt:​)

Tells the delegate that the cell at the specified index path was selected.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, didSelectItemAt indexPath: IndexPath)
```

> 

#### Parameters

  - spreadsheetView: The spreadsheet view object that is notifying you of the selection change.
  - indexPath: The index path of the cell that was selected.

### spreadsheetView(\_:​didDeselectItemAt:​)

Tells the delegate that the cell at the specified path was deselected.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, didDeselectItemAt indexPath: IndexPath)
```

> 

#### Parameters

  - spreadsheetView: The spreadsheet view object that is notifying you of the selection change.
  - indexPath: The index path of the cell that was deselected.
