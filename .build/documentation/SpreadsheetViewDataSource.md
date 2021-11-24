# SpreadsheetViewDataSource

Implement this protocol to provide data to an `SpreadsheetView`.

``` swift
public protocol SpreadsheetViewDataSource: class 
```

## Inheritance

`class`

## Default Implementations

### `spreadsheetView(_:cellForItemAt:)`

``` swift
public func spreadsheetView(_ spreadsheetView: SpreadsheetView, cellForItemAt indexPath: IndexPath) -> Cell? 
```

### `mergedCells(in:)`

``` swift
public func mergedCells(in spreadsheetView: SpreadsheetView) -> [CellRange] 
```

### `frozenColumns(in:)`

``` swift
public func frozenColumns(in spreadsheetView: SpreadsheetView) -> Int 
```

### `frozenRows(in:)`

``` swift
public func frozenRows(in spreadsheetView: SpreadsheetView) -> Int 
```

## Requirements

### numberOfColumns(in:​)

Asks your data source object for the number of columns in the spreadsheet view.

``` swift
func numberOfColumns(in spreadsheetView: SpreadsheetView) -> Int
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.

#### Returns

The number of columns in `spreadsheetView`.

### numberOfRows(in:​)

Asks the number of rows in spreadsheet view.

``` swift
func numberOfRows(in spreadsheetView: SpreadsheetView) -> Int
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.

#### Returns

The number of rows in `spreadsheetView`.

### spreadsheetView(\_:​widthForColumn:​)

Asks the data source for the width to use for a row in a specified location.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, widthForColumn column: Int) -> CGFloat
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.
  - column: The index of the column.

#### Returns

A nonnegative floating-point value that specifies the width (in points) that column should be.

### spreadsheetView(\_:​heightForRow:​)

Asks the data source for the height to use for a row in a specified location.

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, heightForRow row: Int) -> CGFloat
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.
  - row: The index of the row.

#### Returns

A nonnegative floating-point value that specifies the height (in points) that row should be.

### spreadsheetView(\_:​cellForItemAt:​)

Asks your data source object for the view that corresponds to the specified cell in the spreadsheetView.
The cell that is returned must be retrieved from a call to `dequeueReusableCell(withReuseIdentifier:​for:​)`

``` swift
func spreadsheetView(_ spreadsheetView: SpreadsheetView, cellForItemAt indexPath: IndexPath) -> Cell?
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.
  - indexPath: The location of the cell

#### Returns

A cell object to be displayed at the location. If you return nil from this method, the blank cell will be displayed by default.

### mergedCells(in:​)

Asks your data source object for the array of cell ranges that indicate the range of merged cells in the spreadsheetView.

``` swift
func mergedCells(in spreadsheetView: SpreadsheetView) -> [CellRange]
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.

#### Returns

An array of the cell ranges indicating the range of merged cells.

### frozenColumns(in:​)

Asks your data source object for the number of columns to be frozen as a fixed column header in the spreadsheetView.

``` swift
func frozenColumns(in spreadsheetView: SpreadsheetView) -> Int
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.

#### Returns

The number of columns to be frozen

### frozenRows(in:​)

Asks your data source object for the number of rows to be frozen as a fixed row header in the spreadsheetView.

``` swift
func frozenRows(in spreadsheetView: SpreadsheetView) -> Int
```

#### Parameters

  - spreadsheetView: The spreadsheet view requesting this information.

#### Returns

The number of rows to be frozen
