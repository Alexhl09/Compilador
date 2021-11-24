# SPLarkSettingsController

``` swift
@available(iOS 8.2, *)
open class SPLarkSettingsController: UIViewController 
```

## Inheritance

`UICollectionViewDataSource`, `UICollectionViewDelegate`, `UIViewController`

## Properties

### `titleLabel`

``` swift
public let titleLabel 
```

### `preferredStatusBarUpdateAnimation`

``` swift
override open var preferredStatusBarUpdateAnimation: UIStatusBarAnimation 
```

## Methods

### `settingsCount()`

``` swift
open func settingsCount() -> Int 
```

### `settingTitle(index:highlighted:)`

``` swift
open func settingTitle(index: Int, highlighted: Bool) -> String 
```

### `settingSubtitle(index:highlighted:)`

``` swift
open func settingSubtitle(index: Int, highlighted: Bool) -> String? 
```

### `settingHighlighted(index:)`

``` swift
open func settingHighlighted(index: Int) -> Bool 
```

### `settingColorHighlighted(index:)`

``` swift
open func settingColorHighlighted(index: Int) -> UIColor 
```

### `settingDidSelect(index:completion:)`

``` swift
open func settingDidSelect(index: Int, completion: @escaping () -> ()) 
```

### `reload(index:)`

``` swift
open func reload(index: Int) 
```

### `viewDidLoad()`

``` swift
override open func viewDidLoad() 
```

### `viewDidLayoutSubviews()`

``` swift
override open func viewDidLayoutSubviews() 
```

### `collectionView(_:numberOfItemsInSection:)`

``` swift
open func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int 
```

### `collectionView(_:cellForItemAt:)`

``` swift
open func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell 
```

### `collectionView(_:didSelectItemAt:)`

``` swift
open func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) 
```
