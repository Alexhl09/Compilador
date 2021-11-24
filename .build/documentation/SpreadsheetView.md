# SpreadsheetView

``` swift
public class SpreadsheetView: UIView 
```

## Inheritance

`UIScrollViewDelegate`, `UIView`

## Initializers

### `init(frame:)`

``` swift
public override init(frame: CGRect) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

## Properties

### `contentOffset`

``` swift
public var contentOffset: CGPoint 
```

### `scrollIndicatorInsets`

``` swift
public var scrollIndicatorInsets: UIEdgeInsets 
```

### `contentSize`

``` swift
public var contentSize: CGSize 
```

### `contentInset`

``` swift
public var contentInset: UIEdgeInsets 
```

### `adjustedContentInset`

<dl>
<dt><code>swift(>=3.2)</code></dt>
<dd>

``` swift
@available(iOS 11.0, *)
    public var adjustedContentInset: UIEdgeInsets 
```

</dd>
</dl>

### `dataSource`

The object that provides the data for the collection view.

``` swift
public weak var dataSource: SpreadsheetViewDataSource? 
```

> 

### `delegate`

The object that acts as the delegate of the spreadsheet view.

``` swift
public weak var delegate: SpreadsheetViewDelegate?
```

> 

### `intercellSpacing`

The horizontal and vertical spacing between cells.

``` swift
public var intercellSpacing 
```

> 

### `gridStyle`

``` swift
public var gridStyle: GridStyle 
```

### `allowsSelection`

A Boolean value that indicates whether users can select cells in the spreadsheet view.

``` swift
public var allowsSelection = true 
```

> 

> 

### `allowsMultipleSelection`

A Boolean value that determines whether users can select more than one cell in the spreadsheet view.

``` swift
public var allowsMultipleSelection = false 
```

> 

> 

### `showsVerticalScrollIndicator`

A Boolean value that controls whether the vertical scroll indicator is visible.

``` swift
public var showsVerticalScrollIndicator = true 
```

The default value is `true`. The indicator is visible while tracking is underway and fades out after tracking.

### `showsHorizontalScrollIndicator`

A Boolean value that controls whether the horizontal scroll indicator is visible.

``` swift
public var showsHorizontalScrollIndicator = true 
```

The default value is `true`. The indicator is visible while tracking is underway and fades out after tracking.

### `scrollsToTop`

A Boolean value that controls whether the scroll-to-top gesture is enabled.

``` swift
public var scrollsToTop: Bool = true 
```

> 

After the scroll view scrolls to the top of the content view, it sends the delegate a `scrollViewDidScrollToTop(_:)` message.

The default value of scrollsToTop is `true`.

On iPhone, the scroll-to-top gesture has no effect if there is more than one scroll view on-screen that has `scrollsToTop` set to `true`.

### `circularScrolling`

``` swift
public var circularScrolling: CircularScrollingConfiguration = CircularScrolling.Configuration.none 
```

### `backgroundView`

The view that provides the background appearance.

``` swift
public var backgroundView: UIView? 
```

> 

This property is nil by default, which displays the background color of the spreadsheet view.

### `visibleCells`

Returns an array of visible cells currently displayed by the spreadsheet view.

``` swift
public var visibleCells: [Cell] 
```

> 

#### Returns

An array of `Cell` objects. If no cells are visible, this method returns an empty array.

### `indexPathsForVisibleItems`

An array of the visible items in the collection view.

``` swift
public var indexPathsForVisibleItems: [IndexPath] 
```

> 

> 

### `indexPathForSelectedItem`

``` swift
public var indexPathForSelectedItem: IndexPath? 
```

### `indexPathsForSelectedItems`

The index paths for the selected items.

``` swift
public var indexPathsForSelectedItems: [IndexPath] 
```

> 

### `isDirectionalLockEnabled`

A Boolean value that determines whether scrolling is disabled in a particular direction.

``` swift
public var isDirectionalLockEnabled = false 
```

> 

### `bounces`

A Boolean value that controls whether the scroll view bounces past the edge of content and back again.

``` swift
public var bounces: Bool 
```

> 

> 

### `alwaysBounceVertical`

A Boolean value that determines whether bouncing always occurs when vertical scrolling reaches the end of the content.

``` swift
public var alwaysBounceVertical: Bool 
```

> 

> 

### `alwaysBounceHorizontal`

A Boolean value that determines whether bouncing always occurs when horizontal scrolling reaches the end of the content view.

``` swift
public var alwaysBounceHorizontal: Bool 
```

> 

> 

### `stickyRowHeader`

A Boolean value that determines wheather the row header always sticks to the top.

``` swift
public var stickyRowHeader: Bool = false
```

> 

> 

### `stickyColumnHeader`

A Boolean value that determines wheather the column header always sticks to the top.

``` swift
public var stickyColumnHeader: Bool = false
```

> 

> 

### `isPagingEnabled`

A Boolean value that determines whether paging is enabled for the scroll view.

``` swift
public var isPagingEnabled: Bool 
```

> 

### `isScrollEnabled`

A Boolean value that determines whether scrolling is enabled.

``` swift
public var isScrollEnabled: Bool 
```

> 

When scrolling is disabled, the scroll view does not accept touch events; it forwards them up the responder chain.

### `indicatorStyle`

The style of the scroll indicators.

``` swift
public var indicatorStyle: UIScrollView.IndicatorStyle 
```

> 

### `decelerationRate`

A floating-point value that determines the rate of deceleration after the user lifts their finger.

``` swift
public var decelerationRate: CGFloat 
```

> 

### `numberOfColumns`

``` swift
public var numberOfColumns: Int 
```

### `numberOfRows`

``` swift
public var numberOfRows: Int 
```

### `frozenColumns`

``` swift
public var frozenColumns: Int 
```

### `frozenRows`

``` swift
public var frozenRows: Int 
```

### `mergedCells`

``` swift
public var mergedCells: [CellRange] 
```

### `scrollView`

``` swift
public var scrollView: UIScrollView 
```

## Methods

### `layoutSubviews()`

``` swift
public override func layoutSubviews() 
```

### `flashScrollIndicators()`

``` swift
public func flashScrollIndicators() 
```

### `setContentOffset(_:animated:)`

``` swift
public func setContentOffset(_ contentOffset: CGPoint, animated: Bool) 
```

### `scrollRectToVisible(_:animated:)`

``` swift
public func scrollRectToVisible(_ rect: CGRect, animated: Bool) 
```

### `isKind(of:)`

``` swift
public override func isKind(of aClass: AnyClass) -> Bool 
```

### `forwardingTarget(for:)`

``` swift
public override func forwardingTarget(for aSelector: Selector!) -> Any? 
```

### `scrollViewDidScroll(_:)`

``` swift
public func scrollViewDidScroll(_ scrollView: UIScrollView) 
```

### `scrollViewDidEndScrollingAnimation(_:)`

``` swift
public func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) 
```

### `scrollViewDidChangeAdjustedContentInset(_:)`

``` swift
@available(iOS 11.0, *)
    public func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView) 
