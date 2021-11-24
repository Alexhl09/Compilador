# Extensions on UICollectionView

## Properties

### `orderedVisibleCells`

VisibleCells in the order they are displayed on screen.

``` swift
var orderedVisibleCells: [UICollectionViewCell] 
```

### `orderedVisibleCells`

VisibleCells in the order they are displayed on screen.

``` swift
var orderedVisibleCells: [UICollectionViewCell] 
```

## Methods

### `prepareSkeleton(completion:)`

``` swift
func prepareSkeleton(completion: @escaping (Bool) -> Void) 
```

### `visibleCells(in:)`

Gets the currently visibleCells of a section.

``` swift
func visibleCells(in section: Int) -> [UICollectionViewCell] 
```

#### Parameters

  - section: The section to filter the cells.

#### Returns

Array of visible UICollectionViewCells in the argument section.

### `prepareSkeleton(completion:)`

``` swift
func prepareSkeleton(completion: @escaping (Bool) -> Void) 
```

### `visibleCells(in:)`

Gets the currently visibleCells of a section.

``` swift
func visibleCells(in section: Int) -> [UICollectionViewCell] 
```

#### Parameters

  - section: The section to filter the cells.

#### Returns

Array of visible UICollectionViewCells in the argument section.
