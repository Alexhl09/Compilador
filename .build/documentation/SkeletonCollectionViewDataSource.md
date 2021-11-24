# SkeletonCollectionViewDataSource

``` swift
public protocol SkeletonCollectionViewDataSource: UICollectionViewDataSource 
```

## Inheritance

`UICollectionViewDataSource`, `UICollectionViewDataSource`

## Default Implementations

### `collectionSkeletonView(_:numberOfItemsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int 
```

### `collectionSkeletonView(_:numberOfItemsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int 
```

### `collectionSkeletonView(_:supplementaryViewIdentifierOfKind:at:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView,
                                supplementaryViewIdentifierOfKind: String,
                                at indexPath: IndexPath) -> ReusableCellIdentifier? 
```

### `collectionSkeletonView(_:supplementaryViewIdentifierOfKind:at:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView,
                                supplementaryViewIdentifierOfKind: String,
                                at indexPath: IndexPath) -> ReusableCellIdentifier? 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UICollectionView) -> Int 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UICollectionView) -> Int 
```

### `collectionSkeletonView(_:numberOfItemsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int 
```

### `collectionSkeletonView(_:numberOfItemsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int 
```

### `collectionSkeletonView(_:supplementaryViewIdentifierOfKind:at:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView,
                                supplementaryViewIdentifierOfKind: String,
                                at indexPath: IndexPath) -> ReusableCellIdentifier? 
```

### `collectionSkeletonView(_:supplementaryViewIdentifierOfKind:at:)`

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView,
                                supplementaryViewIdentifierOfKind: String,
                                at indexPath: IndexPath) -> ReusableCellIdentifier? 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UICollectionView) -> Int 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UICollectionView) -> Int 
```

## Requirements

### numSections(in:​)

``` swift
func numSections(in collectionSkeletonView: UICollectionView) -> Int
```

### collectionSkeletonView(\_:​numberOfItemsInSection:​)

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int
```

### collectionSkeletonView(\_:​cellIdentifierForItemAt:​)

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, cellIdentifierForItemAt indexPath: IndexPath) -> ReusableCellIdentifier
```

### collectionSkeletonView(\_:​supplementaryViewIdentifierOfKind:​at:​)

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, supplementaryViewIdentifierOfKind: String, at indexPath: IndexPath) -> ReusableCellIdentifier?
```

### numSections(in:​)

``` swift
func numSections(in collectionSkeletonView: UICollectionView) -> Int
```

### collectionSkeletonView(\_:​numberOfItemsInSection:​)

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int
```

### collectionSkeletonView(\_:​cellIdentifierForItemAt:​)

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, cellIdentifierForItemAt indexPath: IndexPath) -> ReusableCellIdentifier
```

### collectionSkeletonView(\_:​supplementaryViewIdentifierOfKind:​at:​)

``` swift
func collectionSkeletonView(_ skeletonView: UICollectionView, supplementaryViewIdentifierOfKind: String, at indexPath: IndexPath) -> ReusableCellIdentifier?
```
