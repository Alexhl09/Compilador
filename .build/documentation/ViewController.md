# ViewController

``` swift
open class ViewController: UIViewController 
```

## Inheritance

`UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDataSource`, `UITableViewDelegate`, `UITableViewDelegate`, `UITableViewDelegate`, `UITableViewDelegate`, `UITableViewDelegate`, `UITableViewDelegate`, `UITableViewDelegate`, `UITableViewDelegate`, `UITableViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UITextViewDelegate`, `UIViewController`, `UIViewController`, `UIViewController`, `UIViewController`, `UIViewController`, `UIViewController`, `UIViewController`, `UIViewController`, `UIViewController`

## Initializers

### `init?(coder:)`

``` swift
required public init?(coder aDecoder: NSCoder) 
```

## Properties

### `animations`

an array of spruce stock animations that will be used to animate all of the subviews of the `animationView`

``` swift
open var animations: [StockAnimation] = []
```

### `duration`

the length of each of the individual subview animations

``` swift
open var duration: TimeInterval = 0.3
```

### `animationType`

the style of animation that will be apllied to each of the subviews

``` swift
open var animationType: Animation
```

### `sortFunction`

the sort function that should be used for choreographing the animations

``` swift
open var sortFunction: SortFunction
```

### `animationView`

the view that Spruce should be called on. This means that the subviews of this view will animate in.

``` swift
open var animationView: UIView?
```

## Methods

### `viewDidLoad()`

in the `viewDidLoad` method all of the views are prepared for animation

``` swift
override open func viewDidLoad() 
```

### `viewDidAppear(_:)`

a simple overrided method that will call `spruce_up` on the `animationView`. If the `animationView` is not set then nothing will happen. The code should silently fail.

``` swift
override open func viewDidAppear(_ animated: Bool) 
```

#### Parameters

  - animated: If true, the view was added to the window using an animation.
