# SwipeViewController

``` swift
open class SwipeViewController: UINavigationController, UIPageViewControllerDelegate, UIScrollViewDelegate 
```

## Inheritance

`UINavigationController`, `UIPageViewControllerDataSource`, `UIPageViewControllerDelegate`, `UIScrollViewDelegate`

## Initializers

### `init(pages:)`

``` swift
public init(pages: [UIViewController]) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

## Properties

### `pages`

``` swift
public private(set) var pages: [UIViewController] = []
```

### `startIndex`

``` swift
public var startIndex: Int = 0 
```

### `selectionBarHeight`

``` swift
public var selectionBarHeight: CGFloat = 0 
```

### `selectionBarWidth`

``` swift
public var selectionBarWidth: CGFloat = 0 
```

### `selectionBarColor`

``` swift
public var selectionBarColor: UIColor = .black 
```

### `buttonFont`

``` swift
public var buttonFont 
```

### `buttonColor`

``` swift
public var buttonColor: UIColor = .black 
```

### `selectedButtonColor`

``` swift
public var selectedButtonColor: UIColor = .green 
```

### `navigationBarColor`

``` swift
public var navigationBarColor: UIColor = .white 
```

### `leftBarButtonItem`

``` swift
public var leftBarButtonItem: UIBarButtonItem? 
```

### `rightBarButtonItem`

``` swift
public var rightBarButtonItem: UIBarButtonItem? 
```

### `bottomOffset`

``` swift
public var bottomOffset: CGFloat = 0
```

### `equalSpaces`

``` swift
public var equalSpaces: Bool = true
```

### `buttonsWithImages`

``` swift
public var buttonsWithImages: [SwipeButtonWithImage] = []
```

### `offset`

``` swift
public var offset: CGFloat = 40
```

### `pageController`

``` swift
public let pageController 
```

### `currentPageIndex`

``` swift
public var currentPageIndex = 0
```

### `buttons`

``` swift
public private(set) var buttons: [UIButton] = []
```

## Methods

### `viewWillAppear(_:)`

``` swift
open override func viewWillAppear(_ animated: Bool) 
```

### `scrollViewDidScroll(_:)`

``` swift
open func scrollViewDidScroll(_ scrollView: UIScrollView) 
```

### `pageViewController(_:viewControllerBefore:)`

``` swift
public func pageViewController(_: UIPageViewController,
                                   viewControllerBefore viewController: UIViewController) -> UIViewController? 
```

### `pageViewController(_:viewControllerAfter:)`

``` swift
public func pageViewController(_: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? 
```
