# SkeletonTableViewDataSource

``` swift
public protocol SkeletonTableViewDataSource: UITableViewDataSource 
```

## Inheritance

`UITableViewDataSource`, `UITableViewDataSource`

## Default Implementations

### `collectionSkeletonView(_:numberOfRowsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int 
```

### `collectionSkeletonView(_:numberOfRowsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UITableView) -> Int 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UITableView) -> Int 
```

### `collectionSkeletonView(_:cellIdenfierForRowAt:)`

Keeping the misspelled version around until it can be deprecated
Right now, it just calls the new correctly spelled method and returns its result

``` swift
@available(*, deprecated, renamed: "collectionSkeletonView(_:cellIdentifierForRowAt:)")
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdenfierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier 
```

### `collectionSkeletonView(_:cellIdenfierForRowAt:)`

Keeping the misspelled version around until it can be deprecated
Right now, it just calls the new correctly spelled method and returns its result

``` swift
@available(*, deprecated, renamed: "collectionSkeletonView(_:cellIdentifierForRowAt:)")
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdenfierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier 
```

### `collectionSkeletonView(_:numberOfRowsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int 
```

### `collectionSkeletonView(_:numberOfRowsInSection:)`

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UITableView) -> Int 
```

### `numSections(in:)`

``` swift
func numSections(in collectionSkeletonView: UITableView) -> Int 
```

### `collectionSkeletonView(_:cellIdenfierForRowAt:)`

Keeping the misspelled version around until it can be deprecated
Right now, it just calls the new correctly spelled method and returns its result

``` swift
@available(*, deprecated, renamed: "collectionSkeletonView(_:cellIdentifierForRowAt:)")
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdenfierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier 
```

### `collectionSkeletonView(_:cellIdenfierForRowAt:)`

Keeping the misspelled version around until it can be deprecated
Right now, it just calls the new correctly spelled method and returns its result

``` swift
@available(*, deprecated, renamed: "collectionSkeletonView(_:cellIdentifierForRowAt:)")
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdenfierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier 
```

## Requirements

### numSections(in:​)

``` swift
func numSections(in collectionSkeletonView: UITableView) -> Int
```

### collectionSkeletonView(\_:​numberOfRowsInSection:​)

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int
```

### collectionSkeletonView(\_:​cellIdentifierForRowAt:​)

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier
```

### numSections(in:​)

``` swift
func numSections(in collectionSkeletonView: UITableView) -> Int
```

### collectionSkeletonView(\_:​numberOfRowsInSection:​)

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int
```

### collectionSkeletonView(\_:​cellIdentifierForRowAt:​)

``` swift
func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier
```