```

### `resizableSnapshotView(from:afterScreenUpdates:withCapInsets:)`

``` swift
public override func resizableSnapshotView(from rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets) -> UIView? 
```

### `insertSubview(_:at:)`

``` swift
public override func insertSubview(_ view: UIView, at index: Int) 
```

### `exchangeSubview(at:withSubviewAt:)`

``` swift
public override func exchangeSubview(at index1: Int, withSubviewAt index2: Int) 
```

### `addSubview(_:)`

``` swift
public override func addSubview(_ view: UIView) 
```

### `insertSubview(_:belowSubview:)`

``` swift
public override func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) 
```

### `insertSubview(_:aboveSubview:)`

``` swift
public override func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) 
```

### `bringSubviewToFront(_:)`

``` swift
public override func bringSubviewToFront(_ view: UIView) 
```

### `sendSubviewToBack(_:)`

``` swift
public override func sendSubviewToBack(_ view: UIView) 
```

### `safeAreaInsetsDidChange()`

<dl>
<dt><code>swift(>=3.2)</code></dt>
<dd>

``` swift
@available(iOS 11.0, *)
    public override func safeAreaInsetsDidChange() 
```

</dd>
</dl>

### `register(_:forCellWithReuseIdentifier:)`

``` swift
@objc(registerClass:forCellWithReuseIdentifier:)
    public func register(_ cellClass: Cell.Type, forCellWithReuseIdentifier identifier: String) 
```

### `register(_:forCellWithReuseIdentifier:)`

``` swift
@objc(registerNib:forCellWithReuseIdentifier:)
    public func register(_ nib: UINib, forCellWithReuseIdentifier identifier: String) 
```

### `reloadData()`

``` swift
public func reloadData() 
```

### `dequeueReusableCell(withReuseIdentifier:for:)`

``` swift
public func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> Cell 
```

### `scrollToItem(at:at:animated:)`

``` swift
public func scrollToItem(at indexPath: IndexPath, at scrollPosition: ScrollPosition, animated: Bool) 
```

### `selectItem(at:animated:scrollPosition:)`

``` swift
public func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: ScrollPosition) 
```

### `deselectItem(at:animated:)`

``` swift
public func deselectItem(at indexPath: IndexPath, animated: Bool) 
```

### `indexPathForItem(at:)`

``` swift
public func indexPathForItem(at point: CGPoint) -> IndexPath? 
```

### `cellForItem(at:)`

``` swift
public func cellForItem(at indexPath: IndexPath) -> Cell? 
```

### `cellsForItem(at:)`

``` swift
public func cellsForItem(at indexPath: IndexPath) -> [Cell] 
```

### `rectForItem(at:)`

``` swift
public func rectForItem(at indexPath: IndexPath) -> CGRect 
```
