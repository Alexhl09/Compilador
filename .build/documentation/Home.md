# Types

  - [MultipartFormData](/MultipartFormData):
    Constructs `multipart/form-data` for uploads within an HTTP or HTTPS body. There are currently two ways to encode
    multipart form data. The first way is to encode the data directly in memory. This is very efficient, but can lead
    to memory issues if the dataset is too large. The second way is designed for larger datasets and will write all the
    data to a single file on disk with all the proper boundary segmentation. The second approach MUST be used for
    larger datasets such as video content, otherwise your app may run out of memory when trying to encode the dataset.
  - [NetworkReachabilityManager](/NetworkReachabilityManager):
    The `NetworkReachabilityManager` class listens for reachability changes of hosts and addresses for both WWAN and
    WiFi network interfaces.
  - [Request](/Request):
    Responsible for sending a request and receiving the response and associated data from the server, as well as
    managing its underlying `URLSessionTask`.
  - [DataRequest](/DataRequest):
    Specific type of `Request` that manages an underlying `URLSessionDataTask`.
  - [DownloadRequest](/DownloadRequest):
    Specific type of `Request` that manages an underlying `URLSessionDownloadTask`.
  - [UploadRequest](/UploadRequest):
    Specific type of `Request` that manages an underlying `URLSessionUploadTask`.
  - [StreamRequest](/StreamRequest):
    Specific type of `Request` that manages an underlying `URLSessionStreamTask`.
  - [ServerTrustPolicyManager](/ServerTrustPolicyManager):
    Responsible for managing the mapping of `ServerTrustPolicy` objects to a given host.
  - [SessionDelegate](/SessionDelegate):
    Responsible for handling all delegate callbacks for the underlying session.
  - [SessionManager](/SessionManager):
    Responsible for creating and managing `Request` objects, as well as their underlying `NSURLSession`.
  - [TaskDelegate](/TaskDelegate):
    The task delegate is responsible for handling all delegate callbacks for the underlying task as well as
    executing all operations attached to the serial operation queue upon task completion.
  - [ObservableProperty](/ObservableProperty):
    A basic implementation of a property whose `value` can be observed
    using callbacks.
  - [CocoaAction](/CocoaAction):
    CocoaAction wraps an `Action` for use by a UI control (such as `NSControl` or
    `UIControl`).
  - [DynamicProperty](/DynamicProperty):
    Wraps a `dynamic` property, or one defined in Objective-C, using Key-Value
    Coding and Key-Value Observing.
  - [Action](/Action):
    Represents an action that will do some work when executed with a value of
    type `Input`, then return zero or more values of type `Output` and/or fail
    with an error of type `Error`. If no failure should be possible, NoError can
    be specified for the `Error` parameter.
  - [Atomic](/Atomic):
    An atomic variable.
  - [RemovalToken](/RemovalToken):
    A uniquely identifying token for removing a value that was inserted into a
    Bag.
  - [AnyDisposable](/AnyDisposable):
    A type-erased disposable that forwards operations to an underlying disposable.
  - [SimpleDisposable](/SimpleDisposable):
    A disposable that only flips `isDisposed` upon disposal, and performs no other
    work.
  - [ActionDisposable](/ActionDisposable):
    A disposable that will run an action upon disposal.
  - [CompositeDisposable](/CompositeDisposable):
    A disposable that will dispose of any number of other disposables.
  - [CompositeDisposable.DisposableHandle](/CompositeDisposable_DisposableHandle):
    Represents a handle to a disposable previously added to a
    CompositeDisposable.
  - [ScopedDisposable](/ScopedDisposable):
    A disposable that, upon deinitialization, will automatically dispose of
    its inner disposable.
  - [SerialDisposable](/SerialDisposable):
    A disposable that disposes of its wrapped disposable, and allows its
    wrapped disposable to be replaced.
  - [Lifetime](/Lifetime):
    Represents the lifetime of an object, and provides a hook to observe when
    the object deinitializes.
  - [Lifetime.Token](/Lifetime_Token):
    A token object which completes its signal when it deinitializes.
  - [Observer](/Observer):
    An Observer is a simple wrapper around a function which can receive Events
    (typically from a Signal).
  - [Property](/Property):
    A read-only property that can be observed for its changes over time. There
    are three categories of read-only properties:
  - [MutableProperty](/MutableProperty):
    A mutable property of type `Value` that allows observation of its changes.
  - [ImmediateScheduler](/ImmediateScheduler):
    A scheduler that performs all work synchronously.
  - [UIScheduler](/UIScheduler):
    A scheduler that performs all work on the main queue, as soon as possible.
  - [QueueScheduler](/QueueScheduler):
    A scheduler backed by a serial GCD queue.
  - [TestScheduler](/TestScheduler):
    A scheduler that implements virtualized time, for use in testing.
  - [Signal](/Signal):
    A push-driven stream that sends Events over time, parameterized by the type
    of values being sent (`Value`) and the type of failure that can occur
    (`Error`). If no failures should be possible, NoError can be specified for
    `Error`.
  - [BindingTarget](/BindingTarget):
    A binding target that can be used with the `<~` operator.
  - [LiveViewController](/LiveViewController)
  - [MultipartFormData](/MultipartFormData):
    Constructs `multipart/form-data` for uploads within an HTTP or HTTPS body. There are currently two ways to encode
    multipart form data. The first way is to encode the data directly in memory. This is very efficient, but can lead
    to memory issues if the dataset is too large. The second way is designed for larger datasets and will write all the
    data to a single file on disk with all the proper boundary segmentation. The second approach MUST be used for
    larger datasets such as video content, otherwise your app may run out of memory when trying to encode the dataset.
  - [NetworkReachabilityManager](/NetworkReachabilityManager):
    The `NetworkReachabilityManager` class listens for reachability changes of hosts and addresses for both WWAN and
    WiFi network interfaces.
  - [Request](/Request):
    Responsible for sending a request and receiving the response and associated data from the server, as well as
    managing its underlying `URLSessionTask`.
  - [DataRequest](/DataRequest):
    Specific type of `Request` that manages an underlying `URLSessionDataTask`.
  - [DownloadRequest](/DownloadRequest):
    Specific type of `Request` that manages an underlying `URLSessionDownloadTask`.
  - [UploadRequest](/UploadRequest):
    Specific type of `Request` that manages an underlying `URLSessionUploadTask`.
  - [StreamRequest](/StreamRequest):
    Specific type of `Request` that manages an underlying `URLSessionStreamTask`.
  - [ServerTrustPolicyManager](/ServerTrustPolicyManager):
    Responsible for managing the mapping of `ServerTrustPolicy` objects to a given host.
  - [SessionDelegate](/SessionDelegate):
    Responsible for handling all delegate callbacks for the underlying session.
  - [SessionManager](/SessionManager):
    Responsible for creating and managing `Request` objects, as well as their underlying `NSURLSession`.
  - [TaskDelegate](/TaskDelegate):
    The task delegate is responsible for handling all delegate callbacks for the underlying task as well as
    executing all operations attached to the serial operation queue upon task completion.
  - [BLTNBackgroundViewStyle](/BLTNBackgroundViewStyle)
  - [BLTNInterfaceBuilder](/BLTNInterfaceBuilder)
  - [BLTNItemAppearance](/BLTNItemAppearance)
  - [BLTNSpacing](/BLTNSpacing)
  - [BLTNItemManager](/BLTNItemManager)
  - [BulletinManager](/BulletinManager)
  - [ActionBulletinItem](/ActionBulletinItem)
  - [PageBulletinItem](/PageBulletinItem)
  - [BulletinInterfaceFactory](/BulletinInterfaceFactory)
  - [BulletinPadding](/BulletinPadding)
  - [BulletinBackgroundViewStyle](/BulletinBackgroundViewStyle)
  - [HighlightButtonWrapper](/HighlightButtonWrapper)
  - [AnimationChain](/AnimationChain)
  - [AnimationPhase](/AnimationPhase)
  - [BLTNContainerView](/BLTNContainerView)
  - [BLTNHighlightButtonWrapper](/BLTNHighlightButtonWrapper)
  - [BLTNTitleLabelContainer](/BLTNTitleLabelContainer)
  - [Animator](/Animator)
  - [BarChartView](/BarChartView):
    Chart that draws bars.
  - [BarLineChartViewBase](/BarLineChartViewBase):
    Base-class of LineChart, BarChart, ScatterChart and CandleStickChart.
  - [BubbleChartView](/BubbleChartView)
  - [CandleStickChartView](/CandleStickChartView):
    Financial chart type that draws candle-sticks.
  - [ChartViewBase](/ChartViewBase)
  - [CombinedChartView](/CombinedChartView):
    This chart class allows the combination of lines, bars, scatter and candle data all displayed in one chart area.
  - [HorizontalBarChartView](/HorizontalBarChartView):
    BarChart with horizontal bar orientation. In this implementation, x- and y-axis are switched.
  - [LineChartView](/LineChartView):
    Chart that draws lines, surfaces, circles, ...
  - [PieChartView](/PieChartView):
    View that represents a pie chart. Draws cake like slices.
  - [PieRadarChartViewBase](/PieRadarChartViewBase):
    Base class of PieChartView and RadarChartView.
  - [RadarChartView](/RadarChartView):
    Implementation of the RadarChart, a "spidernet"-like chart. It works best
    when displaying 5-10 entries per DataSet.
  - [ScatterChartView](/ScatterChartView):
    The ScatterChart. Draws dots, triangles, squares and custom shapes into the chartview.
  - [AxisBase](/AxisBase):
    Base class for all axes
  - [ChartLimitLine](/ChartLimitLine):
    The limit line is an additional feature for all Line, Bar and ScatterCharts.
    It allows the displaying of an additional line in the chart that marks a certain maximum / limit on the specified axis (x- or y-axis).
  - [ComponentBase](/ComponentBase):
    This class encapsulates everything both Axis, Legend and LimitLines have in common
  - [Description](/Description)
  - [Legend](/Legend)
  - [LegendEntry](/LegendEntry)
  - [MarkerImage](/MarkerImage)
  - [MarkerView](/MarkerView)
  - [XAxis](/XAxis)
  - [YAxis](/YAxis):
    Class representing the y-axis labels settings and its entries.
    Be aware that not all features the YLabels class provides are suitable for the RadarChart.
    Customizations that affect the value range of the axis need to be applied before setting data for the chart.
  - [ChartBaseDataSet](/ChartBaseDataSet)
  - [BarChartData](/BarChartData)
  - [BarChartDataEntry](/BarChartDataEntry)
  - [BarChartDataSet](/BarChartDataSet)
  - [BarLineScatterCandleBubbleChartData](/BarLineScatterCandleBubbleChartData)
  - [BarLineScatterCandleBubbleChartDataSet](/BarLineScatterCandleBubbleChartDataSet)
  - [BubbleChartData](/BubbleChartData)
  - [BubbleChartDataEntry](/BubbleChartDataEntry)
  - [BubbleChartDataSet](/BubbleChartDataSet)
  - [CandleChartData](/CandleChartData)
  - [CandleChartDataEntry](/CandleChartDataEntry)
  - [CandleChartDataSet](/CandleChartDataSet)
  - [ChartData](/ChartData)
  - [ChartDataEntry](/ChartDataEntry)
  - [ChartDataEntryBase](/ChartDataEntryBase)
  - [ChartDataSet](/ChartDataSet):
    The DataSet class represents one group or type of entries (Entry) in the Chart that belong together.
    It is designed to logically separate different groups of values inside the Chart (e.g. the values for a specific line in the LineChart, or the values of a specific group of bars in the BarChart).
  - [CombinedChartData](/CombinedChartData)
  - [LineChartData](/LineChartData):
    Data object that encapsulates all data associated with a LineChart.
  - [LineChartDataSet](/LineChartDataSet)
  - [LineRadarChartDataSet](/LineRadarChartDataSet)
  - [LineScatterCandleRadarChartDataSet](/LineScatterCandleRadarChartDataSet)
  - [PieChartData](/PieChartData)
  - [PieChartDataEntry](/PieChartDataEntry)
  - [PieChartDataSet](/PieChartDataSet)
  - [RadarChartData](/RadarChartData)
  - [RadarChartDataEntry](/RadarChartDataEntry)
  - [RadarChartDataSet](/RadarChartDataSet)
  - [ScatterChartData](/ScatterChartData)
  - [ScatterChartDataSet](/ScatterChartDataSet)
  - [DataApproximator](/DataApproximator)
  - [DefaultAxisValueFormatter](/DefaultAxisValueFormatter)
  - [DefaultFillFormatter](/DefaultFillFormatter):
    Default formatter that calculates the position of the filled line.
  - [DefaultValueFormatter](/DefaultValueFormatter)
  - [IndexAxisValueFormatter](/IndexAxisValueFormatter):
    This formatter is used for passing an array of x-axis labels, on whole x steps.
  - [BarHighlighter](/BarHighlighter)
  - [ChartHighlighter](/ChartHighlighter)
  - [CombinedHighlighter](/CombinedHighlighter)
  - [Highlight](/Highlight)
  - [HorizontalBarHighlighter](/HorizontalBarHighlighter)
  - [PieHighlighter](/PieHighlighter)
  - [PieRadarHighlighter](/PieRadarHighlighter)
  - [RadarHighlighter](/RadarHighlighter)
  - [Range](/Range)
  - [AnimatedMoveViewJob](/AnimatedMoveViewJob)
  - [AnimatedViewPortJob](/AnimatedViewPortJob)
  - [AnimatedZoomViewJob](/AnimatedZoomViewJob)
  - [MoveViewJob](/MoveViewJob)
  - [ViewPortJob](/ViewPortJob)
  - [ZoomViewJob](/ZoomViewJob)
  - [AxisRendererBase](/AxisRendererBase)
  - [BarChartRenderer](/BarChartRenderer)
  - [BarLineScatterCandleBubbleRenderer](/BarLineScatterCandleBubbleRenderer)
  - [BarLineScatterCandleBubbleRenderer.XBounds](/BarLineScatterCandleBubbleRenderer_XBounds):
    Class representing the bounds of the current viewport in terms of indices in the values array of a DataSet.
  - [BubbleChartRenderer](/BubbleChartRenderer)
  - [CandleStickChartRenderer](/CandleStickChartRenderer)
  - [DataRenderer](/DataRenderer)
  - [CombinedChartRenderer](/CombinedChartRenderer)
  - [HorizontalBarChartRenderer](/HorizontalBarChartRenderer)
  - [LegendRenderer](/LegendRenderer)
  - [LineChartRenderer](/LineChartRenderer)
  - [LineRadarRenderer](/LineRadarRenderer)
  - [LineScatterCandleRadarRenderer](/LineScatterCandleRadarRenderer)
  - [PieChartRenderer](/PieChartRenderer)
  - [RadarChartRenderer](/RadarChartRenderer)
  - [Renderer](/Renderer)
  - [ChevronDownShapeRenderer](/ChevronDownShapeRenderer)
  - [ChevronUpShapeRenderer](/ChevronUpShapeRenderer)
  - [CircleShapeRenderer](/CircleShapeRenderer)
  - [CrossShapeRenderer](/CrossShapeRenderer)
  - [SquareShapeRenderer](/SquareShapeRenderer)
  - [TriangleShapeRenderer](/TriangleShapeRenderer)
  - [XShapeRenderer](/XShapeRenderer)
  - [ScatterChartRenderer](/ScatterChartRenderer)
  - [XAxisRenderer](/XAxisRenderer)
  - [XAxisRendererHorizontalBarChart](/XAxisRendererHorizontalBarChart)
  - [XAxisRendererRadarChart](/XAxisRendererRadarChart)
  - [YAxisRenderer](/YAxisRenderer)
  - [YAxisRendererHorizontalBarChart](/YAxisRendererHorizontalBarChart)
  - [YAxisRendererRadarChart](/YAxisRendererRadarChart)
  - [ChartColorTemplates](/ChartColorTemplates)
  - [ChartUtils](/ChartUtils)
  - [Fill](/Fill)
  - [NSUIAccessibilityElement](/NSUIAccessibilityElement):
    A simple abstraction over UIAccessibilityElement and NSAccessibilityElement.
  - [NSUIAccessibilityElement](/NSUIAccessibilityElement):
    A simple abstraction over UIAccessibilityElement and NSAccessibilityElement.
  - [NSUIView](/NSUIView)
  - [NSUIDisplayLink](/NSUIDisplayLink):
    On OS X there is no CADisplayLink. Use a 60 fps timer to render the animations.
  - [NSUIView](/NSUIView)
  - [Transformer](/Transformer):
    Transformer class that contains all matrices and is responsible for transforming values into pixels on the screen and backwards.
  - [TransformerHorizontalBarChart](/TransformerHorizontalBarChart)
  - [ViewPortHandler](/ViewPortHandler):
    Class that contains information about the charts current viewport settings, including offsets, scale & translation levels, ...
  - [PlaceholderCollectionViewCell](/PlaceholderCollectionViewCell):
    The default cell used for collection view placeholders (takes the size of the collection view)
  - [PlaceholderTableViewCell](/PlaceholderTableViewCell):
    The default cell used for table view placeholders (takes the size of the table view)
  - [PlaceholdersProvider](/PlaceholdersProvider):
    This class is responsible for generating placeholders for the table view
    Takes a list of Placeholders object and generate for everyone the data source and delegate
    A placeholder view is a table view with one cell
  - [CollectionView](/CollectionView):
    A collection view  that allows to show easily placeholders like no results, no internet connection, etc
  - [TableView](/TableView):
    A table view  that allows to show easily placeholders like no results, no internet connection, etc
  - [PastelLabel](/PastelLabel)
  - [PastelView](/PastelView)
  - [SPAlertIconAddView](/SPAlertIconAddView)
  - [SPAlertIconBoltView](/SPAlertIconBoltView)
  - [SPAlertIconBookmarkView](/SPAlertIconBookmarkView)
  - [SPAlertIconCardView](/SPAlertIconCardView)
  - [SPAlertIconCartView](/SPAlertIconCartView)
  - [SPAlertIconDislikeView](/SPAlertIconDislikeView)
  - [SPAlertIconDocView](/SPAlertIconDocView)
  - [SPAlertIconDoneView](/SPAlertIconDoneView)
  - [SPAlertIconEjectView](/SPAlertIconEjectView)
  - [SPAlertIconErrorView](/SPAlertIconErrorView)
  - [SPAlertIconExclamationView](/SPAlertIconExclamationView)
  - [SPAlertIconFlagView](/SPAlertIconFlagView)
  - [SPAlertIconHeartView](/SPAlertIconHeartView)
  - [SPAlertIconLikeView](/SPAlertIconLikeView)
  - [SPAlertIconMessageView](/SPAlertIconMessageView)
  - [SPAlertIconMoonView](/SPAlertIconMoonView)
  - [SPAlertIconPrivacyView](/SPAlertIconPrivacyView)
  - [SPAlertIconQuestionView](/SPAlertIconQuestionView)
  - [SPAlertIconRepeatView](/SPAlertIconRepeatView)
  - [SPAlertIconRotateView](/SPAlertIconRotateView)
  - [SPAlertIconSearchView](/SPAlertIconSearchView)
  - [SPAlertIconShuffleView](/SPAlertIconShuffleView)
  - [SPAlertIconStarView](/SPAlertIconStarView)
  - [SPAlertView](/SPAlertView):
    View which presenting. You can configure `titleLabel`, `subtitleLabel` and other. For change duration use property `duration`.
    Also you can configure layout & haptic. If you use preset, all configure automatically.
  - [SkeletonAnimationBuilder](/SkeletonAnimationBuilder)
  - [Cell](/Cell)
  - [CellRange](/CellRange)
  - [CircularScrolling.None](/CircularScrolling_None)
  - [CircularScrolling.Horizontally](/CircularScrolling_Horizontally)
  - [CircularScrolling.Horizontally.ColumnHeaderNotRepeated](/CircularScrolling_Horizontally_ColumnHeaderNotRepeated)
  - [CircularScrolling.Horizontally.ColumnHeaderNotRepeated.RowHeaderStartsFirstColumn](/CircularScrolling_Horizontally_ColumnHeaderNotRepeated_RowHeaderStartsFirstColumn)
  - [CircularScrolling.Horizontally.RowHeaderStartsFirstColumn](/CircularScrolling_Horizontally_RowHeaderStartsFirstColumn)
  - [CircularScrolling.Vertically](/CircularScrolling_Vertically)
  - [CircularScrolling.Vertically.RowHeaderNotRepeated](/CircularScrolling_Vertically_RowHeaderNotRepeated)
  - [CircularScrolling.Vertically.RowHeaderNotRepeated.ColumnHeaderStartsFirstRow](/CircularScrolling_Vertically_RowHeaderNotRepeated_ColumnHeaderStartsFirstRow)
  - [CircularScrolling.Vertically.ColumnHeaderStartsFirstRow](/CircularScrolling_Vertically_ColumnHeaderStartsFirstRow)
  - [CircularScrolling.Both](/CircularScrolling_Both)
  - [CircularScrolling.Both.ColumnHeaderNotRepeated](/CircularScrolling_Both_ColumnHeaderNotRepeated)
  - [CircularScrolling.Both.ColumnHeaderNotRepeated.RowHeaderStartsFirstColumn](/CircularScrolling_Both_ColumnHeaderNotRepeated_RowHeaderStartsFirstColumn)
  - [CircularScrolling.Both.ColumnHeaderNotRepeated.ColumnHeaderStartsFirstRow](/CircularScrolling_Both_ColumnHeaderNotRepeated_ColumnHeaderStartsFirstRow)
  - [CircularScrolling.Both.ColumnHeaderNotRepeated.RowHeaderNotRepeated](/CircularScrolling_Both_ColumnHeaderNotRepeated_RowHeaderNotRepeated)
  - [CircularScrolling.Both.ColumnHeaderNotRepeated.RowHeaderNotRepeated.RowHeaderStartsFirstColumn](/CircularScrolling_Both_ColumnHeaderNotRepeated_RowHeaderNotRepeated_RowHeaderStartsFirstColumn)
  - [CircularScrolling.Both.ColumnHeaderNotRepeated.RowHeaderNotRepeated.ColumnHeaderStartsFirstRow](/CircularScrolling_Both_ColumnHeaderNotRepeated_RowHeaderNotRepeated_ColumnHeaderStartsFirstRow)
  - [CircularScrolling.Both.RowHeaderNotRepeated](/CircularScrolling_Both_RowHeaderNotRepeated)
  - [CircularScrolling.Both.RowHeaderNotRepeated.RowHeaderStartsFirstColumn](/CircularScrolling_Both_RowHeaderNotRepeated_RowHeaderStartsFirstColumn)
  - [CircularScrolling.Both.RowHeaderNotRepeated.ColumnHeaderStartsFirstRow](/CircularScrolling_Both_RowHeaderNotRepeated_ColumnHeaderStartsFirstRow)
  - [CircularScrolling.Both.RowHeaderNotRepeated.ColumnHeaderNotRepeated](/CircularScrolling_Both_RowHeaderNotRepeated_ColumnHeaderNotRepeated)
  - [CircularScrolling.Both.RowHeaderNotRepeated.ColumnHeaderNotRepeated.RowHeaderStartsFirstColumn](/CircularScrolling_Both_RowHeaderNotRepeated_ColumnHeaderNotRepeated_RowHeaderStartsFirstColumn)
  - [CircularScrolling.Both.RowHeaderNotRepeated.ColumnHeaderNotRepeated.ColumnHeaderStartsFirstRow](/CircularScrolling_Both_RowHeaderNotRepeated_ColumnHeaderNotRepeated_ColumnHeaderStartsFirstRow)
  - [CircularScrolling.Both.RowHeaderStartsFirstColumn](/CircularScrolling_Both_RowHeaderStartsFirstColumn)
  - [CircularScrolling.Both.RowHeaderStartsFirstColumn.RowHeaderNotRepeated](/CircularScrolling_Both_RowHeaderStartsFirstColumn_RowHeaderNotRepeated)
  - [CircularScrolling.Both.ColumnHeaderStartsFirstRow](/CircularScrolling_Both_ColumnHeaderStartsFirstRow)
  - [CircularScrolling.Both.ColumnHeaderStartsFirstRow.ColumnHeaderNotRepeated](/CircularScrolling_Both_ColumnHeaderStartsFirstRow_ColumnHeaderNotRepeated)
  - [CircularScrollingConfigurationBuilder](/CircularScrollingConfigurationBuilder)
  - [SpreadsheetView](/SpreadsheetView)
  - [ViewController](/ViewController)
  - [Button](/Button)
  - [ViewAnimatorConfig](/ViewAnimatorConfig):
    Configuration class for the default values used in animations.
    All it's values are used when creating 'random' animations as well.
  - [ArrayNode](/ArrayNode):
    This class represents the nodes of the linked list generated to be used to keep track of the dimension of a multidimensional array
  - [Symbol](/Symbol):
    The symbol is one object that encapsulates the information of something that has been declared with an identifier.
    It could be a variable, constant, array, or a function. It constains all the information needed to execute some operations in the semantic analysis
  - [Node](/Node)
  - [Node](/Node)
  - [BLTNBackgroundViewStyle](/BLTNBackgroundViewStyle)
  - [BLTNInterfaceBuilder](/BLTNInterfaceBuilder)
  - [BLTNItemAppearance](/BLTNItemAppearance)
  - [BLTNSpacing](/BLTNSpacing)
  - [BLTNItemManager](/BLTNItemManager)
  - [BulletinManager](/BulletinManager)
  - [ActionBulletinItem](/ActionBulletinItem)
  - [PageBulletinItem](/PageBulletinItem)
  - [BulletinInterfaceFactory](/BulletinInterfaceFactory)
  - [BulletinPadding](/BulletinPadding)
  - [BulletinBackgroundViewStyle](/BulletinBackgroundViewStyle)
  - [HighlightButtonWrapper](/HighlightButtonWrapper)
  - [AnimationChain](/AnimationChain)
  - [AnimationPhase](/AnimationPhase)
  - [BLTNContainerView](/BLTNContainerView)
  - [BLTNHighlightButtonWrapper](/BLTNHighlightButtonWrapper)
  - [BLTNTitleLabelContainer](/BLTNTitleLabelContainer)
  - [PastelLabel](/PastelLabel)
  - [PastelView](/PastelView)
  - [SPAlertIconAddView](/SPAlertIconAddView)
  - [SPAlertIconBoltView](/SPAlertIconBoltView)
  - [SPAlertIconBookmarkView](/SPAlertIconBookmarkView)
  - [SPAlertIconCardView](/SPAlertIconCardView)
  - [SPAlertIconCartView](/SPAlertIconCartView)
  - [SPAlertIconDislikeView](/SPAlertIconDislikeView)
  - [SPAlertIconDocView](/SPAlertIconDocView)
  - [SPAlertIconDoneView](/SPAlertIconDoneView)
  - [SPAlertIconEjectView](/SPAlertIconEjectView)
  - [SPAlertIconErrorView](/SPAlertIconErrorView)
  - [SPAlertIconExclamationView](/SPAlertIconExclamationView)
  - [SPAlertIconFlagView](/SPAlertIconFlagView)
  - [SPAlertIconHeartView](/SPAlertIconHeartView)
  - [SPAlertIconLikeView](/SPAlertIconLikeView)
  - [SPAlertIconMessageView](/SPAlertIconMessageView)
  - [SPAlertIconMoonView](/SPAlertIconMoonView)
  - [SPAlertIconPrivacyView](/SPAlertIconPrivacyView)
  - [SPAlertIconQuestionView](/SPAlertIconQuestionView)
  - [SPAlertIconRepeatView](/SPAlertIconRepeatView)
  - [SPAlertIconRotateView](/SPAlertIconRotateView)
  - [SPAlertIconSearchView](/SPAlertIconSearchView)
  - [SPAlertIconShuffleView](/SPAlertIconShuffleView)
  - [SPAlertIconStarView](/SPAlertIconStarView)
  - [SPAlertView](/SPAlertView):
    View which presenting. You can configure `titleLabel`, `subtitleLabel` and other. For change duration use property `duration`.
    Also you can configure layout & haptic. If you use preset, all configure automatically.
  - [MultipartFormData](/MultipartFormData):
    Constructs `multipart/form-data` for uploads within an HTTP or HTTPS body. There are currently two ways to encode
    multipart form data. The first way is to encode the data directly in memory. This is very efficient, but can lead
    to memory issues if the dataset is too large. The second way is designed for larger datasets and will write all the
    data to a single file on disk with all the proper boundary segmentation. The second approach MUST be used for
    larger datasets such as video content, otherwise your app may run out of memory when trying to encode the dataset.
  - [NetworkReachabilityManager](/NetworkReachabilityManager):
    The `NetworkReachabilityManager` class listens for reachability changes of hosts and addresses for both WWAN and
    WiFi network interfaces.
  - [Request](/Request):
    Responsible for sending a request and receiving the response and associated data from the server, as well as
    managing its underlying `URLSessionTask`.
  - [DataRequest](/DataRequest):
    Specific type of `Request` that manages an underlying `URLSessionDataTask`.
  - [DownloadRequest](/DownloadRequest):
    Specific type of `Request` that manages an underlying `URLSessionDownloadTask`.
  - [UploadRequest](/UploadRequest):
    Specific type of `Request` that manages an underlying `URLSessionUploadTask`.
  - [StreamRequest](/StreamRequest):
    Specific type of `Request` that manages an underlying `URLSessionStreamTask`.
  - [ServerTrustPolicyManager](/ServerTrustPolicyManager):
    Responsible for managing the mapping of `ServerTrustPolicy` objects to a given host.
  - [SessionDelegate](/SessionDelegate):
    Responsible for handling all delegate callbacks for the underlying session.
  - [SessionManager](/SessionManager):
    Responsible for creating and managing `Request` objects, as well as their underlying `NSURLSession`.
  - [TaskDelegate](/TaskDelegate):
    The task delegate is responsible for handling all delegate callbacks for the underlying task as well as
    executing all operations attached to the serial operation queue upon task completion.
  - [Constants](/Constants)
  - [TimePeriod](/TimePeriod)
  - [TimePeriodChain](/TimePeriodChain)
  - [TimePeriodCollection](/TimePeriodCollection)
  - [TimePeriodGroup](/TimePeriodGroup)
  - [PastelLabel](/PastelLabel)
  - [PastelView](/PastelView)
  - [SPAlertIconDoneView](/SPAlertIconDoneView)
  - [SPAlertIconHeartView](/SPAlertIconHeartView)
  - [SPAlertView](/SPAlertView)
  - [SkyFloatingLabelTextField](/SkyFloatingLabelTextField):
    A beautiful and flexible textfield implementation with support for title label, error message and placeholder.
  - [SkyFloatingLabelTextFieldWithIcon](/SkyFloatingLabelTextFieldWithIcon):
    A beautiful and flexible textfield implementation with support for icon, title label, error message and placeholder.
  - [SwipeViewController](/SwipeViewController)
  - [SemanticHandler](/SemanticHandler)
  - [VirtualMemorySemantic](/VirtualMemorySemantic)
  - [ArrayNode](/ArrayNode)
  - [Symbol](/Symbol)
  - [Node](/Node)
  - [ActivationRecord](/ActivationRecord):
    The *ActivationRecord* class is used to create a temporal memory block and scope during the execution of the
  - [InfoStack](/InfoStack)
  - [VirtualMemory](/VirtualMemory)
  - [VirtualMemoryBlock](/VirtualMemoryBlock)
  - [AuthenticationInterceptor](/AuthenticationInterceptor):
    The `AuthenticationInterceptor` class manages the queuing and threading complexity of authenticating requests.
    It relies on an `Authenticator` type to handle the actual `URLRequest` authentication and `Credential` refresh.
  - [CompositeEventMonitor](/CompositeEventMonitor):
    An `EventMonitor` which can contain multiple `EventMonitor`s and calls their methods on their queues.
  - [ClosureEventMonitor](/ClosureEventMonitor):
    `EventMonitor` that allows optional closures to be set to receive events.
  - [MultipartFormData](/MultipartFormData):
    Constructs `multipart/form-data` for uploads within an HTTP or HTTPS body. There are currently two ways to encode
    multipart form data. The first way is to encode the data directly in memory. This is very efficient, but can lead
    to memory issues if the dataset is too large. The second way is designed for larger datasets and will write all the
    data to a single file on disk with all the proper boundary segmentation. The second approach MUST be used for
    larger datasets such as video content, otherwise your app may run out of memory when trying to encode the dataset.
  - [NetworkReachabilityManager](/NetworkReachabilityManager):
    The `NetworkReachabilityManager` class listens for reachability changes of hosts and addresses for both cellular and
    WiFi network interfaces.
  - [AlamofireNotifications](/AlamofireNotifications):
    `EventMonitor` that provides Alamofire's notifications.
  - [JSONParameterEncoder](/JSONParameterEncoder):
    A `ParameterEncoder` that encodes types as JSON body data.
  - [URLEncodedFormParameterEncoder](/URLEncodedFormParameterEncoder):
    A `ParameterEncoder` that encodes types as URL-encoded query strings to be set on the URL or as body data, depending
    on the `Destination` set.
  - [Request](/Request):
    `Request` is the common superclass of all Alamofire request types and provides common state, delegate, and callback
    handling.
  - [DataRequest](/DataRequest):
    `Request` subclass which handles in-memory `Data` download using `URLSessionDataTask`.
  - [DataStreamRequest](/DataStreamRequest):
    `Request` subclass which streams HTTP response `Data` through a `Handler` closure.
  - [DownloadRequest](/DownloadRequest):
    `Request` subclass which downloads `Data` to a file on disk using `URLSessionDownloadTask`.
  - [UploadRequest](/UploadRequest):
    `DataRequest` subclass which handles `Data` upload from memory, file, or stream using `URLSessionUploadTask`.
  - [Adapter](/Adapter):
    Closure-based `RequestAdapter`.
  - [Retrier](/Retrier):
    Closure-based `RequestRetrier`.
  - [Interceptor](/Interceptor):
    `RequestInterceptor` which can use multiple `RequestAdapter` and `RequestRetrier` values.
  - [DataResponseSerializer](/DataResponseSerializer):
    A `ResponseSerializer` that performs minimal response checking and returns any response `Data` as-is. By default, a
    request returning `nil` or no data is considered an error. However, if the request has an `HTTPMethod` or the
    response has an  HTTP status code valid for empty responses, then an empty `Data` value is returned.
  - [StringResponseSerializer](/StringResponseSerializer):
    A `ResponseSerializer` that decodes the response data as a `String`. By default, a request returning `nil` or no
    data is considered an error. However, if the request has an `HTTPMethod` or the response has an  HTTP status code
    valid for empty responses, then an empty `String` is returned.
  - [JSONResponseSerializer](/JSONResponseSerializer):
    A `ResponseSerializer` that decodes the response data using `JSONSerialization`. By default, a request returning
    `nil` or no data is considered an error. However, if the request has an `HTTPMethod` or the response has an
    HTTP status code valid for empty responses, then an `NSNull` value is returned.
  - [DecodableResponseSerializer](/DecodableResponseSerializer):
    A `ResponseSerializer` that decodes the response data as a generic value using any type that conforms to
    `DataDecoder`. By default, this is an instance of `JSONDecoder`. Additionally, a request returning `nil` or no data
    is considered an error. However, if the request has an `HTTPMethod` or the response has an HTTP status code valid
    for empty responses then an empty value will be returned. If the decoded type conforms to `EmptyResponse`, the
    type's `emptyValue()` will be returned. If the decoded type is `Empty`, the `.value` instance is returned. If the
    decoded type *does not* conform to `EmptyResponse` and isn't `Empty`, an error will be produced.
  - [RetryPolicy](/RetryPolicy):
    A retry policy that retries requests using an exponential backoff for allowed HTTP methods and HTTP status codes
    as well as certain types of networking errors.
  - [ConnectionLostRetryPolicy](/ConnectionLostRetryPolicy):
    A retry policy that automatically retries idempotent requests for network connection lost errors. For more
    information about retrying network connection lost errors, please refer to Apple's
    [technical document](https://developer.apple.com/library/content/qa/qa1941/_index.html).
  - [ServerTrustManager](/ServerTrustManager):
    Responsible for managing the mapping of `ServerTrustEvaluating` values to given hosts.
  - [DefaultTrustEvaluator](/DefaultTrustEvaluator):
    An evaluator which uses the default server trust evaluation while allowing you to control whether to validate the
    host provided by the challenge. Applications are encouraged to always validate the host in production environments
    to guarantee the validity of the server's certificate chain.
  - [RevocationTrustEvaluator](/RevocationTrustEvaluator):
    An evaluator which Uses the default and revoked server trust evaluations allowing you to control whether to validate
    the host provided by the challenge as well as specify the revocation flags for testing for revoked certificates.
    Apple platforms did not start testing for revoked certificates automatically until iOS 10.1, macOS 10.12 and tvOS
    10.1 which is demonstrated in our TLS tests. Applications are encouraged to always validate the host in production
    environments to guarantee the validity of the server's certificate chain.
  - [PinnedCertificatesTrustEvaluator](/PinnedCertificatesTrustEvaluator):
    Uses the pinned certificates to validate the server trust. The server trust is considered valid if one of the pinned
    certificates match one of the server certificates. By validating both the certificate chain and host, certificate
    pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate chain in production
    environments.
  - [PublicKeysTrustEvaluator](/PublicKeysTrustEvaluator):
    Uses the pinned public keys to validate the server trust. The server trust is considered valid if one of the pinned
    public keys match one of the server certificate public keys. By validating both the certificate chain and host,
    public key pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate chain in production
    environments.
  - [CompositeTrustEvaluator](/CompositeTrustEvaluator):
    Uses the provided evaluators to validate the server trust. The trust is only considered valid if all of the
    evaluators consider it valid.
  - [DisabledTrustEvaluator](/DisabledTrustEvaluator):
    Disables all evaluation which in turn will always consider any server trust as valid.
  - [Session](/Session):
    `Session` creates and manages Alamofire's `Request` types during their lifetimes. It also provides common
    functionality for all `Request`s, including queuing, interception, trust management, redirect handling, and response
    cache handling.
  - [SessionDelegate](/SessionDelegate):
    Class which implements the various `URLSessionDelegate` methods to connect various Alamofire features.
  - [URLEncodedFormEncoder](/URLEncodedFormEncoder):
    An object that encodes instances into URL-encoded query strings.
  - [HTTPRequest](/HTTPRequest)
  - [AuthenticationInterceptor](/AuthenticationInterceptor):
    The `AuthenticationInterceptor` class manages the queuing and threading complexity of authenticating requests.
    It relies on an `Authenticator` type to handle the actual `URLRequest` authentication and `Credential` refresh.
  - [CompositeEventMonitor](/CompositeEventMonitor):
    An `EventMonitor` which can contain multiple `EventMonitor`s and calls their methods on their queues.
  - [ClosureEventMonitor](/ClosureEventMonitor):
    `EventMonitor` that allows optional closures to be set to receive events.
  - [MultipartFormData](/MultipartFormData):
    Constructs `multipart/form-data` for uploads within an HTTP or HTTPS body. There are currently two ways to encode
    multipart form data. The first way is to encode the data directly in memory. This is very efficient, but can lead
    to memory issues if the dataset is too large. The second way is designed for larger datasets and will write all the
    data to a single file on disk with all the proper boundary segmentation. The second approach MUST be used for
    larger datasets such as video content, otherwise your app may run out of memory when trying to encode the dataset.
  - [NetworkReachabilityManager](/NetworkReachabilityManager):
    The `NetworkReachabilityManager` class listens for reachability changes of hosts and addresses for both cellular and
    WiFi network interfaces.
  - [AlamofireNotifications](/AlamofireNotifications):
    `EventMonitor` that provides Alamofire's notifications.
  - [JSONParameterEncoder](/JSONParameterEncoder):
    A `ParameterEncoder` that encodes types as JSON body data.
  - [URLEncodedFormParameterEncoder](/URLEncodedFormParameterEncoder):
    A `ParameterEncoder` that encodes types as URL-encoded query strings to be set on the URL or as body data, depending
    on the `Destination` set.
  - [Request](/Request):
    `Request` is the common superclass of all Alamofire request types and provides common state, delegate, and callback
    handling.
  - [DataRequest](/DataRequest):
    `Request` subclass which handles in-memory `Data` download using `URLSessionDataTask`.
  - [DataStreamRequest](/DataStreamRequest):
    `Request` subclass which streams HTTP response `Data` through a `Handler` closure.
  - [DownloadRequest](/DownloadRequest):
    `Request` subclass which downloads `Data` to a file on disk using `URLSessionDownloadTask`.
  - [UploadRequest](/UploadRequest):
    `DataRequest` subclass which handles `Data` upload from memory, file, or stream using `URLSessionUploadTask`.
  - [Adapter](/Adapter):
    Closure-based `RequestAdapter`.
  - [Retrier](/Retrier):
    Closure-based `RequestRetrier`.
  - [Interceptor](/Interceptor):
    `RequestInterceptor` which can use multiple `RequestAdapter` and `RequestRetrier` values.
  - [DataResponseSerializer](/DataResponseSerializer):
    A `ResponseSerializer` that performs minimal response checking and returns any response `Data` as-is. By default, a
    request returning `nil` or no data is considered an error. However, if the request has an `HTTPMethod` or the
    response has an  HTTP status code valid for empty responses, then an empty `Data` value is returned.
  - [StringResponseSerializer](/StringResponseSerializer):
    A `ResponseSerializer` that decodes the response data as a `String`. By default, a request returning `nil` or no
    data is considered an error. However, if the request has an `HTTPMethod` or the response has an  HTTP status code
    valid for empty responses, then an empty `String` is returned.
  - [JSONResponseSerializer](/JSONResponseSerializer):
    A `ResponseSerializer` that decodes the response data using `JSONSerialization`. By default, a request returning
    `nil` or no data is considered an error. However, if the request has an `HTTPMethod` or the response has an
    HTTP status code valid for empty responses, then an `NSNull` value is returned.
  - [DecodableResponseSerializer](/DecodableResponseSerializer):
    A `ResponseSerializer` that decodes the response data as a generic value using any type that conforms to
    `DataDecoder`. By default, this is an instance of `JSONDecoder`. Additionally, a request returning `nil` or no data
    is considered an error. However, if the request has an `HTTPMethod` or the response has an HTTP status code valid
    for empty responses then an empty value will be returned. If the decoded type conforms to `EmptyResponse`, the
    type's `emptyValue()` will be returned. If the decoded type is `Empty`, the `.value` instance is returned. If the
    decoded type *does not* conform to `EmptyResponse` and isn't `Empty`, an error will be produced.
  - [RetryPolicy](/RetryPolicy):
    A retry policy that retries requests using an exponential backoff for allowed HTTP methods and HTTP status codes
    as well as certain types of networking errors.
  - [ConnectionLostRetryPolicy](/ConnectionLostRetryPolicy):
    A retry policy that automatically retries idempotent requests for network connection lost errors. For more
    information about retrying network connection lost errors, please refer to Apple's
    [technical document](https://developer.apple.com/library/content/qa/qa1941/_index.html).
  - [ServerTrustManager](/ServerTrustManager):
    Responsible for managing the mapping of `ServerTrustEvaluating` values to given hosts.
  - [DefaultTrustEvaluator](/DefaultTrustEvaluator):
    An evaluator which uses the default server trust evaluation while allowing you to control whether to validate the
    host provided by the challenge. Applications are encouraged to always validate the host in production environments
    to guarantee the validity of the server's certificate chain.
  - [RevocationTrustEvaluator](/RevocationTrustEvaluator):
    An evaluator which Uses the default and revoked server trust evaluations allowing you to control whether to validate
    the host provided by the challenge as well as specify the revocation flags for testing for revoked certificates.
    Apple platforms did not start testing for revoked certificates automatically until iOS 10.1, macOS 10.12 and tvOS
    10.1 which is demonstrated in our TLS tests. Applications are encouraged to always validate the host in production
    environments to guarantee the validity of the server's certificate chain.
  - [PinnedCertificatesTrustEvaluator](/PinnedCertificatesTrustEvaluator):
    Uses the pinned certificates to validate the server trust. The server trust is considered valid if one of the pinned
    certificates match one of the server certificates. By validating both the certificate chain and host, certificate
    pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate chain in production
    environments.
  - [PublicKeysTrustEvaluator](/PublicKeysTrustEvaluator):
    Uses the pinned public keys to validate the server trust. The server trust is considered valid if one of the pinned
    public keys match one of the server certificate public keys. By validating both the certificate chain and host,
    public key pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate chain in production
    environments.
  - [CompositeTrustEvaluator](/CompositeTrustEvaluator):
    Uses the provided evaluators to validate the server trust. The trust is only considered valid if all of the
    evaluators consider it valid.
  - [DisabledTrustEvaluator](/DisabledTrustEvaluator):
    Disables all evaluation which in turn will always consider any server trust as valid.
  - [Session](/Session):
    `Session` creates and manages Alamofire's `Request` types during their lifetimes. It also provides common
    functionality for all `Request`s, including queuing, interception, trust management, redirect handling, and response
    cache handling.
  - [SessionDelegate](/SessionDelegate):
    Class which implements the various `URLSessionDelegate` methods to connect various Alamofire features.
  - [URLEncodedFormEncoder](/URLEncodedFormEncoder):
    An object that encodes instances into URL-encoded query strings.
  - [AutoPurgingImageCache](/AutoPurgingImageCache):
    The `AutoPurgingImageCache` in an in-memory image cache used to store images up to a given memory capacity. When
    the memory capacity is reached, the image cache is sorted by last access date, then the oldest image is continuously
    purged until the preferred memory usage after purge is met. Each time an image is accessed through the cache, the
    internal access date of the image is updated.
  - [RequestReceipt](/RequestReceipt):
    The `RequestReceipt` is an object vended by the `ImageDownloader` when starting a download request. It can be used
    to cancel active requests running on the `ImageDownloader` session. As a general rule, image download requests
    should be cancelled using the `RequestReceipt` instead of calling `cancel` directly on the `request` itself. The
    `ImageDownloader` is optimized to handle duplicate request scenarios as well as pending versus active downloads.
  - [ImageDownloader](/ImageDownloader):
    The `ImageDownloader` class is responsible for downloading images in parallel on a prioritized queue. Incoming
    downloads are added to the front or back of the queue depending on the download prioritization. Each downloaded
    image is cached in the underlying `NSURLCache` as well as the in-memory image cache that supports image filters.
    By default, any download request with a cached image equivalent in the image cache will automatically be served the
    cached image representation. Additional advanced features include supporting multiple image filters and completion
    handlers for a single request.
  - [ImageResponseSerializer](/ImageResponseSerializer)
  - [CosmosView](/CosmosView):
    A star rating view that can be used to show customer rating for the products. On can select stars by tapping on them when updateOnTouch settings is true. An optional text can be supplied that is shown on the right side.
  - [GradientLoadingBarController](/GradientLoadingBarController):
    The `GradientLoadingBarController` mediates between the `GradientLoadingBarViewModel` and the corresponding `GradientActivityIndicatorView`.
  - [NotchGradientLoadingBarController](/NotchGradientLoadingBarController)
  - [GradientActivityIndicatorView](/GradientActivityIndicatorView)
  - [JellyAnimator](/JellyAnimator):
    A JellyAnimator is an UIViewControllerTransitionsDelegate with some extra candy.
    Basically the JellyAnimator is the main class to use when working with Jelly.
    You need to create a JellyAnimator and assign it as a transitionDelegate to your ViewController.
    After you did this you need to set the presentation style to custom so the VC asks its custom delegate.
    You can use the prepare function for that
  - [Disposable](/Disposable):
    Executes a given closure on it's deallocation.
  - [Observable](/Observable):
    A lightweight implementation of an observable sequence that you can subscribe to.
  - [PublishSubject](/PublishSubject):
    Starts empty and only emits new elements to subscribers.
  - [Variable](/Variable):
    Starts with an initial value and replays it or the latest element to new subscribers.
  - [PastelLabel](/PastelLabel)
  - [PastelView](/PastelView)
  - [ItemView](/ItemView)
  - [PinCodeInputView](/PinCodeInputView)
  - [SOTabBar](/SOTabBar)
  - [SOTabBarController](/SOTabBarController)
  - [SPAlertIconAddView](/SPAlertIconAddView)
  - [SPAlertIconBoltView](/SPAlertIconBoltView)
  - [SPAlertIconBookmarkView](/SPAlertIconBookmarkView)
  - [SPAlertIconCardView](/SPAlertIconCardView)
  - [SPAlertIconCartView](/SPAlertIconCartView)
  - [SPAlertIconDislikeView](/SPAlertIconDislikeView)
  - [SPAlertIconDocView](/SPAlertIconDocView)
  - [SPAlertIconDoneView](/SPAlertIconDoneView)
  - [SPAlertIconEjectView](/SPAlertIconEjectView)
  - [SPAlertIconErrorView](/SPAlertIconErrorView)
  - [SPAlertIconExclamationView](/SPAlertIconExclamationView)
  - [SPAlertIconFlagView](/SPAlertIconFlagView)
  - [SPAlertIconHeartView](/SPAlertIconHeartView)
  - [SPAlertIconLikeView](/SPAlertIconLikeView)
  - [SPAlertIconMessageView](/SPAlertIconMessageView)
  - [SPAlertIconMoonView](/SPAlertIconMoonView)
  - [SPAlertIconPrivacyView](/SPAlertIconPrivacyView)
  - [SPAlertIconQuestionView](/SPAlertIconQuestionView)
  - [SPAlertIconRepeatView](/SPAlertIconRepeatView)
  - [SPAlertIconRotateView](/SPAlertIconRotateView)
  - [SPAlertIconSearchView](/SPAlertIconSearchView)
  - [SPAlertIconShuffleView](/SPAlertIconShuffleView)
  - [SPAlertIconStarView](/SPAlertIconStarView)
  - [SPAlertView](/SPAlertView):
    View which presenting. You can configure `titleLabel`, `subtitleLabel` and other. For change duration use property `duration`.
    Also you can configure layout & haptic. If you use preset, all configure automatically.
  - [SPLarkSettingsCodeDraw.SystemIconPack](/SPLarkSettingsCodeDraw_SystemIconPack)
  - [SPLarkSettingsCollectionView](/SPLarkSettingsCollectionView)
  - [SPLarkSettingsController](/SPLarkSettingsController)
  - [SPLarkTransitioningDelegate](/SPLarkTransitioningDelegate)
  - [SPStorkSegue](/SPStorkSegue)
  - [SPStorkTransitioningDelegate](/SPStorkTransitioningDelegate)
  - [SPStorkCloseButton](/SPStorkCloseButton)
  - [SPStorkCloseView](/SPStorkCloseView)
  - [SPStorkIndicatorView](/SPStorkIndicatorView)
  - [SkeletonAnimationBuilder](/SkeletonAnimationBuilder)
  - [StarsKit](/StarsKit):
    Global StarsKit client
  - [StarsKitChecker](/StarsKitChecker):
    Default display checker
  - [StarsKitConfiguration](/StarsKitConfiguration):
    The Stars
  - [StarsKitContext](/StarsKitContext)
  - [StarsKitGraphicContext](/StarsKitGraphicContext):
    UI customization properties for your rating steps screens
  - [StarsPopViewController](/StarsPopViewController):
    The root view controller of the rating process
    It will use child view containement to display other steps
  - [StarsView](/StarsView)
  - [FeedbackViewController](/FeedbackViewController)
  - [StarsRateViewController](/StarsRateViewController)
  - [StepViewController](/StepViewController):
    Main default implementation of a step controller.
  - [StoreViewController](/StoreViewController):
    When the user like the app, it will be redirect to this screen
  - [ViewAnimatorConfig](/ViewAnimatorConfig):
    Configuration class for the default values used in animations.
    All it's values are used when creating 'random' animations as well.
  - [AuthenticationInterceptor](/AuthenticationInterceptor):
    The `AuthenticationInterceptor` class manages the queuing and threading complexity of authenticating requests.
    It relies on an `Authenticator` type to handle the actual `URLRequest` authentication and `Credential` refresh.
  - [CompositeEventMonitor](/CompositeEventMonitor):
    An `EventMonitor` which can contain multiple `EventMonitor`s and calls their methods on their queues.
  - [ClosureEventMonitor](/ClosureEventMonitor):
    `EventMonitor` that allows optional closures to be set to receive events.
  - [MultipartFormData](/MultipartFormData):
    Constructs `multipart/form-data` for uploads within an HTTP or HTTPS body. There are currently two ways to encode
    multipart form data. The first way is to encode the data directly in memory. This is very efficient, but can lead
    to memory issues if the dataset is too large. The second way is designed for larger datasets and will write all the
    data to a single file on disk with all the proper boundary segmentation. The second approach MUST be used for
    larger datasets such as video content, otherwise your app may run out of memory when trying to encode the dataset.
  - [NetworkReachabilityManager](/NetworkReachabilityManager):
    The `NetworkReachabilityManager` class listens for reachability changes of hosts and addresses for both cellular and
    WiFi network interfaces.
  - [AlamofireNotifications](/AlamofireNotifications):
    `EventMonitor` that provides Alamofire's notifications.
  - [JSONParameterEncoder](/JSONParameterEncoder):
    A `ParameterEncoder` that encodes types as JSON body data.
  - [URLEncodedFormParameterEncoder](/URLEncodedFormParameterEncoder):
    A `ParameterEncoder` that encodes types as URL-encoded query strings to be set on the URL or as body data, depending
    on the `Destination` set.
  - [Request](/Request):
    `Request` is the common superclass of all Alamofire request types and provides common state, delegate, and callback
    handling.
  - [DataRequest](/DataRequest):
    `Request` subclass which handles in-memory `Data` download using `URLSessionDataTask`.
  - [DataStreamRequest](/DataStreamRequest):
    `Request` subclass which streams HTTP response `Data` through a `Handler` closure.
  - [DownloadRequest](/DownloadRequest):
    `Request` subclass which downloads `Data` to a file on disk using `URLSessionDownloadTask`.
  - [UploadRequest](/UploadRequest):
    `DataRequest` subclass which handles `Data` upload from memory, file, or stream using `URLSessionUploadTask`.
  - [Adapter](/Adapter):
    Closure-based `RequestAdapter`.
  - [Retrier](/Retrier):
    Closure-based `RequestRetrier`.
  - [Interceptor](/Interceptor):
    `RequestInterceptor` which can use multiple `RequestAdapter` and `RequestRetrier` values.
  - [DataResponseSerializer](/DataResponseSerializer):
    A `ResponseSerializer` that performs minimal response checking and returns any response `Data` as-is. By default, a
    request returning `nil` or no data is considered an error. However, if the request has an `HTTPMethod` or the
    response has an  HTTP status code valid for empty responses, then an empty `Data` value is returned.
  - [StringResponseSerializer](/StringResponseSerializer):
    A `ResponseSerializer` that decodes the response data as a `String`. By default, a request returning `nil` or no
    data is considered an error. However, if the request has an `HTTPMethod` or the response has an  HTTP status code
    valid for empty responses, then an empty `String` is returned.
  - [JSONResponseSerializer](/JSONResponseSerializer):
    A `ResponseSerializer` that decodes the response data using `JSONSerialization`. By default, a request returning
    `nil` or no data is considered an error. However, if the request has an `HTTPMethod` or the response has an
    HTTP status code valid for empty responses, then an `NSNull` value is returned.
  - [DecodableResponseSerializer](/DecodableResponseSerializer):
    A `ResponseSerializer` that decodes the response data as a generic value using any type that conforms to
    `DataDecoder`. By default, this is an instance of `JSONDecoder`. Additionally, a request returning `nil` or no data
    is considered an error. However, if the request has an `HTTPMethod` or the response has an HTTP status code valid
    for empty responses then an empty value will be returned. If the decoded type conforms to `EmptyResponse`, the
    type's `emptyValue()` will be returned. If the decoded type is `Empty`, the `.value` instance is returned. If the
    decoded type *does not* conform to `EmptyResponse` and isn't `Empty`, an error will be produced.
  - [RetryPolicy](/RetryPolicy):
    A retry policy that retries requests using an exponential backoff for allowed HTTP methods and HTTP status codes
    as well as certain types of networking errors.
  - [ConnectionLostRetryPolicy](/ConnectionLostRetryPolicy):
    A retry policy that automatically retries idempotent requests for network connection lost errors. For more
    information about retrying network connection lost errors, please refer to Apple's
    [technical document](https://developer.apple.com/library/content/qa/qa1941/_index.html).
  - [ServerTrustManager](/ServerTrustManager):
    Responsible for managing the mapping of `ServerTrustEvaluating` values to given hosts.
  - [DefaultTrustEvaluator](/DefaultTrustEvaluator):
    An evaluator which uses the default server trust evaluation while allowing you to control whether to validate the
    host provided by the challenge. Applications are encouraged to always validate the host in production environments
    to guarantee the validity of the server's certificate chain.
  - [RevocationTrustEvaluator](/RevocationTrustEvaluator):
    An evaluator which Uses the default and revoked server trust evaluations allowing you to control whether to validate
    the host provided by the challenge as well as specify the revocation flags for testing for revoked certificates.
    Apple platforms did not start testing for revoked certificates automatically until iOS 10.1, macOS 10.12 and tvOS
    10.1 which is demonstrated in our TLS tests. Applications are encouraged to always validate the host in production
    environments to guarantee the validity of the server's certificate chain.
  - [PinnedCertificatesTrustEvaluator](/PinnedCertificatesTrustEvaluator):
    Uses the pinned certificates to validate the server trust. The server trust is considered valid if one of the pinned
    certificates match one of the server certificates. By validating both the certificate chain and host, certificate
    pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate chain in production
    environments.
  - [PublicKeysTrustEvaluator](/PublicKeysTrustEvaluator):
    Uses the pinned public keys to validate the server trust. The server trust is considered valid if one of the pinned
    public keys match one of the server certificate public keys. By validating both the certificate chain and host,
    public key pinning provides a very secure form of server trust validation mitigating most, if not all, MITM attacks.
    Applications are encouraged to always validate the host and require a valid certificate chain in production
    environments.
  - [CompositeTrustEvaluator](/CompositeTrustEvaluator):
    Uses the provided evaluators to validate the server trust. The trust is only considered valid if all of the
    evaluators consider it valid.
  - [DisabledTrustEvaluator](/DisabledTrustEvaluator):
    Disables all evaluation which in turn will always consider any server trust as valid.
  - [Session](/Session):
    `Session` creates and manages Alamofire's `Request` types during their lifetimes. It also provides common
    functionality for all `Request`s, including queuing, interception, trust management, redirect handling, and response
    cache handling.
  - [SessionDelegate](/SessionDelegate):
    Class which implements the various `URLSessionDelegate` methods to connect various Alamofire features.
  - [URLEncodedFormEncoder](/URLEncodedFormEncoder):
    An object that encodes instances into URL-encoded query strings.
  - [BLTNItemManager](/BLTNItemManager)
  - [BulletinManager](/BulletinManager)
  - [ActionBulletinItem](/ActionBulletinItem)
  - [PageBulletinItem](/PageBulletinItem)
  - [BulletinInterfaceFactory](/BulletinInterfaceFactory)
  - [BulletinPadding](/BulletinPadding)
  - [BulletinBackgroundViewStyle](/BulletinBackgroundViewStyle)
  - [HighlightButtonWrapper](/HighlightButtonWrapper)
  - [BLTNBackgroundViewStyle](/BLTNBackgroundViewStyle)
  - [BLTNContainerView](/BLTNContainerView)
  - [BLTNHighlightButtonWrapper](/BLTNHighlightButtonWrapper)
  - [BLTNInterfaceBuilder](/BLTNInterfaceBuilder)
  - [BLTNItemAppearance](/BLTNItemAppearance)
  - [BLTNSpacing](/BLTNSpacing)
  - [BLTNTitleLabelContainer](/BLTNTitleLabelContainer)
  - [BLTNActionItem](/BLTNActionItem)
  - [BLTNItem](/BLTNItem)
  - [BLTNPageItem](/BLTNPageItem)
  - [AnimationChain](/AnimationChain)
  - [AnimationPhase](/AnimationPhase)
  - [SPAlertIconDoneView](/SPAlertIconDoneView)
  - [SPAlertIconErrorView](/SPAlertIconErrorView)
  - [SPAlertIconHeartView](/SPAlertIconHeartView)
  - [SPAlertLayout](/SPAlertLayout):
    SPAlert: Layout model for alert view.
  - [SPAlertView](/SPAlertView):
    SPAlert: Main view. Can be customisable if need.
  - [AsyncOperation](/AsyncOperation)
  - [AsyncOperation](/AsyncOperation)
  - [AsyncOperation](/AsyncOperation)
  - [AsyncOperation](/AsyncOperation)
  - [KernelCommunicator.BytesReference](/KernelCommunicator_BytesReference):
    A reference to memory containing bytes.
  - [Benchmark](/Benchmark):
    A logger that runs benchmarks and stores the results.
  - [Benchmark.Duration](/Benchmark_Duration):
    A duration metric in milliseconds.
  - [Benchmark.ExternalTopicsHash](/Benchmark_ExternalTopicsHash):
    A hash metric produced off the externally resolved links and symbols.
  - [Benchmark.OutputSize](/Benchmark_OutputSize):
    A disk size metric for a given directory.
  - [Benchmark.PeakMemory](/Benchmark_PeakMemory):
    A peak memory footprint metric for the current process.
  - [Benchmark.TopicAnchorHash](/Benchmark_TopicAnchorHash):
    A anchor sections hash metric produced off the given documentation context.
  - [Benchmark.TopicGraphHash](/Benchmark_TopicGraphHash):
    A hash metric produced off the given documentation context.
  - [DocumentationContextConverter](/DocumentationContextConverter):
    A converter from documentation nodes to render nodes.
  - [RenderNodeTransformer](/RenderNodeTransformer):
    An object that modifies a render node by applying transformations to it.
  - [DocumentationServer](/DocumentationServer):
    A server that provides documentation-related services.
  - [AvailabilityIndex](/AvailabilityIndex):
    The `AvailabilityIndex` class stores the information about availability for SDKs of symbols.
    The information if a symbol is available for a given platform and version is stored inside this index.
  - [FileSystemRenderNodeProvider](/FileSystemRenderNodeProvider):
    This class provides a simple way to transform a `FileSystemProvider` into a `RenderNodeProvider` to feed an index builder.
    The data from the disk is fetched and processed in an efficient way to build a navigator index.
  - [NavigatorIndex](/NavigatorIndex):
    A `NavigatorIndex` contains all the necessary information to display the data inside a navigator.
    The data ranges from the tree to the necessary pieces of information to filter the content and perform actions in a fast way.
    A navigator index is created per bundle and needs a bundle identifier to correctly work. Anonymous bundles are allowed, but they limit
    the functionalities of the index.
  - [NavigatorIndex.Builder](/NavigatorIndex_Builder):
    A `Builder` is a utility class to build a navigator index.
  - [NavigatorItem](/NavigatorItem):
    The `NavigatorItem` class describes a single entry in a navigator, providing the necessary information to display and process (such as filtering) a single item.
  - [NavigatorTree](/NavigatorTree):
    A `NavigatorTree` is a class holding information about a tree of data that can be navigated using a tree navigator.
  - [NavigatorTree.Node](/NavigatorTree_Node):
    A representation of a node in the tree wrapping a `NavigatorItem`.
    The node holds the reference to children and parent for fast navigation.
  - [DiagnosticConsoleWriter](/DiagnosticConsoleWriter):
    Writes diagnostic messages to a text output stream.
  - [DiagnosticEngine](/DiagnosticEngine):
    A type that collects and dispatches diagnostics during compilation.
  - [DocumentationContext](/DocumentationContext):
    The documentation context manages the in-memory model for the built documentation.
  - [OutOfProcessReferenceResolver](/OutOfProcessReferenceResolver):
    A reference resolver that launches and interactively communicates with another process or service to resolve links.
  - [DocumentationWorkspace](/DocumentationWorkspace):
    The documentation workspace provides a unified interface for accessing serialized documentation bundles and their files, from a variety of sources.
  - [DocumentationContentRenderer](/DocumentationContentRenderer):
    A collection of functions that render a piece of documentation content.
  - [VariantOverrides](/VariantOverrides):
    Defines the overrides for variants of documentation content.
  - [Article](/Article):
    The in-memory representation of an article.
  - [Comment](/Comment):
    A general purpose comment directive. All contents inside are stripped from
  - [ContentAndMedia](/ContentAndMedia):
    A piece of media, such as an image or video, with an attached description.
  - [Intro](/Intro):
    An introductory section for instructional pages.
  - [MarkupContainer](/MarkupContainer):
    A general purpose `Markup` semantic container.
  - [ImageMedia](/ImageMedia):
    A block filled with an image.
  - [Media](/Media):
    A base class for a piece of media, such as an image or video.
  - [VideoMedia](/VideoMedia):
    A block filled with a video.
  - [DocumentationExtension](/DocumentationExtension):
    A directive that controls how the documentation-extension file merges with or overrides the in-source documentation.
  - [Metadata](/Metadata):
    A directive that contains various metadata about a page.
  - [TechnologyRoot](/TechnologyRoot):
    A directive to set this page as a documentation root-level node.
  - [Redirect](/Redirect):
    A directive that specifies an additional URL for the page where the directive appears.
  - [Semantic](/Semantic):
    A semantic object is an abstract element with children which also are semantic objects.
  - [DeprecationSummary](/DeprecationSummary):
    A directive to add custom deprecation summary to an already deprecated symbol.
  - [Symbol](/Symbol):
    A programming symbol semantic type.
  - [Resources](/Resources):
    Additional resources that help users learn a technology.
  - [Tile](/Tile):
    A semantic model for a view that links to a content type that you specify.
  - [Technology](/Technology):
    An overview of the educational materials under a specific technology or technology area.
  - [Chapter](/Chapter):
    A chapter containing `Tutorial`s to complete.
  - [TutorialReference](/TutorialReference):
    A reference to a `Tutorial` or `TutorialArticle` by `URL`.
  - [Volume](/Volume):
    A grouping of chapters within a larger collection of tutorials.
  - [Assessments](/Assessments):
    A collection of questions about the concepts the documentation presents.
  - [Choice](/Choice):
    One of possibly many choices in a `MultipleChoice` question.
  - [Justification](/Justification):
    A short justification as to whether a `Choice` is correct for a question.
  - [MultipleChoice](/MultipleChoice):
    A multiple-choice question.
  - [Code](/Code):
    A code file to display alongside a `Step`.
  - [Step](/Step):
    An instructional step to complete as a part of a `TutorialSection`. `DirectiveConvertible`
  - [Steps](/Steps):
    Wraps a series of `Step`s in a tutorial task section.
  - [TutorialSection](/TutorialSection):
    A section containing steps to complete to finish a `Tutorial`.
  - [Tutorial](/Tutorial):
    A tutorial to complete in order to gain knowledge of a `Technology`.
  - [XcodeRequirement](/XcodeRequirement):
    An informal Xcode requirement for completing an instructional `Tutorial`.
  - [Stack](/Stack):
    A semantic model for a view that arranges its children in a row.
  - [TutorialArticle](/TutorialArticle):
    An article alongside tutorial content, with the following structure:
  - [DocumentationSchemeHandler](/DocumentationSchemeHandler)
  - [FileServer](/FileServer):
    FileServer is a struct simulating a web server behavior to serve files.
    It is useful to interface a custom schema with `WKWebView` via `WKURLSchemeHandler` or
    `WebView` via a custom `URLProtocol`.
  - [FileSystemServerProvider](/FileSystemServerProvider)
  - [MemoryFileServerProvider](/MemoryFileServerProvider)
  - [LogHandle.LogStorage](/LogHandle_LogStorage):
    A by-reference string storage.
  - [RenderNodeDataExtractor](/RenderNodeDataExtractor):
    Extracts metadata from a render node.
  - [Synchronized](/Synchronized):
    A wrapper type that ensures a synchronous access to a value.
  - [PreviewAction](/PreviewAction):
    An action that monitors a documentation bundle for changes and runs a live web-preview.
  - [Throttle](/Throttle):
    A task scheduler that throttles execution within a given time interval.
  - [DiffAvailabilityTests](/DiffAvailabilityTests)
  - [ExternalLinkTitleTests](/ExternalLinkTitleTests)
  - [InlineContentPlainTextTests](/InlineContentPlainTextTests)
  - [Symbol](/Symbol)
  - [Node](/Node)
  - [BullsEyeGame](/BullsEyeGame)
  - [AFError](/AFError):
    `AFError` is the error type returned by Alamofire. It encompasses a few different types of errors, each with
    their own associated reasons.
  - [AFError.ParameterEncodingFailureReason](/AFError_ParameterEncodingFailureReason):
    The underlying reason the parameter encoding error occurred.
  - [AFError.MultipartEncodingFailureReason](/AFError_MultipartEncodingFailureReason):
    The underlying reason the multipart encoding error occurred.
  - [AFError.ResponseValidationFailureReason](/AFError_ResponseValidationFailureReason):
    The underlying reason the response validation error occurred.
  - [AFError.ResponseSerializationFailureReason](/AFError_ResponseSerializationFailureReason):
    The underlying reason the response serialization error occurred.
  - [NetworkReachabilityManager.NetworkReachabilityStatus](/NetworkReachabilityManager_NetworkReachabilityStatus):
    Defines the various states of network reachability.
  - [NetworkReachabilityManager.ConnectionType](/NetworkReachabilityManager_ConnectionType):
    Defines the various connection types detected by reachability flags.
  - [HTTPMethod](/HTTPMethod):
    HTTP method definitions.
  - [URLEncoding.Destination](/URLEncoding_Destination):
    Defines whether the url-encoded query string is applied to the existing query string or HTTP body of the
    resulting URL request.
  - [Result](/Result):
    Used to represent whether a request was successful or encountered an error.
  - [ServerTrustPolicy](/ServerTrustPolicy):
    The `ServerTrustPolicy` evaluates the server trust generally provided by an `NSURLAuthenticationChallenge` when
    connecting to a server over a secure HTTPS connection. The policy configuration then evaluates the server trust
    with a given set of criteria to determine whether the server trust is valid and the connection should be made.
  - [SessionManager.MultipartFormDataEncodingResult](/SessionManager_MultipartFormDataEncodingResult):
    Defines whether the `MultipartFormData` encoding was successful and contains result of the encoding as
    associated values.
  - [Request.ValidationResult](/Request_ValidationResult):
    Used to represent whether validation was successful or encountered an error resulting in a failure.
  - [DecodeError](/DecodeError):
    Possible decoding failure reasons.
  - [Decoded](/Decoded):
    The result of a failable decoding operation.
  - [JSON](/JSON):
    A type safe representation of JSON.
  - [ActionError](/ActionError):
    The type of error that can occur from Action.apply, where `Error` is the
    type of error that can be generated by the specific Action instance.
  - [ActionType](/ActionType)
  - [SignalType](/SignalType)
  - [SignalProducerType](/SignalProducerType)
  - [PropertyType](/PropertyType)
  - [MutablePropertyType](/MutablePropertyType)
  - [ObserverType](/ObserverType)
  - [SchedulerType](/SchedulerType)
  - [DateSchedulerType](/DateSchedulerType)
  - [OptionalType](/OptionalType)
  - [EventLoggerType](/EventLoggerType)
  - [EventType](/EventType)
  - [Event](/Event):
    Represents a signal event.
  - [LoggingEvent](/LoggingEvent):
    A namespace for logging event types.
  - [LoggingEvent.Signal](/LoggingEvent_Signal)
  - [LoggingEvent.SignalProducer](/LoggingEvent_SignalProducer)
  - [FlattenStrategy](/FlattenStrategy):
    Describes how multiple producers should be joined together.
  - [Result](/Result):
    An enum representing either a failure with an explanatory error, or a success with a result value.
  - [NoError](/NoError):
    An “error” that is impossible to construct.
  - [AFError](/AFError):
    `AFError` is the error type returned by Alamofire. It encompasses a few different types of errors, each with
    their own associated reasons.
  - [AFError.ParameterEncodingFailureReason](/AFError_ParameterEncodingFailureReason):
    The underlying reason the parameter encoding error occurred.
  - [AFError.MultipartEncodingFailureReason](/AFError_MultipartEncodingFailureReason):
    The underlying reason the multipart encoding error occurred.
  - [AFError.ResponseValidationFailureReason](/AFError_ResponseValidationFailureReason):
    The underlying reason the response validation error occurred.
  - [AFError.ResponseSerializationFailureReason](/AFError_ResponseSerializationFailureReason):
    The underlying reason the response serialization error occurred.
  - [NetworkReachabilityManager.NetworkReachabilityStatus](/NetworkReachabilityManager_NetworkReachabilityStatus):
    Defines the various states of network reachability.
  - [NetworkReachabilityManager.ConnectionType](/NetworkReachabilityManager_ConnectionType):
    Defines the various connection types detected by reachability flags.
  - [HTTPMethod](/HTTPMethod):
    HTTP method definitions.
  - [URLEncoding.Destination](/URLEncoding_Destination):
    Defines whether the url-encoded query string is applied to the existing query string or HTTP body of the
    resulting URL request.
  - [URLEncoding.ArrayEncoding](/URLEncoding_ArrayEncoding):
    Configures how `Array` parameters are encoded.
  - [URLEncoding.BoolEncoding](/URLEncoding_BoolEncoding):
    Configures how `Bool` parameters are encoded.
  - [Result](/Result):
    Used to represent whether a request was successful or encountered an error.
  - [ServerTrustPolicy](/ServerTrustPolicy):
    The `ServerTrustPolicy` evaluates the server trust generally provided by an `NSURLAuthenticationChallenge` when
    connecting to a server over a secure HTTPS connection. The policy configuration then evaluates the server trust
    with a given set of criteria to determine whether the server trust is valid and the connection should be made.
  - [SessionManager.MultipartFormDataEncodingResult](/SessionManager_MultipartFormDataEncodingResult):
    Defines whether the `MultipartFormData` encoding was successful and contains result of the encoding as
    associated values.
  - [Request.ValidationResult](/Request_ValidationResult):
    Used to represent whether validation was successful or encountered an error resulting in a failure.
  - [BLTNStatusBarAppearance](/BLTNStatusBarAppearance)
  - [BLTNViewPosition](/BLTNViewPosition)
  - [ChartEasingOption](/ChartEasingOption)
  - [ChartViewBase.ImageFormat](/ChartViewBase_ImageFormat)
  - [CombinedChartView.DrawOrder](/CombinedChartView_DrawOrder):
    enum that allows to specify the order in which the different data objects for the combined-chart are drawn
  - [ChartLimitLine.LabelPosition](/ChartLimitLine_LabelPosition)
  - [Legend.Form](/Legend_Form)
  - [Legend.HorizontalAlignment](/Legend_HorizontalAlignment)
  - [Legend.VerticalAlignment](/Legend_VerticalAlignment)
  - [Legend.Orientation](/Legend_Orientation)
  - [Legend.Direction](/Legend_Direction)
  - [XAxis.LabelPosition](/XAxis_LabelPosition)
  - [YAxis.LabelPosition](/YAxis_LabelPosition)
  - [YAxis.AxisDependency](/YAxis_AxisDependency):
    Enum that specifies the axis a DataSet should be plotted against, either Left or Right.
  - [ChartDataSetRounding](/ChartDataSetRounding):
    Determines how to round DataSet index values for `ChartDataSet.entryIndex(x, rounding)` when an exact x-value is not found.
  - [LineChartDataSet.Mode](/LineChartDataSet_Mode)
  - [PieChartDataSet.ValuePosition](/PieChartDataSet_ValuePosition)
  - [ScatterChartDataSet.Shape](/ScatterChartDataSet_Shape)
  - [FillType](/FillType)
  - [PastelGradient](/PastelGradient)
  - [PastelPoint](/PastelPoint)
  - [SPAlertHaptic](/SPAlertHaptic):
    Vibro assest. Call `impact` for run.
  - [SPAlertPreset](/SPAlertPreset):
    Defaults values, icons and vibro for ready-using presets.
  - [SPAlert](/SPAlert):
    Base class with fast presenting.
  - [SPAlertIconBoltView.BoltDraw.ResizingBehavior](/SPAlertIconBoltView_BoltDraw_ResizingBehavior)
  - [SPAlertIconBookmarkView.BookmarkDraw.ResizingBehavior](/SPAlertIconBookmarkView_BookmarkDraw_ResizingBehavior)
  - [SPAlertIconCardView.CardDraw.ResizingBehavior](/SPAlertIconCardView_CardDraw_ResizingBehavior)
  - [SPAlertIconCartView.CartDraw.ResizingBehavior](/SPAlertIconCartView_CartDraw_ResizingBehavior)
  - [SPAlertIconDislikeView.DislikeDraw.ResizingBehavior](/SPAlertIconDislikeView_DislikeDraw_ResizingBehavior)
  - [SPAlertIconDocView.DocDraw.ResizingBehavior](/SPAlertIconDocView_DocDraw_ResizingBehavior)
  - [SPAlertIconEjectView.EjectDraw.ResizingBehavior](/SPAlertIconEjectView_EjectDraw_ResizingBehavior)
  - [SPAlertIconExclamationView.ExclamationDraw.ResizingBehavior](/SPAlertIconExclamationView_ExclamationDraw_ResizingBehavior)
  - [SPAlertIconFlagView.ShuffleDraw.ResizingBehavior](/SPAlertIconFlagView_ShuffleDraw_ResizingBehavior)
  - [SPAlertIconHeartView.HeartDraw.ResizingBehavior](/SPAlertIconHeartView_HeartDraw_ResizingBehavior)
  - [SPAlertIconLikeView.LikeDraw.ResizingBehavior](/SPAlertIconLikeView_LikeDraw_ResizingBehavior)
  - [SPAlertIconMessageView.MessageDraw.ResizingBehavior](/SPAlertIconMessageView_MessageDraw_ResizingBehavior)
  - [SPAlertIconMoonView.MoonDraw.ResizingBehavior](/SPAlertIconMoonView_MoonDraw_ResizingBehavior)
  - [SPAlertIconPrivacyView.PrivacyDraw.ResizingBehavior](/SPAlertIconPrivacyView_PrivacyDraw_ResizingBehavior)
  - [SPAlertIconQuestionView.QuestionDraw.ResizingBehavior](/SPAlertIconQuestionView_QuestionDraw_ResizingBehavior)
  - [SPAlertIconRepeatView.ShuffleDraw.ResizingBehavior](/SPAlertIconRepeatView_ShuffleDraw_ResizingBehavior)
  - [SPAlertIconRotateView.RotateDraw.ResizingBehavior](/SPAlertIconRotateView_RotateDraw_ResizingBehavior)
  - [SPAlertIconSearchView.SearchDraw.ResizingBehavior](/SPAlertIconSearchView_SearchDraw_ResizingBehavior)
  - [SPAlertIconShuffleView.RepeatDraw.ResizingBehavior](/SPAlertIconShuffleView_RepeatDraw_ResizingBehavior)
  - [SPAlertIconStarView.StarDraw.ResizingBehavior](/SPAlertIconStarView_StarDraw_ResizingBehavior)
  - [SkeletonAppearance](/SkeletonAppearance)
  - [GradientDirection](/GradientDirection)
  - [SkeletonType](/SkeletonType)
  - [SkeletonTransitionStyle](/SkeletonTransitionStyle)
  - [BorderStyle](/BorderStyle)
  - [CircularScrolling](/CircularScrolling)
  - [GridStyle](/GridStyle)
  - [SlideDirection](/SlideDirection):
    Direction that a slide animation should use.
  - [Angle](/Angle):
    How much the angle of an animation should change. This value changes based off of which type of `StockAnimation` is used.
  - [Scale](/Scale):
    How much the scale of an animation should change. This value changes based off of which type of `StockAnimation` is used.
  - [Distance](/Distance):
    How much the distance of a view animation should change. This value changes based off of which type of `StockAnimation` is used.
  - [StockAnimation](/StockAnimation):
    A few stock animations that you can use with Spruce. We want to make it really easy for you to include animations so we tried to include the basics. Use these stock animations to `slide`, `fade`, `spin`, `expand`, or `contract` your views.
  - [Corner](/Corner):
    A representation of the corners of the view
  - [Direction](/Direction):
    A representation of a linear direction.
  - [Position](/Position):
    A position on the screen. Use this to define specific locations on the screen where the animation should start
  - [Weight](/Weight):
    Represents the weighted values for computation
  - [AnimationType](/AnimationType):
    AnimationType available to perform/
  - [Direction](/Direction):
    Direction of the animation used in AnimationType.from.
  - [BLTNStatusBarAppearance](/BLTNStatusBarAppearance)
  - [BLTNViewPosition](/BLTNViewPosition)
  - [PastelGradient](/PastelGradient)
  - [PastelPoint](/PastelPoint)
  - [SPAlertHaptic](/SPAlertHaptic):
    Vibro assest. Call `impact` for run.
  - [SPAlertPreset](/SPAlertPreset):
    Defaults values, icons and vibro for ready-using presets.
  - [SPAlert](/SPAlert):
    Base class with fast presenting.
  - [SPAlertIconBoltView.BoltDraw.ResizingBehavior](/SPAlertIconBoltView_BoltDraw_ResizingBehavior)
  - [SPAlertIconBookmarkView.BookmarkDraw.ResizingBehavior](/SPAlertIconBookmarkView_BookmarkDraw_ResizingBehavior)
  - [SPAlertIconCardView.CardDraw.ResizingBehavior](/SPAlertIconCardView_CardDraw_ResizingBehavior)
  - [SPAlertIconCartView.CartDraw.ResizingBehavior](/SPAlertIconCartView_CartDraw_ResizingBehavior)
  - [SPAlertIconDislikeView.DislikeDraw.ResizingBehavior](/SPAlertIconDislikeView_DislikeDraw_ResizingBehavior)
  - [SPAlertIconDocView.DocDraw.ResizingBehavior](/SPAlertIconDocView_DocDraw_ResizingBehavior)
  - [SPAlertIconEjectView.EjectDraw.ResizingBehavior](/SPAlertIconEjectView_EjectDraw_ResizingBehavior)
  - [SPAlertIconExclamationView.ExclamationDraw.ResizingBehavior](/SPAlertIconExclamationView_ExclamationDraw_ResizingBehavior)
  - [SPAlertIconFlagView.ShuffleDraw.ResizingBehavior](/SPAlertIconFlagView_ShuffleDraw_ResizingBehavior)
  - [SPAlertIconHeartView.HeartDraw.ResizingBehavior](/SPAlertIconHeartView_HeartDraw_ResizingBehavior)
  - [SPAlertIconLikeView.LikeDraw.ResizingBehavior](/SPAlertIconLikeView_LikeDraw_ResizingBehavior)
  - [SPAlertIconMessageView.MessageDraw.ResizingBehavior](/SPAlertIconMessageView_MessageDraw_ResizingBehavior)
  - [SPAlertIconMoonView.MoonDraw.ResizingBehavior](/SPAlertIconMoonView_MoonDraw_ResizingBehavior)
  - [SPAlertIconPrivacyView.PrivacyDraw.ResizingBehavior](/SPAlertIconPrivacyView_PrivacyDraw_ResizingBehavior)
  - [SPAlertIconQuestionView.QuestionDraw.ResizingBehavior](/SPAlertIconQuestionView_QuestionDraw_ResizingBehavior)
  - [SPAlertIconRepeatView.ShuffleDraw.ResizingBehavior](/SPAlertIconRepeatView_ShuffleDraw_ResizingBehavior)
  - [SPAlertIconRotateView.RotateDraw.ResizingBehavior](/SPAlertIconRotateView_RotateDraw_ResizingBehavior)
  - [SPAlertIconSearchView.SearchDraw.ResizingBehavior](/SPAlertIconSearchView_SearchDraw_ResizingBehavior)
  - [SPAlertIconShuffleView.RepeatDraw.ResizingBehavior](/SPAlertIconShuffleView_RepeatDraw_ResizingBehavior)
  - [SPAlertIconStarView.StarDraw.ResizingBehavior](/SPAlertIconStarView_StarDraw_ResizingBehavior)
  - [AFError](/AFError):
    `AFError` is the error type returned by Alamofire. It encompasses a few different types of errors, each with
    their own associated reasons.
  - [AFError.ParameterEncodingFailureReason](/AFError_ParameterEncodingFailureReason):
    The underlying reason the parameter encoding error occurred.
  - [AFError.MultipartEncodingFailureReason](/AFError_MultipartEncodingFailureReason):
    The underlying reason the multipart encoding error occurred.
  - [AFError.ResponseValidationFailureReason](/AFError_ResponseValidationFailureReason):
    The underlying reason the response validation error occurred.
  - [AFError.ResponseSerializationFailureReason](/AFError_ResponseSerializationFailureReason):
    The underlying reason the response serialization error occurred.
  - [NetworkReachabilityManager.NetworkReachabilityStatus](/NetworkReachabilityManager_NetworkReachabilityStatus):
    Defines the various states of network reachability.
  - [NetworkReachabilityManager.ConnectionType](/NetworkReachabilityManager_ConnectionType):
    Defines the various connection types detected by reachability flags.
  - [HTTPMethod](/HTTPMethod):
    HTTP method definitions.
  - [URLEncoding.Destination](/URLEncoding_Destination):
    Defines whether the url-encoded query string is applied to the existing query string or HTTP body of the
    resulting URL request.
  - [URLEncoding.ArrayEncoding](/URLEncoding_ArrayEncoding):
    Configures how `Array` parameters are encoded.
  - [URLEncoding.BoolEncoding](/URLEncoding_BoolEncoding):
    Configures how `Bool` parameters are encoded.
  - [Result](/Result):
    Used to represent whether a request was successful or encountered an error.
  - [ServerTrustPolicy](/ServerTrustPolicy):
    The `ServerTrustPolicy` evaluates the server trust generally provided by an `NSURLAuthenticationChallenge` when
    connecting to a server over a secure HTTPS connection. The policy configuration then evaluates the server trust
    with a given set of criteria to determine whether the server trust is valid and the connection should be made.
  - [SessionManager.MultipartFormDataEncodingResult](/SessionManager_MultipartFormDataEncodingResult):
    Defines whether the `MultipartFormData` encoding was successful and contains result of the encoding as
    associated values.
  - [Request.ValidationResult](/Request_ValidationResult):
    Used to represent whether validation was successful or encountered an error resulting in a failure.
  - [Relation](/Relation)
  - [Interval](/Interval)
  - [Anchor](/Anchor)
  - [Component](/Component)
  - [TimeUnits](/TimeUnits)
  - [PastelGradient](/PastelGradient)
  - [PastelPoint](/PastelPoint)
  - [QRCode.ErrorCorrection](/QRCode_ErrorCorrection):
    The level of error correction.
  - [HeartStyleKit.ResizingBehavior](/HeartStyleKit_ResizingBehavior)
  - [SPAlert](/SPAlert)
  - [SPAlertHaptic](/SPAlertHaptic)
  - [SPAlertPreset](/SPAlertPreset)
  - [IconType](/IconType):
    Identify the type of icon.
  - [Side](/Side)
  - [Kind](/Kind)
  - [Operator](/Operator)
  - [TypeSymbol](/TypeSymbol)
  - [SegmentType](/SegmentType)
  - [AFError](/AFError):
    `AFError` is the error type returned by Alamofire. It encompasses a few different types of errors, each with
    their own associated reasons.
  - [AFError.MultipartEncodingFailureReason](/AFError_MultipartEncodingFailureReason):
    The underlying reason the `.multipartEncodingFailed` error occurred.
  - [AFError.ParameterEncodingFailureReason](/AFError_ParameterEncodingFailureReason):
    The underlying reason the `.parameterEncodingFailed` error occurred.
  - [AFError.ParameterEncoderFailureReason](/AFError_ParameterEncoderFailureReason):
    The underlying reason the `.parameterEncoderFailed` error occurred.
  - [AFError.ParameterEncoderFailureReason.RequiredComponent](/AFError_ParameterEncoderFailureReason_RequiredComponent):
    Possible missing components.
  - [AFError.ResponseValidationFailureReason](/AFError_ResponseValidationFailureReason):
    The underlying reason the `.responseValidationFailed` error occurred.
  - [AFError.ResponseSerializationFailureReason](/AFError_ResponseSerializationFailureReason):
    The underlying reason the response serialization error occurred.
  - [AFError.ServerTrustFailureReason](/AFError_ServerTrustFailureReason):
    Underlying reason a server trust evaluation error occurred.
  - [AFError.URLRequestValidationFailureReason](/AFError_URLRequestValidationFailureReason):
    The underlying reason the `.urlRequestValidationFailed`
  - [AuthenticationError](/AuthenticationError):
    Represents various authentication failures that occur when using the `AuthenticationInterceptor`. All errors are
    still vended from Alamofire as `AFError` types. The `AuthenticationError` instances will be embedded within
    `AFError` `.requestAdaptationFailed` or `.requestRetryFailed` cases.
  - [ResponseCacher.Behavior](/ResponseCacher_Behavior):
    Defines the behavior of the `ResponseCacher` type.
  - [NetworkReachabilityManager.NetworkReachabilityStatus](/NetworkReachabilityManager_NetworkReachabilityStatus):
    Defines the various states of network reachability.
  - [NetworkReachabilityManager.NetworkReachabilityStatus.ConnectionType](/NetworkReachabilityManager_NetworkReachabilityStatus_ConnectionType):
    Defines the various connection types detected by reachability flags.
  - [URLEncodedFormParameterEncoder.Destination](/URLEncodedFormParameterEncoder_Destination):
    Defines where the URL-encoded string should be set for each `URLRequest`.
  - [URLEncoding.Destination](/URLEncoding_Destination):
    Defines whether the url-encoded query string is applied to the existing query string or HTTP body of the
    resulting URL request.
  - [URLEncoding.ArrayEncoding](/URLEncoding_ArrayEncoding):
    Configures how `Array` parameters are encoded.
  - [URLEncoding.BoolEncoding](/URLEncoding_BoolEncoding):
    Configures how `Bool` parameters are encoded.
  - [Redirector.Behavior](/Redirector_Behavior):
    Defines the behavior of the `Redirector` type.
  - [Request.State](/Request_State):
    State of the `Request`, with managed transitions between states set when calling `resume()`, `suspend()`, or
    `cancel()` on the `Request`.
  - [DataStreamRequest.Event](/DataStreamRequest_Event):
    Type representing an event flowing through the stream. Contains either the `Result` of processing streamed
    `Data` or the completion of the stream.
  - [DownloadRequest.Downloadable](/DownloadRequest_Downloadable):
    Type describing the source used to create the underlying `URLSessionDownloadTask`.
  - [UploadRequest.Uploadable](/UploadRequest_Uploadable):
    Type describing the origin of the upload, whether `Data`, file, or stream.
  - [RetryResult](/RetryResult):
    Outcome of determination whether retry is necessary.
  - [URLEncodedFormEncoder.ArrayEncoding](/URLEncodedFormEncoder_ArrayEncoding):
    Encoding to use for `Array` values.
  - [URLEncodedFormEncoder.BoolEncoding](/URLEncodedFormEncoder_BoolEncoding):
    Encoding to use for `Bool` values.
  - [URLEncodedFormEncoder.DataEncoding](/URLEncodedFormEncoder_DataEncoding):
    Encoding to use for `Data` values.
  - [URLEncodedFormEncoder.DateEncoding](/URLEncodedFormEncoder_DateEncoding):
    Encoding to use for `Date` values.
  - [URLEncodedFormEncoder.KeyEncoding](/URLEncodedFormEncoder_KeyEncoding):
    Encoding to use for keys.
  - [URLEncodedFormEncoder.SpaceEncoding](/URLEncodedFormEncoder_SpaceEncoding):
    Encoding to use for spaces.
  - [URLEncodedFormEncoder.Error](/URLEncodedFormEncoder_Error):
    `URLEncodedFormEncoder` error.
  - [AFError](/AFError):
    `AFError` is the error type returned by Alamofire. It encompasses a few different types of errors, each with
    their own associated reasons.
  - [AFError.MultipartEncodingFailureReason](/AFError_MultipartEncodingFailureReason):
    The underlying reason the `.multipartEncodingFailed` error occurred.
  - [AFError.ParameterEncodingFailureReason](/AFError_ParameterEncodingFailureReason):
    The underlying reason the `.parameterEncodingFailed` error occurred.
  - [AFError.ParameterEncoderFailureReason](/AFError_ParameterEncoderFailureReason):
    The underlying reason the `.parameterEncoderFailed` error occurred.
  - [AFError.ParameterEncoderFailureReason.RequiredComponent](/AFError_ParameterEncoderFailureReason_RequiredComponent):
    Possible missing components.
  - [AFError.ResponseValidationFailureReason](/AFError_ResponseValidationFailureReason):
    The underlying reason the `.responseValidationFailed` error occurred.
  - [AFError.ResponseSerializationFailureReason](/AFError_ResponseSerializationFailureReason):
    The underlying reason the response serialization error occurred.
  - [AFError.ServerTrustFailureReason](/AFError_ServerTrustFailureReason):
    Underlying reason a server trust evaluation error occurred.
  - [AFError.URLRequestValidationFailureReason](/AFError_URLRequestValidationFailureReason):
    The underlying reason the `.urlRequestValidationFailed`
  - [AuthenticationError](/AuthenticationError):
    Represents various authentication failures that occur when using the `AuthenticationInterceptor`. All errors are
    still vended from Alamofire as `AFError` types. The `AuthenticationError` instances will be embedded within
    `AFError` `.requestAdaptationFailed` or `.requestRetryFailed` cases.
  - [ResponseCacher.Behavior](/ResponseCacher_Behavior):
    Defines the behavior of the `ResponseCacher` type.
  - [NetworkReachabilityManager.NetworkReachabilityStatus](/NetworkReachabilityManager_NetworkReachabilityStatus):
    Defines the various states of network reachability.
  - [NetworkReachabilityManager.NetworkReachabilityStatus.ConnectionType](/NetworkReachabilityManager_NetworkReachabilityStatus_ConnectionType):
    Defines the various connection types detected by reachability flags.
  - [URLEncodedFormParameterEncoder.Destination](/URLEncodedFormParameterEncoder_Destination):
    Defines where the URL-encoded string should be set for each `URLRequest`.
  - [URLEncoding.Destination](/URLEncoding_Destination):
    Defines whether the url-encoded query string is applied to the existing query string or HTTP body of the
    resulting URL request.
  - [URLEncoding.ArrayEncoding](/URLEncoding_ArrayEncoding):
    Configures how `Array` parameters are encoded.
  - [URLEncoding.BoolEncoding](/URLEncoding_BoolEncoding):
    Configures how `Bool` parameters are encoded.
  - [Redirector.Behavior](/Redirector_Behavior):
    Defines the behavior of the `Redirector` type.
  - [Request.State](/Request_State):
    State of the `Request`, with managed transitions between states set when calling `resume()`, `suspend()`, or
    `cancel()` on the `Request`.
  - [DataStreamRequest.Event](/DataStreamRequest_Event):
    Type representing an event flowing through the stream. Contains either the `Result` of processing streamed
    `Data` or the completion of the stream.
  - [DownloadRequest.Downloadable](/DownloadRequest_Downloadable):
    Type describing the source used to create the underlying `URLSessionDownloadTask`.
  - [UploadRequest.Uploadable](/UploadRequest_Uploadable):
    Type describing the origin of the upload, whether `Data`, file, or stream.
  - [RetryResult](/RetryResult):
    Outcome of determination whether retry is necessary.
  - [URLEncodedFormEncoder.ArrayEncoding](/URLEncodedFormEncoder_ArrayEncoding):
    Encoding to use for `Array` values.
  - [URLEncodedFormEncoder.BoolEncoding](/URLEncodedFormEncoder_BoolEncoding):
    Encoding to use for `Bool` values.
  - [URLEncodedFormEncoder.DataEncoding](/URLEncodedFormEncoder_DataEncoding):
    Encoding to use for `Data` values.
  - [URLEncodedFormEncoder.DateEncoding](/URLEncodedFormEncoder_DateEncoding):
    Encoding to use for `Date` values.
  - [URLEncodedFormEncoder.KeyEncoding](/URLEncodedFormEncoder_KeyEncoding):
    Encoding to use for keys.
  - [URLEncodedFormEncoder.SpaceEncoding](/URLEncodedFormEncoder_SpaceEncoding):
    Encoding to use for spaces.
  - [URLEncodedFormEncoder.Error](/URLEncodedFormEncoder_Error):
    `URLEncodedFormEncoder` error.
  - [AFIError](/AFIError):
    `AFIError` is the error type returned by AlamofireImage.
  - [ImageDownloader.DownloadPrioritization](/ImageDownloader_DownloadPrioritization):
    Defines the order prioritization of incoming download requests being inserted into the queue.
  - [UIImageView.ImageTransition](/UIImageView_ImageTransition):
    Used to wrap all `UIView` animation transition options alongside a duration.
  - [StarFillMode](/StarFillMode):
    Defines how the star is filled when the rating is not an integer number. For example, if rating is 4.6 and the fill more is Half, the star will appear to be half filled.
  - [ExtraGradientDirection](/ExtraGradientDirection):
    Gradient directon to explain vertical/horizontal Y axis for a gradient, and X axis direction
  - [UIColor.GradientLoadingBar](/UIColor_GradientLoadingBar):
    Default colors for components.
  - [TimeInterval.GradientLoadingBar](/TimeInterval_GradientLoadingBar):
    Numeric default values.
  - [JellyConstants.HorizontalAlignment](/JellyConstants_HorizontalAlignment)
  - [JellyConstants.VerticalAlignment](/JellyConstants_VerticalAlignment)
  - [JellyConstants.Size](/JellyConstants_Size)
  - [JellyConstants.BackgroundStyle](/JellyConstants_BackgroundStyle)
  - [JellyConstants.PresentationType](/JellyConstants_PresentationType):
    Will the ViewController be shown or dismissed?
  - [JellyConstants.Direction](/JellyConstants_Direction):
    Direction the Viewcontroller should fly out or come in from
  - [JellyConstants.Orientation](/JellyConstants_Orientation)
  - [JellyConstants.Jellyness](/JellyConstants_Jellyness)
  - [JellyConstants.Duration](/JellyConstants_Duration)
  - [JellyConstants.JellyCurve](/JellyConstants_JellyCurve)
  - [PresentationType](/PresentationType)
  - [PastelGradient](/PastelGradient)
  - [PastelPoint](/PastelPoint)
  - [SPAlertHaptic](/SPAlertHaptic):
    Vibro assest. Call `impact` for run.
  - [SPAlertPreset](/SPAlertPreset):
    Defaults values, icons and vibro for ready-using presets.
  - [SPAlert](/SPAlert):
    Base class with fast presenting.
  - [SPAlertIconBoltView.BoltDraw.ResizingBehavior](/SPAlertIconBoltView_BoltDraw_ResizingBehavior)
  - [SPAlertIconBookmarkView.BookmarkDraw.ResizingBehavior](/SPAlertIconBookmarkView_BookmarkDraw_ResizingBehavior)
  - [SPAlertIconCardView.CardDraw.ResizingBehavior](/SPAlertIconCardView_CardDraw_ResizingBehavior)
  - [SPAlertIconCartView.CartDraw.ResizingBehavior](/SPAlertIconCartView_CartDraw_ResizingBehavior)
  - [SPAlertIconDislikeView.DislikeDraw.ResizingBehavior](/SPAlertIconDislikeView_DislikeDraw_ResizingBehavior)
  - [SPAlertIconDocView.DocDraw.ResizingBehavior](/SPAlertIconDocView_DocDraw_ResizingBehavior)
  - [SPAlertIconEjectView.EjectDraw.ResizingBehavior](/SPAlertIconEjectView_EjectDraw_ResizingBehavior)
  - [SPAlertIconExclamationView.ExclamationDraw.ResizingBehavior](/SPAlertIconExclamationView_ExclamationDraw_ResizingBehavior)
  - [SPAlertIconFlagView.ShuffleDraw.ResizingBehavior](/SPAlertIconFlagView_ShuffleDraw_ResizingBehavior)
  - [SPAlertIconHeartView.HeartDraw.ResizingBehavior](/SPAlertIconHeartView_HeartDraw_ResizingBehavior)
  - [SPAlertIconLikeView.LikeDraw.ResizingBehavior](/SPAlertIconLikeView_LikeDraw_ResizingBehavior)
  - [SPAlertIconMessageView.MessageDraw.ResizingBehavior](/SPAlertIconMessageView_MessageDraw_ResizingBehavior)
  - [SPAlertIconMoonView.MoonDraw.ResizingBehavior](/SPAlertIconMoonView_MoonDraw_ResizingBehavior)
  - [SPAlertIconPrivacyView.PrivacyDraw.ResizingBehavior](/SPAlertIconPrivacyView_PrivacyDraw_ResizingBehavior)
  - [SPAlertIconQuestionView.QuestionDraw.ResizingBehavior](/SPAlertIconQuestionView_QuestionDraw_ResizingBehavior)
  - [SPAlertIconRepeatView.ShuffleDraw.ResizingBehavior](/SPAlertIconRepeatView_ShuffleDraw_ResizingBehavior)
  - [SPAlertIconRotateView.RotateDraw.ResizingBehavior](/SPAlertIconRotateView_RotateDraw_ResizingBehavior)
  - [SPAlertIconSearchView.SearchDraw.ResizingBehavior](/SPAlertIconSearchView_SearchDraw_ResizingBehavior)
  - [SPAlertIconShuffleView.RepeatDraw.ResizingBehavior](/SPAlertIconShuffleView_RepeatDraw_ResizingBehavior)
  - [SPAlertIconStarView.StarDraw.ResizingBehavior](/SPAlertIconStarView_StarDraw_ResizingBehavior)
  - [SPLarkSettingsCodeDraw.SystemIconPack.ResizingBehavior](/SPLarkSettingsCodeDraw_SystemIconPack_ResizingBehavior)
  - [SPStorkArrowMode](/SPStorkArrowMode)
  - [SPStorkHapticMoments](/SPStorkHapticMoments)
  - [SPStorkController](/SPStorkController)
  - [SkeletonAppearance](/SkeletonAppearance)
  - [GradientDirection](/GradientDirection)
  - [SkeletonType](/SkeletonType)
  - [SkeletonTransitionStyle](/SkeletonTransitionStyle)
  - [RatingStep](/RatingStep):
    Step of the rating process
  - [StarsKitLocalizableKeys](/StarsKitLocalizableKeys):
    Localizable strings keys to translate into screen.
  - [AnimationType](/AnimationType):
    AnimationType available to perform/
  - [Direction](/Direction):
    Direction of the animation used in AnimationType.from.
  - [AFError](/AFError):
    `AFError` is the error type returned by Alamofire. It encompasses a few different types of errors, each with
    their own associated reasons.
  - [AFError.MultipartEncodingFailureReason](/AFError_MultipartEncodingFailureReason):
    The underlying reason the `.multipartEncodingFailed` error occurred.
  - [AFError.ParameterEncodingFailureReason](/AFError_ParameterEncodingFailureReason):
    The underlying reason the `.parameterEncodingFailed` error occurred.
  - [AFError.ParameterEncoderFailureReason](/AFError_ParameterEncoderFailureReason):
    The underlying reason the `.parameterEncoderFailed` error occurred.
  - [AFError.ParameterEncoderFailureReason.RequiredComponent](/AFError_ParameterEncoderFailureReason_RequiredComponent):
    Possible missing components.
  - [AFError.ResponseValidationFailureReason](/AFError_ResponseValidationFailureReason):
    The underlying reason the `.responseValidationFailed` error occurred.
  - [AFError.ResponseSerializationFailureReason](/AFError_ResponseSerializationFailureReason):
    The underlying reason the response serialization error occurred.
  - [AFError.ServerTrustFailureReason](/AFError_ServerTrustFailureReason):
    Underlying reason a server trust evaluation error occurred.
  - [AFError.URLRequestValidationFailureReason](/AFError_URLRequestValidationFailureReason):
    The underlying reason the `.urlRequestValidationFailed`
  - [AuthenticationError](/AuthenticationError):
    Represents various authentication failures that occur when using the `AuthenticationInterceptor`. All errors are
    still vended from Alamofire as `AFError` types. The `AuthenticationError` instances will be embedded within
    `AFError` `.requestAdaptationFailed` or `.requestRetryFailed` cases.
  - [ResponseCacher.Behavior](/ResponseCacher_Behavior):
    Defines the behavior of the `ResponseCacher` type.
  - [NetworkReachabilityManager.NetworkReachabilityStatus](/NetworkReachabilityManager_NetworkReachabilityStatus):
    Defines the various states of network reachability.
  - [NetworkReachabilityManager.NetworkReachabilityStatus.ConnectionType](/NetworkReachabilityManager_NetworkReachabilityStatus_ConnectionType):
    Defines the various connection types detected by reachability flags.
  - [URLEncodedFormParameterEncoder.Destination](/URLEncodedFormParameterEncoder_Destination):
    Defines where the URL-encoded string should be set for each `URLRequest`.
  - [URLEncoding.Destination](/URLEncoding_Destination):
    Defines whether the url-encoded query string is applied to the existing query string or HTTP body of the
    resulting URL request.
  - [URLEncoding.ArrayEncoding](/URLEncoding_ArrayEncoding):
    Configures how `Array` parameters are encoded.
  - [URLEncoding.BoolEncoding](/URLEncoding_BoolEncoding):
    Configures how `Bool` parameters are encoded.
  - [Redirector.Behavior](/Redirector_Behavior):
    Defines the behavior of the `Redirector` type.
  - [Request.State](/Request_State):
    State of the `Request`, with managed transitions between states set when calling `resume()`, `suspend()`, or
    `cancel()` on the `Request`.
  - [DataStreamRequest.Event](/DataStreamRequest_Event):
    Type representing an event flowing through the stream. Contains either the `Result` of processing streamed
    `Data` or the completion of the stream.
  - [DownloadRequest.Downloadable](/DownloadRequest_Downloadable):
    Type describing the source used to create the underlying `URLSessionDownloadTask`.
  - [UploadRequest.Uploadable](/UploadRequest_Uploadable):
    Type describing the origin of the upload, whether `Data`, file, or stream.
  - [RetryResult](/RetryResult):
    Outcome of determination whether retry is necessary.
  - [URLEncodedFormEncoder.ArrayEncoding](/URLEncodedFormEncoder_ArrayEncoding):
    Encoding to use for `Array` values.
  - [URLEncodedFormEncoder.BoolEncoding](/URLEncodedFormEncoder_BoolEncoding):
    Encoding to use for `Bool` values.
  - [URLEncodedFormEncoder.DataEncoding](/URLEncodedFormEncoder_DataEncoding):
    Encoding to use for `Data` values.
  - [URLEncodedFormEncoder.DateEncoding](/URLEncodedFormEncoder_DateEncoding):
    Encoding to use for `Date` values.
  - [URLEncodedFormEncoder.KeyEncoding](/URLEncodedFormEncoder_KeyEncoding):
    Encoding to use for keys.
  - [URLEncodedFormEncoder.SpaceEncoding](/URLEncodedFormEncoder_SpaceEncoding):
    Encoding to use for spaces.
  - [URLEncodedFormEncoder.Error](/URLEncodedFormEncoder_Error):
    `URLEncodedFormEncoder` error.
  - [BLTNBackgroundViewStyle.Style](/BLTNBackgroundViewStyle_Style)
  - [BLTNStatusBarAppearance](/BLTNStatusBarAppearance)
  - [BLTNViewPosition](/BLTNViewPosition)
  - [FirestoreDecodingError](/FirestoreDecodingError)
  - [FirestoreEncodingError](/FirestoreEncodingError)
  - [Swift4ExplicitNull](/Swift4ExplicitNull):
    A compatibility version of `ExplicitNull` that does not use property
    wrappers, suitable for use in older versions of Swift.
  - [Swift4ServerTimestamp](/Swift4ServerTimestamp):
    A compatibility version of `ServerTimestamp` that does not use property
    wrappers, suitable for use in older versions of Swift.
  - [SPAlertIconHeartView.HeartDraw.ResizingBehavior](/SPAlertIconHeartView_HeartDraw_ResizingBehavior)
  - [SPAlert](/SPAlert):
    SPAlert: Acess level. Here you get ready-use methods.
    Recomended use it.
  - [SPAlertIconPreset](/SPAlertIconPreset):
    Represent icon wrapper.
    Included default styles and can be custom image.
  - [SPAlertHaptic](/SPAlertHaptic):
    SPAlert: Wrapper of haptic styles.
  - [AsyncOperation.State](/AsyncOperation_State):
    Allows us to asynchrounously track changes of the operation state
  - [AsyncOperation.State](/AsyncOperation_State):
    Allows us to asynchrounously track changes of the operation state
  - [AsyncOperation.State](/AsyncOperation_State):
    Allows us to asynchrounously track changes of the operation state
  - [AsyncOperation.State](/AsyncOperation_State):
    Allows us to asynchrounously track changes of the operation state
  - [MetricValue](/MetricValue):
    An encodable value which is either a number or a string.
  - [RenderJSONEncoder](/RenderJSONEncoder):
    A namespace for encoders for render node JSON.
  - [RenderJSONDecoder](/RenderJSONDecoder):
    A namespace for decoders for render node JSON.
  - [RenderNode.CodingError](/RenderNode_CodingError):
    An error that describes failures that may occur while encoding or decoding a render node.
  - [DocumentationCoverageLevel](/DocumentationCoverageLevel):
    Specifies whether the documentation coverage feature is enabled and, if it is, what amount of specificity is selected.
  - [DocumentationCoverageOptions.KindFilterOptions.BitFlagRepresentation](/DocumentationCoverageOptions_KindFilterOptions_BitFlagRepresentation):
    Represents a single kind option. `DocumentationCoverageOptions/KindFilterOptions-swift.struct`
    cannot enforce the restriction that it only represents one
    option when necessary so this type is preferred in when representing individual kinds that can be represented.
  - [IndexingError](/IndexingError)
  - [IndexingRecord.Location](/IndexingRecord_Location):
    The location of the content for this record.
  - [NavigatorIndex.Error](/NavigatorIndex_Error):
    A specific error to describe issues when processing a `NavigatorIndex`.
  - [NavigatorIndex.PageType](/NavigatorIndex_PageType):
    Indicates the page type of a given item inside the tree.
  - [NavigatorTree.Error](/NavigatorTree_Error)
  - [DataAsset.Context](/DataAsset_Context):
    A context in which you intend clients to use a data asset.
  - [UserInterfaceStyle](/UserInterfaceStyle):
    The interface style for a rendering context.
  - [DisplayScale](/DisplayScale):
    The display-scale factor of a rendering environment.
  - [CommunicationBridgeError](/CommunicationBridgeError):
    An error that occurs when using a communication bridge.
  - [CoverageDataEntry.KindSpecificData.InstanceMemberType](/CoverageDataEntry_KindSpecificData_InstanceMemberType):
    Represents the various kinds of instance members that types can have. Keys  used to retrieve statistics about the associated member kind.
  - [CoverageDataEntry.Error](/CoverageDataEntry_Error)
  - [DiagnosticSeverity](/DiagnosticSeverity):
    The severity of a diagnostic.
  - [DocumentationBundle.PropertyListError](/DocumentationBundle_PropertyListError)
  - [DocumentationBundleFileTypes](/DocumentationBundleFileTypes):
    A collection of functions to check if a file is one of the documentation bundle files types.
  - [DocumentationContext.ContextError](/DocumentationContext_ContextError):
    An error that's encountered while interacting with a `SwiftDocC/DocumentationContext`.
  - [DocumentationContext.AssetType](/DocumentationContext_AssetType):
    A type of asset.
  - [OutOfProcessReferenceResolver.Request](/OutOfProcessReferenceResolver_Request):
    A request message to send to the external link resolver.
  - [OutOfProcessReferenceResolver.Response](/OutOfProcessReferenceResolver_Response):
    A response message from the external link resolver.
  - [NodeURLGenerator.Path](/NodeURLGenerator_Path)
  - [AbsoluteSymbolLink.LinkComponent.DisambiguationSuffix](/AbsoluteSymbolLink_LinkComponent_DisambiguationSuffix):
    A suffix attached to a documentation link to disambiguate it from other symbols
    that share the same base name.
  - [DocumentationWorkspace.WorkspaceError](/DocumentationWorkspace_WorkspaceError):
    An error when requesting information from a workspace.
  - [FSNode](/FSNode):
    An element in a virtual filesystem.
  - [AttributedCodeListing.Line.Token](/AttributedCodeListing_Line_Token):
    An element in a line of code.
  - [DocumentationNode.Error](/DocumentationNode_Error)
  - [TopicReference](/TopicReference):
    A resolved or unresolved reference to a piece of documentation.
  - [TopicReferenceResolutionResult](/TopicReferenceResolutionResult):
    A topic reference that has been resolved, either successfully or not.
  - [DocumentationNode.Name](/DocumentationNode_Name):
    The annotated name of a node.
  - [RenderBlockContent](/RenderBlockContent):
    A block content element.
  - [RenderBlockContent.AsideStyle](/RenderBlockContent_AsideStyle):
    An aside style.
  - [RenderBlockContent.HeaderType](/RenderBlockContent_HeaderType):
    The table headers style.
  - [RenderInlineContent](/RenderInlineContent):
    An inline content element.
  - [RenderHierarchy](/RenderHierarchy):
    Hierarchical information for a render node.
  - [RenderHierarchyLandmark.Kind](/RenderHierarchyLandmark_Kind):
    The kind of a landmark.
  - [RenderReferenceType](/RenderReferenceType):
    The type of a reference.
  - [RenderNode.Kind](/RenderNode_Kind):
    The kind of content represented by this node.
  - [RenderMetadata.Role](/RenderMetadata_Role):
    A list of pre-defined roles to assign to nodes.
  - [RenderNode.Variant.Trait](/RenderNode_Variant_Trait):
    A trait describing an aspect of the render variant.
  - [RenderNode.Variant.Trait.Error](/RenderNode_Variant_Trait_Error)
  - [RenderSectionKind](/RenderSectionKind)
  - [AttributesRenderSection.CodingKeys](/AttributesRenderSection_CodingKeys):
    The list of keys you use to encode or decode the section data.
  - [RenderAttribute](/RenderAttribute):
    A single renderable attribute.
  - [RenderAttribute.CodingKeys](/RenderAttribute_CodingKeys):
    The list of keys to use to encode/decode the attribute.
  - [RenderAttribute.Kind](/RenderAttribute_Kind):
    A list of the plain-text names of supported attributes.
  - [DeclarationRenderSection.Token.Kind](/DeclarationRenderSection_Token_Kind):
    The list of all expected tokens in a declaration.
  - [TitleStyle](/TitleStyle):
    A title style for a property list key or an entitlement key.
  - [PlistDetailsRenderSection.CodingKeys](/PlistDetailsRenderSection_CodingKeys):
    The list of keys you use to encode or decode this details section.
  - [PossibleValuesRenderSection.CodingKeys](/PossibleValuesRenderSection_CodingKeys):
    The list of keys you use to encode or decode this section.
  - [PropertiesRenderSection.CodingKeys](/PropertiesRenderSection_CodingKeys):
    The list of keys to use to encode/decode this section.
  - [RESTEndpointRenderSection.Token.Kind](/RESTEndpointRenderSection_Token_Kind):
    The kind of REST endpoint token.
  - [SampleDownloadSection.CodingKeys](/SampleDownloadSection_CodingKeys):
    The list of keys you use to encode or decode this section.
  - [ContentLayout](/ContentLayout):
    The layout in which the content should be presented.
  - [RenderTile.Identifier](/RenderTile_Identifier):
    Predefined semantic tile identifiers.
  - [ContentAndMediaSection.Layout](/ContentAndMediaSection_Layout):
    The kind of layout to use when rendering a section.
    Content is always leading, and media is always trailing.
  - [JSONPatchApplier.Error](/JSONPatchApplier_Error):
    An error that occured during the application of a JSON patch.
  - [JSONPatchOperation](/JSONPatchOperation):
    A patch operation to update a JSON value.
  - [JSONPatchOperation.CodingKeys](/JSONPatchOperation_CodingKeys)
  - [JSONPointer.EscapedCharacters](/JSONPointer_EscapedCharacters):
    An enum representing characters that need escaping in JSON Pointer values.
  - [PatchOperation](/PatchOperation):
    The patch operation to apply.
  - [RenderNodeVariantOverridesApplier.Error](/RenderNodeVariantOverridesApplier_Error):
    An error that occured while applying overrides in a render node.
  - [VariantPatchOperation](/VariantPatchOperation):
    A patch to update a render node value.
  - [RelationshipsGroup.Kind](/RelationshipsGroup_Kind):
    Possible symbol relationships.
  - [ContentAndMedia.MediaPosition](/ContentAndMedia_MediaPosition):
    Constants that represent the media's position in relation to prose content.
  - [Layout](/Layout):
    Possible layouts for certain containers of markup content.
  - [DocumentationExtension.Behavior](/DocumentationExtension_Behavior):
    The merge behavior in a documentation extension.
  - [Semantic.Analyses](/Semantic_Analyses):
    General purpose analyses that can apply to many directives.
  - [Relationship](/Relationship):
    A relationship to a node in the topic graph.
  - [Tile.Identifier](/Tile_Identifier):
    A tile type to identify the tile during building page layout.
  - [Tile.DirectiveNames](/Tile_DirectiveNames):
    The possible directive names for a tile, corresponding to different expanded content.
  - [MarkupLayout](/MarkupLayout):
    A collection of markup elements that you arrange with a specified layout.
  - [ExternalIdentifier](/ExternalIdentifier):
    A convenience structure to represent an external identifier of a symbol.
  - [LMDB.Error](/LMDB_Error):
    A convenience Error enum to handle potential LMDB errors.
  - [LogHandle](/LogHandle):
    An object that writes logs to the given output device.
  - [PreviewServer.Bind](/PreviewServer_Bind):
    A list of server-bind destinations.
  - [FlightDirection](/FlightDirection)
  - [FlightStatus](/FlightStatus)
  - [FlightDirection](/FlightDirection)
  - [FlightStatus](/FlightStatus)
  - [FlightDirection](/FlightDirection)
  - [FlightStatus](/FlightStatus)
  - [FlightDirection](/FlightDirection)
  - [FlightStatus](/FlightStatus)
  - [Notification.Name.Task](/Notification_Name_Task):
    Used as a namespace for all `URLSessionTask` related notifications.
  - [Notification.Key](/Notification_Key):
    Used as a namespace for all `Notification` user info dictionary keys.
  - [URLEncoding](/URLEncoding):
    Creates a url-encoded query string to be set as or appended to any existing URL query string or set as the HTTP
    body of the URL request. Whether the query string is set or appended to any existing URL query string or set as
    the HTTP body depends on the destination of the encoding.
  - [JSONEncoding](/JSONEncoding):
    Uses `JSONSerialization` to create a JSON representation of the parameters object, which is set as the body of the
    request. The `Content-Type` HTTP header field of an encoded request is set to `application/json`.
  - [PropertyListEncoding](/PropertyListEncoding):
    Uses `PropertyListSerialization` to create a plist representation of the parameters object, according to the
    associated format and write options values, which is set as the body of the request. The `Content-Type` HTTP header
    field of an encoded request is set to `application/x-plist`.
  - [DownloadRequest.DownloadOptions](/DownloadRequest_DownloadOptions):
    A collection of options to be executed prior to moving a downloaded file from the temporary URL to the
    destination URL.
  - [DefaultDataResponse](/DefaultDataResponse):
    Used to store all data associated with an non-serialized response of a data or upload request.
  - [DataResponse](/DataResponse):
    Used to store all data associated with a serialized response of a data or upload request.
  - [DefaultDownloadResponse](/DefaultDownloadResponse):
    Used to store all data associated with an non-serialized response of a download request.
  - [DownloadResponse](/DownloadResponse):
    Used to store all data associated with a serialized response of a download request.
  - [DataResponseSerializer](/DataResponseSerializer):
    A generic `DataResponseSerializerType` used to serialize a request, response, and data into a serialized object.
  - [DownloadResponseSerializer](/DownloadResponseSerializer):
    A generic `DownloadResponseSerializerType` used to serialize a request, response, and data into a serialized object.
  - [Timeline](/Timeline):
    Responsible for computing the timing metrics for the complete lifecycle of a `Request`.
  - [KeyboardChangeContext](/KeyboardChangeContext):
    The context of an upcoming change in the frame of the system keyboard.
  - [Bag](/Bag):
    An unordered, non-unique collection of values of type `Element`.
  - [BagIterator](/BagIterator):
    An iterator of `Bag`.
  - [AnyProperty](/AnyProperty)
  - [ConstantProperty](/ConstantProperty)
  - [Reactive](/Reactive):
    A proxy which hosts reactive extensions of `Base`.
  - [SignalProducer](/SignalProducer):
    A SignalProducer creates Signals that can produce values of type `Value`
    and/or fail with errors of type `Error`. If no failure should be possible,
    `NoError` can be specified for `Error`.
  - [AnyError](/AnyError):
    A type-erased error which wraps an arbitrary error instance. This should be
    useful for generic contexts.
  - [PillView](/PillView)
  - [FunctionView](/FunctionView)
  - [CardView](/CardView)
  - [CardViewPlaceholder](/CardViewPlaceholder)
  - [FinalViewPlaceholder](/FinalViewPlaceholder)
  - [PillMovieView](/PillMovieView)
  - [FilterBoxView](/FilterBoxView)
  - [PillStoreView](/PillStoreView)
  - [StoreFinalView](/StoreFinalView)
  - [StoreView](/StoreView)
  - [TranformBoxView](/TranformBoxView)
  - [Notification.Name.Task](/Notification_Name_Task):
    Used as a namespace for all `URLSessionTask` related notifications.
  - [Notification.Key](/Notification_Key):
    Used as a namespace for all `Notification` user info dictionary keys.
  - [URLEncoding](/URLEncoding):
    Creates a url-encoded query string to be set as or appended to any existing URL query string or set as the HTTP
    body of the URL request. Whether the query string is set or appended to any existing URL query string or set as
    the HTTP body depends on the destination of the encoding.
  - [JSONEncoding](/JSONEncoding):
    Uses `JSONSerialization` to create a JSON representation of the parameters object, which is set as the body of the
    request. The `Content-Type` HTTP header field of an encoded request is set to `application/json`.
  - [PropertyListEncoding](/PropertyListEncoding):
    Uses `PropertyListSerialization` to create a plist representation of the parameters object, according to the
    associated format and write options values, which is set as the body of the request. The `Content-Type` HTTP header
    field of an encoded request is set to `application/x-plist`.
  - [DownloadRequest.DownloadOptions](/DownloadRequest_DownloadOptions):
    A collection of options to be executed prior to moving a downloaded file from the temporary URL to the
    destination URL.
  - [DefaultDataResponse](/DefaultDataResponse):
    Used to store all data associated with an non-serialized response of a data or upload request.
  - [DataResponse](/DataResponse):
    Used to store all data associated with a serialized response of a data or upload request.
  - [DefaultDownloadResponse](/DefaultDownloadResponse):
    Used to store all data associated with an non-serialized response of a download request.
  - [DownloadResponse](/DownloadResponse):
    Used to store all data associated with a serialized response of a download request.
  - [DataResponseSerializer](/DataResponseSerializer):
    A generic `DataResponseSerializerType` used to serialize a request, response, and data into a serialized object.
  - [DownloadResponseSerializer](/DownloadResponseSerializer):
    A generic `DownloadResponseSerializerType` used to serialize a request, response, and data into a serialized object.
  - [Timeline](/Timeline):
    Responsible for computing the timing metrics for the complete lifecycle of a `Request`.
  - [BarLineScatterCandleBubbleRenderer.XBounds.Iterator](/BarLineScatterCandleBubbleRenderer_XBounds_Iterator)
  - [Placeholder](/Placeholder):
    The Placeholder object, is used to create placeholders
  - [PlaceholderData](/PlaceholderData):
    Contains the placeholder data: texts, image, etc
  - [PlaceholderKey](/PlaceholderKey):
    Manage all keys of placeholsers, each placeholder should has an unique key
    Struct instead of enum because here we need to extend the number of cases.
  - [PlaceholderStyle](/PlaceholderStyle):
    PlaceholderStyle is used to customise the placeholder cell style
  - [SPAlertLayout](/SPAlertLayout):
    Layout for alert. Basic width is `250`. Height calculate automatically.
  - [SkeletonGradient](/SkeletonGradient)
  - [Borders](/Borders)
  - [CircularScrolling.Configuration](/CircularScrolling_Configuration)
  - [CircularScrolling.Configuration.Options](/CircularScrolling_Configuration_Options)
  - [Gridlines](/Gridlines)
  - [Location](/Location)
  - [ScrollPosition](/ScrollPosition)
  - [SpringAnimation](/SpringAnimation):
    A wrapper around the spring `UIViewAnimation` block with options publicly accessible. See, [UIViewAnimation](apple-reference-documentation://hsEaMPVO1d) for more
  - [StandardAnimation](/StandardAnimation):
    A wrapper around the standard `UIViewAnimation` block with options publicly accessible. See, [UIViewAnimation](apple-reference-documentation://hsLqXZ_dD1) for more
  - [ContinuousSortFunction](/ContinuousSortFunction):
    A `SortFunction` that has variable `interObjectDelay` values. Unlike other `SortFunction` implementations, for the `ContinuousSortFunction` you specify a `duration` and the `SortFunction` will compute the necessary `interObjectDelay` values for each of the subviews. This means that the offset times will not be multiples of the delay like usual.
  - [ContinuousWeightedSortFunction](/ContinuousWeightedSortFunction):
    A `SortFunction` that has variable `interObjectDelay` values using weights to structure when views should animate. Unlike other `SortFunction` implementations, for the `ContinuousWeightedSortFunction` you specify a `duration` and the `SortFunction` will compute the necessary `interObjectDelay` values for each of the subviews. This means that the offset times will not be multiples of the delay like usual. The lighter the weight the faster the views will animate.
  - [CorneredSortFunction](/CorneredSortFunction):
    A `SortFunction` designed to animate in a corner like fashion. The views near the starting corner will animate first. In essence it appears to be a wiping function that will continue diagonally based on that corner.
  - [DefaultSortFunction](/DefaultSortFunction):
    The basic `SortFunction`. Use this sort function if you want to animate in all views at the same time and give an `interObjectDelay` of `0.0`. Note that this `SortFunction` will animate the views based on the order they were added to the animation view. This means that the way the views are sorted in the `subviews` array is the way that they will be sorted by this `SortFunction`.
  - [InlineSortFunction](/InlineSortFunction):
    A `SortFunction` that animates the views in as if they were reading text from left to right (based on the corner that you set).
  - [LinearSortFunction](/LinearSortFunction):
    A `Linear` wiping `SortFunction`. This will consider the rows or columns of the views rather than looking at their exact coordinates. Views that have the same vertical or horizontal components, based on the `direction`, will animate in at the same time.
  - [SprucePoint](/SprucePoint):
    Internal struct to access CGPoint extensions. Use this to call methods such as `.euclideanDistance`
  - [TimedView](/TimedView):
    An internal struct that is used to relate a view with a time offset. This is used to determine when each view is set to animate.
  - [RadialSortFunction](/RadialSortFunction):
    A `SortFunction` that will offset the views in a circular fashion. This means that rather than looking flat like the `CorneredSortFunction`, there will be a curve going out of the position as if the views were in an expanding circle.
  - [RandomSortFunction](/RandomSortFunction):
    A `SortFunction` that will animate all the views in with a random delay. No 2 views will animate in with the same offset. The views will be placed in an array, shuffled, and then each view will be asigned an offset given the `interObjectDelay`.
  - [Spruce](/Spruce):
    Access to all of the Spruce library animations. Use this to call functions such as `.animate` or `.prepare`
  - [SpruceUIView](/SpruceUIView)
  - [Queue](/Queue)
  - [Stack](/Stack)
  - [ArrayLinkedList](/ArrayLinkedList):
    The arrays has a linked list with node representing the information of each dimension.
  - [ArrayLinkedList.Index](/ArrayLinkedList_Index)
  - [SymbolTable](/SymbolTable):
    Symbol Table is a linked list of node, each node representing one scope.
    Each node has a dictionary that keeps track of each symbol saved
  - [SymbolTable.Index](/SymbolTable_Index)
  - [LinkedList](/LinkedList)
  - [LinkedList.Index](/LinkedList_Index)
  - [QueueArray](/QueueArray)
  - [QueueStack](/QueueStack)
  - [RingBuffer](/RingBuffer)
  - [Stack](/Stack)
  - [SPAlertLayout](/SPAlertLayout):
    Layout for alert. Basic width is `250`. Height calculate automatically.
  - [Notification.Name.Task](/Notification_Name_Task):
    Used as a namespace for all `URLSessionTask` related notifications.
  - [Notification.Key](/Notification_Key):
    Used as a namespace for all `Notification` user info dictionary keys.
  - [URLEncoding](/URLEncoding):
    Creates a url-encoded query string to be set as or appended to any existing URL query string or set as the HTTP
    body of the URL request. Whether the query string is set or appended to any existing URL query string or set as
    the HTTP body depends on the destination of the encoding.
  - [JSONEncoding](/JSONEncoding):
    Uses `JSONSerialization` to create a JSON representation of the parameters object, which is set as the body of the
    request. The `Content-Type` HTTP header field of an encoded request is set to `application/json`.
  - [PropertyListEncoding](/PropertyListEncoding):
    Uses `PropertyListSerialization` to create a plist representation of the parameters object, according to the
    associated format and write options values, which is set as the body of the request. The `Content-Type` HTTP header
    field of an encoded request is set to `application/x-plist`.
  - [DownloadRequest.DownloadOptions](/DownloadRequest_DownloadOptions):
    A collection of options to be executed prior to moving a downloaded file from the temporary URL to the
    destination URL.
  - [DefaultDataResponse](/DefaultDataResponse):
    Used to store all data associated with an non-serialized response of a data or upload request.
  - [DataResponse](/DataResponse):
    Used to store all data associated with a serialized response of a data or upload request.
  - [DefaultDownloadResponse](/DefaultDownloadResponse):
    Used to store all data associated with an non-serialized response of a download request.
  - [DownloadResponse](/DownloadResponse):
    Used to store all data associated with a serialized response of a download request.
  - [DataResponseSerializer](/DataResponseSerializer):
    A generic `DataResponseSerializerType` used to serialize a request, response, and data into a serialized object.
  - [DownloadResponseSerializer](/DownloadResponseSerializer):
    A generic `DownloadResponseSerializerType` used to serialize a request, response, and data into a serialized object.
  - [Timeline](/Timeline):
    Responsible for computing the timing metrics for the complete lifecycle of a `Request`.
  - [TimeChunk](/TimeChunk)
  - [QRCode](/QRCode):
    QRCode generator
  - [SPAlertLayout](/SPAlertLayout)
  - [SwipeButtonWithImage](/SwipeButtonWithImage)
  - [CompilerAJ](/CompilerAJ)
  - [OperatorStack](/OperatorStack)
  - [Quadruple](/Quadruple)
  - [Queue](/Queue)
  - [Stack](/Stack)
  - [ArrayLinkedList](/ArrayLinkedList)
  - [ArrayLinkedList.Index](/ArrayLinkedList_Index)
  - [SymbolTable](/SymbolTable)
  - [SymbolTable.Index](/SymbolTable_Index)
  - [AFError.ServerTrustFailureReason.Output](/AFError_ServerTrustFailureReason_Output):
    The output of a server trust evaluation.
  - [AlamofireExtension](/AlamofireExtension):
    Type that acts as a generic extension point for all `AlamofireExtended` types.
  - [AuthenticationInterceptor.RefreshWindow](/AuthenticationInterceptor_RefreshWindow):
    Type that defines a time window used to identify excessive refresh calls. When enabled, prior to executing a
    refresh, the `AuthenticationInterceptor` compares the timestamp history of previous refresh calls against the
    `RefreshWindow`. If more refreshes have occurred within the refresh window than allowed, the refresh is
    cancelled and an `AuthorizationError.excessiveRefresh` error is thrown.
  - [ResponseCacher](/ResponseCacher):
    `ResponseCacher` is a convenience `CachedResponseHandler` making it easy to cache, not cache, or modify a cached
    response.
  - [DataResponsePublisher](/DataResponsePublisher):
    A Combine `Publisher` that publishes the `DataResponse<Value, AFError>` of the provided `DataRequest`.
  - [DataStreamPublisher](/DataStreamPublisher)
  - [DownloadResponsePublisher](/DownloadResponsePublisher):
    A Combine `Publisher` that publishes the `DownloadResponse<Value, AFError>` of the provided `DownloadRequest`.
  - [HTTPHeaders](/HTTPHeaders):
    An order-preserving and case-insensitive representation of HTTP headers.
  - [HTTPHeader](/HTTPHeader):
    A representation of a single HTTP header's name / value pair.
  - [HTTPMethod](/HTTPMethod):
    Type representing HTTP methods. Raw `String` value is stored and compared case-sensitively, so
    `HTTPMethod.get != HTTPMethod(rawValue: "get")`.
  - [URLEncoding](/URLEncoding):
    Creates a url-encoded query string to be set as or appended to any existing URL query string or set as the HTTP
    body of the URL request. Whether the query string is set or appended to any existing URL query string or set as
    the HTTP body depends on the destination of the encoding.
  - [JSONEncoding](/JSONEncoding):
    Uses `JSONSerialization` to create a JSON representation of the parameters object, which is set as the body of the
    request. The `Content-Type` HTTP header field of an encoded request is set to `application/json`.
  - [Redirector](/Redirector):
    `Redirector` is a convenience `RedirectHandler` making it easy to follow, not follow, or modify a redirect.
  - [DataStreamRequest.Stream](/DataStreamRequest_Stream):
    Type encapsulating an `Event` as it flows through the stream, as well as a `CancellationToken` which can be used
    to stop the stream at any time.
  - [DataStreamRequest.Completion](/DataStreamRequest_Completion):
    Value containing the state of a `DataStreamRequest` when the stream was completed.
  - [DataStreamRequest.CancellationToken](/DataStreamRequest_CancellationToken):
    Type used to cancel an ongoing stream.
  - [DownloadRequest.Options](/DownloadRequest_Options):
    A set of options to be executed prior to moving a downloaded file from the temporary `URL` to the destination
    `URL`.
  - [DataResponse](/DataResponse):
    Type used to store all values associated with a serialized response of a `DataRequest` or `UploadRequest`.
  - [DownloadResponse](/DownloadResponse):
    Used to store all data associated with a serialized response of a download request.
  - [PassthroughPreprocessor](/PassthroughPreprocessor):
    `DataPreprocessor` that returns passed `Data` without any transform.
  - [GoogleXSSIPreprocessor](/GoogleXSSIPreprocessor):
    `DataPreprocessor` that trims Google's typical `)]}',\n` XSSI JSON header.
  - [Empty](/Empty):
    Type representing an empty value. Use `Empty.value` to get the static instance.
  - [DecodableStreamSerializer](/DecodableStreamSerializer):
    `DataStreamSerializer` which uses the provided `DataPreprocessor` and `DataDecoder` to serialize the incoming `Data`.
  - [PassthroughStreamSerializer](/PassthroughStreamSerializer):
    `DataStreamSerializer` which performs no serialization on incoming `Data`.
  - [StringStreamSerializer](/StringStreamSerializer):
    `DataStreamSerializer` which serializes incoming stream `Data` into `UTF8`-decoded `String` values.
  - [RevocationTrustEvaluator.Options](/RevocationTrustEvaluator_Options):
    Represents the options to be use when evaluating the status of a certificate.
    Only Revocation Policy Constants are valid, and can be found in [Apple's documentation](https://developer.apple.com/documentation/security/certificate_key_and_trust_services/policies/1563600-revocation_policy_constants).
  - [AFError.ServerTrustFailureReason.Output](/AFError_ServerTrustFailureReason_Output):
    The output of a server trust evaluation.
  - [AlamofireExtension](/AlamofireExtension):
    Type that acts as a generic extension point for all `AlamofireExtended` types.
  - [AuthenticationInterceptor.RefreshWindow](/AuthenticationInterceptor_RefreshWindow):
    Type that defines a time window used to identify excessive refresh calls. When enabled, prior to executing a
    refresh, the `AuthenticationInterceptor` compares the timestamp history of previous refresh calls against the
    `RefreshWindow`. If more refreshes have occurred within the refresh window than allowed, the refresh is
    cancelled and an `AuthorizationError.excessiveRefresh` error is thrown.
  - [ResponseCacher](/ResponseCacher):
    `ResponseCacher` is a convenience `CachedResponseHandler` making it easy to cache, not cache, or modify a cached
    response.
  - [DataResponsePublisher](/DataResponsePublisher):
    A Combine `Publisher` that publishes the `DataResponse<Value, AFError>` of the provided `DataRequest`.
  - [DataStreamPublisher](/DataStreamPublisher)
  - [DownloadResponsePublisher](/DownloadResponsePublisher):
    A Combine `Publisher` that publishes the `DownloadResponse<Value, AFError>` of the provided `DownloadRequest`.
  - [HTTPHeaders](/HTTPHeaders):
    An order-preserving and case-insensitive representation of HTTP headers.
  - [HTTPHeader](/HTTPHeader):
    A representation of a single HTTP header's name / value pair.
  - [HTTPMethod](/HTTPMethod):
    Type representing HTTP methods. Raw `String` value is stored and compared case-sensitively, so
    `HTTPMethod.get != HTTPMethod(rawValue: "get")`.
  - [URLEncoding](/URLEncoding):
    Creates a url-encoded query string to be set as or appended to any existing URL query string or set as the HTTP
    body of the URL request. Whether the query string is set or appended to any existing URL query string or set as
    the HTTP body depends on the destination of the encoding.
  - [JSONEncoding](/JSONEncoding):
    Uses `JSONSerialization` to create a JSON representation of the parameters object, which is set as the body of the
    request. The `Content-Type` HTTP header field of an encoded request is set to `application/json`.
  - [Redirector](/Redirector):
    `Redirector` is a convenience `RedirectHandler` making it easy to follow, not follow, or modify a redirect.
  - [DataStreamRequest.Stream](/DataStreamRequest_Stream):
    Type encapsulating an `Event` as it flows through the stream, as well as a `CancellationToken` which can be used
    to stop the stream at any time.
  - [DataStreamRequest.Completion](/DataStreamRequest_Completion):
    Value containing the state of a `DataStreamRequest` when the stream was completed.
  - [DataStreamRequest.CancellationToken](/DataStreamRequest_CancellationToken):
    Type used to cancel an ongoing stream.
  - [DownloadRequest.Options](/DownloadRequest_Options):
    A set of options to be executed prior to moving a downloaded file from the temporary `URL` to the destination
    `URL`.
  - [DataResponse](/DataResponse):
    Type used to store all values associated with a serialized response of a `DataRequest` or `UploadRequest`.
  - [DownloadResponse](/DownloadResponse):
    Used to store all data associated with a serialized response of a download request.
  - [PassthroughPreprocessor](/PassthroughPreprocessor):
    `DataPreprocessor` that returns passed `Data` without any transform.
  - [GoogleXSSIPreprocessor](/GoogleXSSIPreprocessor):
    `DataPreprocessor` that trims Google's typical `)]}',\n` XSSI JSON header.
  - [Empty](/Empty):
    Type representing an empty value. Use `Empty.value` to get the static instance.
  - [DecodableStreamSerializer](/DecodableStreamSerializer):
    `DataStreamSerializer` which uses the provided `DataPreprocessor` and `DataDecoder` to serialize the incoming `Data`.
  - [PassthroughStreamSerializer](/PassthroughStreamSerializer):
    `DataStreamSerializer` which performs no serialization on incoming `Data`.
  - [StringStreamSerializer](/StringStreamSerializer):
    `DataStreamSerializer` which serializes incoming stream `Data` into `UTF8`-decoded `String` values.
  - [RevocationTrustEvaluator.Options](/RevocationTrustEvaluator_Options):
    Represents the options to be use when evaluating the status of a certificate.
    Only Revocation Policy Constants are valid, and can be found in [Apple's documentation](https://developer.apple.com/documentation/security/certificate_key_and_trust_services/policies/1563600-revocation_policy_constants).
  - [DynamicImageFilter](/DynamicImageFilter):
    The `DynamicImageFilter` class simplifies custom image filter creation by using a trailing closure initializer.
  - [DynamicCompositeImageFilter](/DynamicCompositeImageFilter):
    The `DynamicCompositeImageFilter` class is a composite image filter based on a specified array of filters.
  - [ScaledToSizeFilter](/ScaledToSizeFilter):
    Scales an image to a specified size.
  - [AspectScaledToFitSizeFilter](/AspectScaledToFitSizeFilter):
    Scales an image from the center while maintaining the aspect ratio to fit within a specified size.
  - [AspectScaledToFillSizeFilter](/AspectScaledToFillSizeFilter):
    Scales an image from the center while maintaining the aspect ratio to fill a specified size. Any pixels that fall
    outside the specified size are clipped.
  - [RoundedCornersFilter](/RoundedCornersFilter):
    Rounds the corners of an image to the specified radius.
  - [CircleFilter](/CircleFilter):
    Rounds the corners of an image into a circle.
  - [BlurFilter](/BlurFilter):
    Blurs an image using a `CIGaussianBlur` filter with the specified blur radius.
  - [ScaledToSizeWithRoundedCornersFilter](/ScaledToSizeWithRoundedCornersFilter):
    Scales an image to a specified size, then rounds the corners to the specified radius.
  - [AspectScaledToFillSizeWithRoundedCornersFilter](/AspectScaledToFillSizeWithRoundedCornersFilter):
    Scales an image from the center while maintaining the aspect ratio to fit within a specified size, then rounds the
    corners to the specified radius.
  - [ScaledToSizeCircleFilter](/ScaledToSizeCircleFilter):
    Scales an image to a specified size, then rounds the corners into a circle.
  - [AspectScaledToFillSizeCircleFilter](/AspectScaledToFillSizeCircleFilter):
    Scales an image from the center while maintaining the aspect ratio to fit within a specified size, then rounds the
    corners into a circle.
  - [CosmosSettings](/CosmosSettings):
    Settings that define the appearance of the star rating views.
  - [Extra](/Extra)
  - [Jelly](/Jelly)
  - [JellyConstants](/JellyConstants):
    Datamodel Types which will be used to create a JellyPresentationObject
  - [JellyFadeInPresentation](/JellyFadeInPresentation)
  - [JellyShiftInPresentation](/JellyShiftInPresentation)
  - [JellySlideInPresentation](/JellySlideInPresentation)
  - [ItemAppearance](/ItemAppearance)
  - [SOTabBarSetting](/SOTabBarSetting)
  - [SPAlertLayout](/SPAlertLayout):
    Layout for alert. Basic width is `250`. Height calculate automatically.
  - [SPLarkController](/SPLarkController)
  - [SkeletonGradient](/SkeletonGradient)
  - [AFError.ServerTrustFailureReason.Output](/AFError_ServerTrustFailureReason_Output):
    The output of a server trust evaluation.
  - [AlamofireExtension](/AlamofireExtension):
    Type that acts as a generic extension point for all `AlamofireExtended` types.
  - [AuthenticationInterceptor.RefreshWindow](/AuthenticationInterceptor_RefreshWindow):
    Type that defines a time window used to identify excessive refresh calls. When enabled, prior to executing a
    refresh, the `AuthenticationInterceptor` compares the timestamp history of previous refresh calls against the
    `RefreshWindow`. If more refreshes have occurred within the refresh window than allowed, the refresh is
    cancelled and an `AuthorizationError.excessiveRefresh` error is thrown.
  - [ResponseCacher](/ResponseCacher):
    `ResponseCacher` is a convenience `CachedResponseHandler` making it easy to cache, not cache, or modify a cached
    response.
  - [DataResponsePublisher](/DataResponsePublisher):
    A Combine `Publisher` that publishes the `DataResponse<Value, AFError>` of the provided `DataRequest`.
  - [DataStreamPublisher](/DataStreamPublisher)
  - [DownloadResponsePublisher](/DownloadResponsePublisher):
    A Combine `Publisher` that publishes the `DownloadResponse<Value, AFError>` of the provided `DownloadRequest`.
  - [HTTPHeaders](/HTTPHeaders):
    An order-preserving and case-insensitive representation of HTTP headers.
  - [HTTPHeader](/HTTPHeader):
    A representation of a single HTTP header's name / value pair.
  - [HTTPMethod](/HTTPMethod):
    Type representing HTTP methods. Raw `String` value is stored and compared case-sensitively, so
    `HTTPMethod.get != HTTPMethod(rawValue: "get")`.
  - [URLEncoding](/URLEncoding):
    Creates a url-encoded query string to be set as or appended to any existing URL query string or set as the HTTP
    body of the URL request. Whether the query string is set or appended to any existing URL query string or set as
    the HTTP body depends on the destination of the encoding.
  - [JSONEncoding](/JSONEncoding):
    Uses `JSONSerialization` to create a JSON representation of the parameters object, which is set as the body of the
    request. The `Content-Type` HTTP header field of an encoded request is set to `application/json`.
  - [Redirector](/Redirector):
    `Redirector` is a convenience `RedirectHandler` making it easy to follow, not follow, or modify a redirect.
  - [DataStreamRequest.Stream](/DataStreamRequest_Stream):
    Type encapsulating an `Event` as it flows through the stream, as well as a `CancellationToken` which can be used
    to stop the stream at any time.
  - [DataStreamRequest.Completion](/DataStreamRequest_Completion):
    Value containing the state of a `DataStreamRequest` when the stream was completed.
  - [DataStreamRequest.CancellationToken](/DataStreamRequest_CancellationToken):
    Type used to cancel an ongoing stream.
  - [DownloadRequest.Options](/DownloadRequest_Options):
    A set of options to be executed prior to moving a downloaded file from the temporary `URL` to the destination
    `URL`.
  - [DataResponse](/DataResponse):
    Type used to store all values associated with a serialized response of a `DataRequest` or `UploadRequest`.
  - [DownloadResponse](/DownloadResponse):
    Used to store all data associated with a serialized response of a download request.
  - [PassthroughPreprocessor](/PassthroughPreprocessor):
    `DataPreprocessor` that returns passed `Data` without any transform.
  - [GoogleXSSIPreprocessor](/GoogleXSSIPreprocessor):
    `DataPreprocessor` that trims Google's typical `)]}',\n` XSSI JSON header.
  - [Empty](/Empty):
    Type representing an empty value. Use `Empty.value` to get the static instance.
  - [DecodableStreamSerializer](/DecodableStreamSerializer):
    `DataStreamSerializer` which uses the provided `DataPreprocessor` and `DataDecoder` to serialize the incoming `Data`.
  - [PassthroughStreamSerializer](/PassthroughStreamSerializer):
    `DataStreamSerializer` which performs no serialization on incoming `Data`.
  - [StringStreamSerializer](/StringStreamSerializer):
    `DataStreamSerializer` which serializes incoming stream `Data` into `UTF8`-decoded `String` values.
  - [RevocationTrustEvaluator.Options](/RevocationTrustEvaluator_Options):
    Represents the options to be use when evaluating the status of a certificate.
    Only Revocation Policy Constants are valid, and can be found in [Apple's documentation](https://developer.apple.com/documentation/security/certificate_key_and_trust_services/policies/1563600-revocation_policy_constants).
  - [DocumentID](/DocumentID):
    A value that is populated in Codable objects with the `DocumentReference`
    of the current document by the Firestore.Decoder when a document is read.
  - [ExplicitNull](/ExplicitNull):
    Wraps an `Optional` field in a `Codable` object such that when the field
    has a `nil` value it will encode to a null value in Firestore. Normally,
    optional fields are omitted from the encoded document.
  - [ServerTimestamp](/ServerTimestamp):
    A property wrapper that marks an `Optional<Timestamp>` field to be
    populated with a server timestamp. If a `Codable` object being written
    contains a `nil` for an `@ServerTimestamp`-annotated field, it will be
    replaced with `FieldValue.serverTimestamp()` as it is sent.
  - [Firestore.Decoder](/Firestore_Decoder)
  - [Firestore.Encoder](/Firestore_Encoder)
  - [CardView](/CardView)
  - [CreditosView](/CreditosView)
  - [Deck](/Deck):
    A model for shuffling and dealing a deck of playing cards.
  - [KernelCommunicator](/KernelCommunicator):
    A struct with functions that the kernel and the code running inside the
    kernel use to talk to each other.
  - [KernelCommunicator.JupyterDisplayMessage](/KernelCommunicator_JupyterDisplayMessage):
    A single serialized display message for the Jupyter client.
    Corresponds to a ZeroMQ "multipart message".
  - [KernelCommunicator.ParentMessage](/KernelCommunicator_ParentMessage):
    ParentMessage identifies the request that causes things to happen.
    This lets Jupyter, for example, know which cell to display graphics
    messages in.
  - [KernelCommunicator.JupyterSession](/KernelCommunicator_JupyterSession):
    The data necessary to identify and sign outgoing jupyter messages.
  - [BenchmarkResult](/BenchmarkResult):
    A metric result which can be encoded.
  - [AnyChecker](/AnyChecker):
    A type-erased container for any `Checker`.
  - [CompositeChecker](/CompositeChecker):
    A collection of checkers which all visit the same `Markup` tree.
  - [AbstractContainsFormattedTextOnly](/AbstractContainsFormattedTextOnly):
    A document's abstract may only contain formatted text. Images and links are not allowed.
  - [DuplicateTopicsSections](/DuplicateTopicsSections):
    A `Document` may only have one level-2 "Topics" heading at the top level, since it serves as structured data for a documentation bundle's hierarchy.
  - [InvalidAdditionalTitle](/InvalidAdditionalTitle):
    A document should have a single title, i.e. a single first-level heading.
  - [MissingAbstract](/MissingAbstract):
    A document should have an abstract.
  - [NonInclusiveLanguageChecker](/NonInclusiveLanguageChecker):
    Checks for non-inclusive language in documentation.
  - [NonInclusiveLanguageChecker.Term](/NonInclusiveLanguageChecker_Term):
    A structure that represents a term to match in content.
  - [NonOverviewHeadingChecker](/NonOverviewHeadingChecker)
  - [SeeAlsoInTopicsHeadingChecker](/SeeAlsoInTopicsHeadingChecker)
  - [TopicsSectionWithoutSubheading](/TopicsSectionWithoutSubheading):
    A Topics section  should have at least one subheading.
  - [DocumentationNodeConverter](/DocumentationNodeConverter):
    A converter from documentation nodes to render nodes.
  - [RemoveAutomaticallyCuratedSeeAlsoSectionsTransformation](/RemoveAutomaticallyCuratedSeeAlsoSectionsTransformation):
    A transformation that removes automatically curated See Also sections.
  - [RemoveHierarchyTransformation](/RemoveHierarchyTransformation):
    This transformation removes the hierarchy information from a render node JSON,
    also getting rid of the dead references. It's useful to save space when the
    hierarchy information is not a key information to preserve.
  - [RemoveUnusedReferencesTransformation](/RemoveUnusedReferencesTransformation):
    A transformation that removes unused references from a render node.
  - [RenderNodeTransformationComposition](/RenderNodeTransformationComposition):
    A transformation that applies two transformations, one after the other.
  - [RenderNodeTransformationContext](/RenderNodeTransformationContext):
    A value that tracks state and state changes while transforming a render node.
  - [DocumentationCoverageOptions](/DocumentationCoverageOptions):
    Resolves and validates the arguments needed to enable the documentation coverage feature.
  - [DocumentationCoverageOptions.KindFilterOptions](/DocumentationCoverageOptions_KindFilterOptions):
    Represents kinds to select and display documentation coverage statistics for.
    Note: This enum is not meant to be persisted between runs
  - [ConvertService](/ConvertService):
    A service that converts documentation.
  - [DocumentationServer.Message](/DocumentationServer_Message):
    A message that can be provided to a documentation service.
  - [DocumentationServer.MessageType](/DocumentationServer_MessageType):
    A type of service message.
  - [DocumentationServerError](/DocumentationServerError):
    An error that occurs during the processing of a message by a documentation service.
  - [ConvertRequest](/ConvertRequest):
    A request to convert in-memory documentation.
  - [ConvertRequestContextWrapper](/ConvertRequestContextWrapper):
    A wrapper type that adds contextual information relating to a convert request.
  - [ConvertResponse](/ConvertResponse):
    A response for a successful documentation conversion.
  - [ConvertServiceError](/ConvertServiceError):
    An error that occurs during the processing of a documentation conversion request.
  - [IndexingRecord](/IndexingRecord):
    A structure containing indexing information for a `RenderNode`.
  - [IndexingRecord.Kind](/IndexingRecord_Kind):
    The kind of documentation for a search result.
  - [AvailabilityIndex.Info](/AvailabilityIndex_Info):
    A single entry in the index.
  - [InterfaceLanguage](/InterfaceLanguage):
    Interface Language identifies a programming language used to index a content of a documentation bundle.
  - [Platform](/Platform)
  - [Platform.Version](/Platform_Version)
  - [Platform.Name](/Platform_Name)
  - [RenderRelationshipsGroup](/RenderRelationshipsGroup):
    A structure holding the information about a given group of references.
    The group can have a title and an abstract that can be rendered if necessary.
  - [BundleData](/BundleData):
    The data associated with a documentation resource, for a specific trait collection.
  - [DataAsset](/DataAsset):
    A container for a collection of data that represent multiple ways to describe a single asset.
  - [DataTraitCollection](/DataTraitCollection):
    A collection of environment traits for an asset variant.
  - [AssetReference](/AssetReference):
    A reference to an asset.
  - [CodeColors](/CodeColors):
    A collection of colors that a renderer uses to highlight code.
  - [CodeColorsPreferenceKey](/CodeColorsPreferenceKey):
    Represents a code color-customization point for clients.
  - [SRGBColor](/SRGBColor):
    A color in the sRGB color space, with normalized components.
  - [AnyCodable](/AnyCodable):
    A type-erased codable value.
  - [Message](/Message):
    A message to send or receive from a documentation renderer using a communication bridge.
  - [MessageType](/MessageType):
    A description of the intent of a communication-bridge message.
  - [WebKitCommunicationBridge](/WebKitCommunicationBridge):
    Provides bi-directional communication with a documentation renderer via JavaScript calls in a web view.
  - [CoverageDataEntry](/CoverageDataEntry):
    `CoverageDataEntry` represents coverage data for one symbol/USR.
  - [Diagnostic](/Diagnostic):
    A diagnostic explains a problem or issue that needs the end-user's attention.
  - [DiagnosticFormattingOptions](/DiagnosticFormattingOptions):
    A type that encapsulate the possible formatting options for diagnostics.
  - [DiagnosticNote](/DiagnosticNote):
    A diagnostic note is a simple string message that should appear somewhere in a document.
  - [Problem](/Problem):
    A problem with a document along with possible solutions to the problem.
  - [Replacement](/Replacement):
    A textual replacement.
  - [Solution](/Solution):
    A solution to a `Problem`.
  - [PrintCursor](/PrintCursor):
    The line and column of a position in text.
  - [CursorRange](/CursorRange):
    A range in a document represented by a pair of line-column pairs.
  - [DocumentationBundle](/DocumentationBundle):
    A documentation bundle.
  - [DocumentationConverter](/DocumentationConverter):
    A converter from a documentation bundle to an output that can be consumed by a renderer.
  - [VersionTriplet](/VersionTriplet):
    A semantic version-number triplet with major, minor, and patch components.
  - [PlatformVersion](/PlatformVersion):
    A pair of a version number and beta information for a platform.
  - [ExternalMetadata](/ExternalMetadata):
    External metadata injected into the documentation compiler, for example via command line arguments.
  - [OutOfProcessReferenceResolver.ResolvedInformation](/OutOfProcessReferenceResolver_ResolvedInformation):
    A type used to transfer information about a resolved reference to DocC from from a reference resolver in another executable.
  - [NodeURLGenerator](/NodeURLGenerator)
  - [SymbolReference](/SymbolReference):
    A reference to a symbol, possibly defined in a symbol graph.
  - [AbsoluteSymbolLink](/AbsoluteSymbolLink):
    An absolute link to a symbol.
  - [AbsoluteSymbolLink.LinkComponent](/AbsoluteSymbolLink_LinkComponent):
    A component of a symbol link.
  - [AutomaticCuration](/AutomaticCuration):
    A set of functions that add automatic symbol curation to a topic graph.
  - [DefaultAvailability](/DefaultAvailability):
    A collection of modules and the default platform availability for symbols in that module.
  - [DefaultAvailability.ModuleAvailability](/DefaultAvailability_ModuleAvailability):
    A platform name and version number pair.
  - [DocumentationBundle.Info](/DocumentationBundle_Info):
    Information about a documentation bundle that's unrelated to its documentation content.
  - [BundleDiscoveryOptions](/BundleDiscoveryOptions):
    Options to configure the discovery of documentation bundles
  - [FSNode.File](/FSNode_File):
    A file in a virtual file system
  - [FSNode.Directory](/FSNode_Directory):
    A directory in a virtual file system.
  - [GeneratedDataProvider](/GeneratedDataProvider):
    A type that provides documentation bundles that it discovers by traversing the local file system.
  - [LocalFileSystemDataProvider](/LocalFileSystemDataProvider):
    A type that provides documentation bundles that it discovers by traversing the local file system.
  - [PrebuiltLocalFileSystemDataProvider](/PrebuiltLocalFileSystemDataProvider):
    A data provider that provides existing in-memory documentation bundles with files on the local filesystem.
  - [LinkDestinationSummary](/LinkDestinationSummary):
    A summary of an element that you can link to from outside the documentation bundle.
  - [LinkDestinationSummary.TaskGroup](/LinkDestinationSummary_TaskGroup):
    A collection of identifiers that all relate to some common task, as described by the title.
  - [AnchorSection](/AnchorSection):
    Section of a document that can be linked to.
  - [BuildMetadata](/BuildMetadata):
    A value that encapsulates metadata for a documentation bundle that DocC built.
  - [AttributedCodeListing](/AttributedCodeListing):
    A code block represented as lines of lexical tokens.
  - [AttributedCodeListing.Line](/AttributedCodeListing_Line):
    A single line of tokenized code in an attributed code listing.
  - [UnresolvedCodeListingReference](/UnresolvedCodeListingReference):
    A reference to a code listing that hasn't been resolved yet.
  - [DocumentationNode](/DocumentationNode):
    A documentation node holds all the information about a documentation entity's content.
  - [ResolvedTopicReference](/ResolvedTopicReference):
    A reference to a piece of documentation which has been verified to exist.
  - [UnresolvedTopicReference](/UnresolvedTopicReference):
    An unresolved reference to a documentation node.
  - [ResourceReference](/ResourceReference):
    A reference to an auxiliary resource such as an image.
  - [DocumentationNode.Kind](/DocumentationNode_Kind):
    The kind of a documentation node.
  - [RenderBlockContent.ListItem](/RenderBlockContent_ListItem):
    An item in a list.
  - [RenderBlockContent.TableRow](/RenderBlockContent_TableRow):
    A table row that contains a list of row cells.
  - [RenderBlockContent.TermListItem](/RenderBlockContent_TermListItem):
    A term definition.
  - [RenderBlockContent.TermListItem.Term](/RenderBlockContent_TermListItem_Term):
    A term rendered as content.
  - [RenderBlockContent.TermListItem.Definition](/RenderBlockContent_TermListItem_Definition):
    A definition rendered as a list of block-content elements.
  - [RenderContentMetadata](/RenderContentMetadata):
    Additional metadata that might belong to a content element.
  - [RenderReferenceDependencies](/RenderReferenceDependencies)
  - [DocumentationContentRenderer.ReferenceGroup](/DocumentationContentRenderer_ReferenceGroup):
    A value type to store an automatically curated task group and its sorting index.
  - [RenderHierarchyChapter](/RenderHierarchyChapter):
    A hierarchy tree node that represents a chapter in a tutorial series.
  - [RenderHierarchyLandmark](/RenderHierarchyLandmark):
    A hierarchy tree node that represents a landmark on a page.
  - [RenderHierarchyTutorial](/RenderHierarchyTutorial):
    A hierarchy tree node that represents a tutorial or a tutorial article.
  - [RenderReferenceHierarchy](/RenderReferenceHierarchy):
    A node that represents API symbol hierarchy.
  - [RenderTutorialsHierarchy](/RenderTutorialsHierarchy):
    A root node of a tutorials series hierarchy.
  - [PresentationURLGenerator](/PresentationURLGenerator):
    A type that generates URLs that you use to link to rendered pages.
  - [FileReference](/FileReference):
    A reference to a file resource.
  - [FileTypeReference](/FileTypeReference):
    A reference to a type of file.
  - [ImageReference](/ImageReference):
    A reference to an image.
  - [ImageReference.VariantProxy](/ImageReference_VariantProxy):
    A codable proxy value that the image reference uses to serialize information about its asset variants.
  - [LinkReference](/LinkReference):
    A reference to a URL.
  - [RenderReferenceIdentifier](/RenderReferenceIdentifier):
    The identifier of a render reference.
  - [TopicRenderReference](/TopicRenderReference):
    A reference to another page of documentation in the current context.
  - [UnresolvedRenderReference](/UnresolvedRenderReference):
    A reference to another page which cannot be resolved.
  - [VideoReference](/VideoReference):
    A reference to a video.
  - [VideoReference.VariantProxy](/VideoReference_VariantProxy):
    A codable proxy value that the video reference uses to serialize information about its asset variants.
  - [RenderContext](/RenderContext):
    A context object that pre-renders commonly used pieces of content.
  - [RenderNode.Tag](/RenderNode_Tag):
    A tag that can be assigned to a render node.
  - [RenderNode](/RenderNode):
    A rendering-friendly representation of a documentation node.
  - [AnyMetadata](/AnyMetadata):
    A type-erasing container for metadata.
  - [CodableContentSection](/CodableContentSection):
    A Codable container for reference pages sections.
  - [RenderMetadata](/RenderMetadata):
    Arbitrary metadata for a render node.
  - [RenderMetadata.Module](/RenderMetadata_Module):
    Metadata about a module dependency.
  - [RenderMetadata.CodingKeys](/RenderMetadata_CodingKeys)
  - [RenderNodeTranslator](/RenderNodeTranslator):
    A visitor which converts a semantic model into a render node.
  - [RenderNode.Variant](/RenderNode_Variant):
    A render node variant based on a collection of pre-defined traits.
  - [RenderReferenceStore](/RenderReferenceStore):
    A storage for render reference information.
  - [RenderReferenceStore.TopicContent](/RenderReferenceStore_TopicContent):
    Pre-rendered pieces of content for a given node.
  - [SemanticVersion](/SemanticVersion):
    A semantic version.
  - [AttributesRenderSection](/AttributesRenderSection):
    A section that contains a list of attributes.
  - [AvailabilityRenderItem](/AvailabilityRenderItem):
    Availability information of a symbol on a specific platform.
  - [ConformanceSection](/ConformanceSection):
    A section that contains a list of generic constraints for a symbol.
  - [ContentRenderSection](/ContentRenderSection):
    A section of documentation content.
  - [DeclarationsRenderSection](/DeclarationsRenderSection):
    A compound section that contains a list of declaration sections.
  - [DeclarationRenderSection](/DeclarationRenderSection):
    A section that contains a symbol declaration.
  - [DeclarationRenderSection.Token](/DeclarationRenderSection_Token):
    A lexical token to use in declarations.
  - [DiffAvailability](/DiffAvailability):
    An availability-change diff for a symbol, if that data is available.
  - [DiffAvailability.Info](/DiffAvailability_Info):
    An item describing an availability change.
  - [ParametersRenderSection](/ParametersRenderSection):
    A section that contains a list of parameters.
  - [ParameterRenderSection](/ParameterRenderSection):
    A section that contains a single, named parameter.
  - [PossibleValuesRenderSection](/PossibleValuesRenderSection):
    A section that lists a pre-defined list of possible values for a given symbol.
  - [PossibleValuesRenderSection.NamedValue](/PossibleValuesRenderSection_NamedValue):
    A named value and optional details content.
  - [PropertiesRenderSection](/PropertiesRenderSection):
    A section that contains a list of properties.
  - [RenderProperty](/RenderProperty):
    A named property with a declaration-style type, content, and
    an optional list of attributes.
  - [TypeDetails](/TypeDetails):
    A type's details, including whether it's an array, and optionally the element's type.
  - [RESTEndpointRenderSection](/RESTEndpointRenderSection):
    A section that contains a REST API endpoint.
  - [RESTEndpointRenderSection.Token](/RESTEndpointRenderSection_Token):
    A single token in a REST endpoint.
  - [CodeExample](/CodeExample):
    A section that contains a code example.
  - [CodeExample.Code](/CodeExample_Code):
    A piece of code.
  - [RelationshipsRenderSection](/RelationshipsRenderSection):
    A section that contains a list of symbol relationships of the same kind.
  - [SampleDownloadSection](/SampleDownloadSection):
    A section that contains download data for a sample project.
  - [TaskGroupRenderSection](/TaskGroupRenderSection):
    A task group section that contains links to other symbols.
  - [TutorialArticleSection](/TutorialArticleSection):
    A Tutorial Article section.
  - [LineHighlighter](/LineHighlighter):
    A utility type that computes highlighted lines for diffs between `Code`
    elements in a `TutorialSection`'s `Step`s.
  - [LineHighlighter.Highlight](/LineHighlighter_Highlight):
    A single line's highlight.
  - [DownloadReference](/DownloadReference):
    A reference to a resource that can be downloaded.
  - [XcodeRequirementReference](/XcodeRequirementReference):
    A reference to a version of Xcode that users of your documentation must use.
  - [IntroRenderSection](/IntroRenderSection):
    A generic high impact section that may be rendered differently depending on the page type.
  - [TutorialAssessmentsRenderSection](/TutorialAssessmentsRenderSection):
    A section that checks the user's understanding of the concepts presented in a tutorial.
  - [TutorialAssessmentsRenderSection.Assessment](/TutorialAssessmentsRenderSection_Assessment):
    A render-friendly representation of an assessment question.
  - [TutorialAssessmentsRenderSection.Assessment.Choice](/TutorialAssessmentsRenderSection_Assessment_Choice):
    A render-friendly representation of an answer to a
    multiple-choice assessment question.
  - [TutorialSectionsRenderSection](/TutorialSectionsRenderSection):
    A section of a Tutorial page.
  - [TutorialSectionsRenderSection.Section](/TutorialSectionsRenderSection_Section):
    A render-friendly representation of a tutorial section.
  - [RenderTile](/RenderTile):
    A render-friendly representation of a view that links
    to a specified type of content.
  - [CallToActionSection](/CallToActionSection):
    A section that prompts the user to perform an action.
  - [ContentAndMediaGroupSection](/ContentAndMediaGroupSection):
    A section that groups content and media sections.
  - [ContentAndMediaSection](/ContentAndMediaSection):
    A section containing textual content and media laid out horizontally or vertically.
  - [ResourcesRenderSection](/ResourcesRenderSection):
    A section that contains additional resources for learning about a technology.
  - [VolumeRenderSection](/VolumeRenderSection):
    Represents a volume containing a grouped list of tutorials.
  - [VolumeRenderSection.Chapter](/VolumeRenderSection_Chapter):
    A group in a volume.
  - [JSONPatchApplier](/JSONPatchApplier):
    A utility type for applying JSON patches.
  - [JSONPointer](/JSONPointer):
    A pointer to a specific value in a JSON document.
  - [RenderNodeVariantOverridesApplier](/RenderNodeVariantOverridesApplier):
    A utility type to apply variant overrides to an encoded render node.
  - [VariantCollection](/VariantCollection):
    A collection of variants for a render node value.
  - [VariantCollection.Variant](/VariantCollection_Variant):
    A variant for a render node value.
  - [VariantOverride](/VariantOverride):
    Defines an override for a JSON value for a set of traits.
  - [AbstractSection](/AbstractSection):
    A one-paragraph section that represents a symbol's abstract description.
  - [Implementation](/Implementation):
    An intermediate model to group together an implementation reference, its parent, and a fallback name.
  - [ImplementationsGroup](/ImplementationsGroup):
    A group that represents a list of a protocol-requirement implementations.
  - [DefaultImplementationsSection](/DefaultImplementationsSection):
    A section that contains default implementations of a protocol-requirement, for example a property or a method.
  - [DeprecatedSection](/DeprecatedSection):
    A section that contains deprecation information.
  - [DiscussionSection](/DiscussionSection)
  - [ParametersSection](/ParametersSection):
    A section that contains a function's parameters.
  - [RelationshipsGroup](/RelationshipsGroup):
    A group of symbol relationships.
  - [RelationshipsSection](/RelationshipsSection):
    A section that contains symbol-relationship groups.
  - [ReturnsSection](/ReturnsSection):
    A section that contains return value information for a function.
  - [SeeAlsoSection](/SeeAlsoSection):
    A section that contains groups of related symbols or external links.
  - [TopicsSection](/TopicsSection):
    A section that contains groups of symbols.
  - [SimpleTag](/SimpleTag):
    A generic documentation tag.
  - [Parameter](/Parameter):
    Documentation about a parameter for a symbol.
  - [Return](/Return):
    Documentation about a symbol's return value.
  - [Throw](/Throw):
    Documentation about a symbol's potential errors.
  - [SourceLanguage](/SourceLanguage):
    A programming language.
  - [TaskGroup](/TaskGroup):
    A collection of curated child topics.
  - [Semantic.Analyses.ExtractAll](/Semantic_Analyses_ExtractAll):
    Separates `children` into directives whose names match `Child.directiveName` and those remaining, attempting to convert extracted children to the semantic `Child` type.
  - [Semantic.Analyses.ExtractAllMarkup](/Semantic_Analyses_ExtractAllMarkup):
    Separates `children` into markup elements that are of a specific type without performing any further analysis.
  - [Semantic.Analyses.HasAtLeastOne](/Semantic_Analyses_HasAtLeastOne):
    Checks to see if a parent directive has at least one child directive of a specified type. If so, return those that match and those that don't.
  - [Semantic.Analyses.HasAtMostOne](/Semantic_Analyses_HasAtMostOne):
    Checks to see if a parent directive has at most one child directive of a specified type. If so, return that child and the remainder.
  - [Semantic.Analyses.HasContent](/Semantic_Analyses_HasContent):
    Checks to see if a directive has child markup content.
  - [Semantic.Analyses.HasExactlyOne](/Semantic_Analyses_HasExactlyOne):
    Checks a parent directive for the presence of exactly one child directive to be converted to a type `SemanticAnalysis/Result`. If so, return that child and the remainder.
  - [Semantic.Analyses.HasExactlyOneOf](/Semantic_Analyses_HasExactlyOneOf):
    Checks a parent directive for the presence of exactly one of two child directives—but not both—to be converted to a type `SemanticAnalysis/Result`. If so, return that child and the remainder.
  - [Semantic.Analyses.HasExactlyOneImageOrVideoMedia](/Semantic_Analyses_HasExactlyOneImageOrVideoMedia)
  - [Semantic.Analyses.HasExactlyOneMedia](/Semantic_Analyses_HasExactlyOneMedia)
  - [Semantic.Analyses.HasExactlyOneUnorderedList](/Semantic_Analyses_HasExactlyOneUnorderedList)
  - [Semantic.Analyses.HasOnlyKnownArguments](/Semantic_Analyses_HasOnlyKnownArguments)
  - [Semantic.Analyses.HasOnlyKnownDirectives](/Semantic_Analyses_HasOnlyKnownDirectives):
    Checks for any directives that are not valid as direct children of the parent directive.
  - [Semantic.Analyses.HasOnlySequentialHeadings](/Semantic_Analyses_HasOnlySequentialHeadings):
    Checks for any direct heading children that do not meet the minimum heading level (`startingFromLevel`) or that exceed the level of a previous *valid* heading by more than one.
  - [DocumentationDataVariants](/DocumentationDataVariants):
    A model type that encapsulates variants of documentation node data.
  - [DocumentationDataVariantsTrait](/DocumentationDataVariantsTrait):
    The trait associated with a variant of some piece of information about a documentation node.
  - [PlatformName](/PlatformName):
    A supported platform's name representation.
  - [Checksum](/Checksum):
    A checksum generator.
  - [ErrorWithProblems](/ErrorWithProblems):
    An error that contains a list of problems.
  - [ErrorsEncountered](/ErrorsEncountered):
    A general error that indicates that at least one error was encountered while compiling documentation.
  - [FeatureFlags](/FeatureFlags):
    A set of feature flags that conditionally enable (usually experimental) behavior in Swift-DocC.
  - [LMDB.Database.Flags](/LMDB_Database_Flags):
    The set of flags used by the database.
  - [LMDB.Database.WriteFlags](/LMDB_Database_WriteFlags):
    The set of flags used by the database when writing a value.
  - [LMDB.Environment.Flags](/LMDB_Environment_Flags):
    The set of flags used by the environment.
  - [EnglishLanguage](/EnglishLanguage):
    Functions providing tools for generating English language.
  - [NativeLanguage](/NativeLanguage):
    A structure allowing for adding further languages in the future.
  - [ValidatedURL](/ValidatedURL):
    An RFC 3986 compliant URL.
  - [Version](/Version):
    An arbitrary-length version tuple.
  - [ActionResult](/ActionResult):
    The result of executing an action.
  - [ConvertAction](/ConvertAction):
    An action that converts a source bundle into compiled documentation.
  - [CoverageAction](/CoverageAction):
    An action that creates documentation coverage info for a documentation bundle.
  - [IndexAction](/IndexAction):
    An action that creates an index of a documentation bundle.
  - [DocumentationArchiveOption](/DocumentationArchiveOption):
    Resolves and validates a URL value that provides the path to a documentation archive.
  - [DocumentationBundleOption](/DocumentationBundleOption):
    Resolves and validates a URL value that provides the path to a documentation bundle.
  - [DocumentationCoverageOptionsArgument](/DocumentationCoverageOptionsArgument):
    Resolves and validates the arguments needed to enable the documentation coverage feature.
  - [OutOfProcessLinkResolverOption](/OutOfProcessLinkResolverOption):
    Resolves and validates a link resolve executable URL that points to a link resolver executable.
  - [PreviewExternalConnectionOptions](/PreviewExternalConnectionOptions):
    Resolves and validates `username`, `password`,  `tlsCertificateChainURL`,  and `tlsCertificateKeyURL`
    values that can be used when configuring the preview server for external connections.
  - [PreviewOptions](/PreviewOptions):
    Resolves and validates the arguments needed to start a documentation preview server.
  - [TemplateOption](/TemplateOption):
    Resolves and validates a `templateURL` value that points to an HTML documentation template.
  - [Docc.Convert](/Docc_Convert):
    Converts a documentation bundle.
  - [Docc.Index](/Docc_Index):
    Indexes a documentation bundle.
  - [Docc.Preview](/Docc_Preview):
    Runs the `Convert` command and then sets up a web server that can be used to preview that documentation content.
  - [Docc](/Docc):
    The default, command-line interface you use to compile and preview documentation.
  - [Signal](/Signal):
    A handler that intercepts system signal-events.
  - [PillStoreView](/PillStoreView)
  - [StoreFinalView](/StoreFinalView)
  - [Queue](/Queue)
  - [Stack](/Stack)
  - [SymbolTable](/SymbolTable)
  - [SymbolTable.Index](/SymbolTable_Index)
  - [GameView](/GameView)
  - [WordAssessment](/WordAssessment):
    Model used to assess the learner's word knowledge. Utilizes `WordCard`
    and therefore`TranslatedWord`.
  - [WordCard](/WordCard):
    Provides a word challenge to complete with an origin word and translation to use
    for assessment (from `TranslatedWord`) and flags to use for measuring progress.
  - [TranslatedWord](/TranslatedWord):
    A `Codable` representation of a translated word with the original word (`original`), the `pronunciation`, and the `translation`.
    The model does not prescribe to a specific language and can be tailored to suit any human language as a source or (translation) target.
  - [WordAssessment](/WordAssessment):
    Model used to assess the learner's word knowledge. Utilizes `WordCard`
    and therefore`TranslatedWord`.
  - [WordCard](/WordCard):
    Provides a word challenge to complete with an origin word and translation to use
    for assessment (from `TranslatedWord`) and flags to use for measuring progress.
  - [TranslatedWord](/TranslatedWord):
    A `Codable` representation of a translated word with the original word (`original`), the `pronunciation`, and the `translation`.
    The model does not prescribe to a specific language and can be tailored to suit any human language as a source or (translation) target.
  - [CustomFilledButtonStyle](/CustomFilledButtonStyle)
  - [WordAssessment](/WordAssessment):
    Model used to assess the learner's word knowledge. Utilizes `WordCard`
    and therefore`TranslatedWord`.
  - [WordCard](/WordCard):
    Provides a word challenge to complete with an origin word and translation to use
    for assessment (from `TranslatedWord`) and flags to use for measuring progress.
  - [TranslatedWord](/TranslatedWord):
    A `Codable` representation of a translated word with the original word (`original`), the `pronunciation`, and the `translation`.
    The model does not prescribe to a specific language and can be tailored to suit any human language as a source or (translation) target.
  - [FlightHistory](/FlightHistory)
  - [FlightInformation](/FlightInformation)
  - [CustomFilledButtonStyle](/CustomFilledButtonStyle)
  - [WordAssessment](/WordAssessment):
    Model used to assess the learner's word knowledge. Utilizes `WordCard`
    and therefore`TranslatedWord`.
  - [WordCard](/WordCard):
    Provides a word challenge to complete with an origin word and translation to use
    for assessment (from `TranslatedWord`) and flags to use for measuring progress.
  - [TranslatedWord](/TranslatedWord):
    A `Codable` representation of a translated word with the original word (`original`), the `pronunciation`, and the `translation`.
    The model does not prescribe to a specific language and can be tailored to suit any human language as a source or (translation) target.
  - [FlightHistory](/FlightHistory)
  - [FlightInformation](/FlightInformation)
  - [FlightHistory](/FlightHistory)
  - [FlightInformation](/FlightInformation)
  - [FlightHistory](/FlightHistory)
  - [FlightInformation](/FlightInformation)
  - [QueueStack](/QueueStack)
  - [Stack](/Stack)

# Protocols

  - [URLConvertible](/URLConvertible):
    Types adopting the `URLConvertible` protocol can be used to construct URLs, which are then used to construct
    URL requests.
  - [URLRequestConvertible](/URLRequestConvertible):
    Types adopting the `URLRequestConvertible` protocol can be used to construct URL requests.
  - [ParameterEncoding](/ParameterEncoding):
    A type used to define how a set of parameters are applied to a `URLRequest`.
  - [RequestAdapter](/RequestAdapter):
    A type that can inspect and optionally adapt a `URLRequest` in some manner if necessary.
  - [RequestRetrier](/RequestRetrier):
    A type that determines whether a request should be retried after being executed by the specified session manager
    and encountering an error.
  - [DataResponseSerializerProtocol](/DataResponseSerializerProtocol):
    The type in which all data response serializers must conform to in order to serialize a response.
  - [DownloadResponseSerializerProtocol](/DownloadResponseSerializerProtocol):
    The type in which all download response serializers must conform to in order to serialize a response.
  - [Decodable](/Decodable)
  - [ActionType](/ActionType):
    This protocol is used when you want to make modifications to the store's state.
    All changes to the store go through this type.
  - [DynamicActionType](/DynamicActionType):
    This protocol is used when you want to do some async behavior that updates the
    store.  It is very minimal in that it's not allowed to modify the store
    directly. The async behavior is done within the `call` method and to make
    changes it should dispatch a synchronous action.
  - [ObservablePropertyType](/ObservablePropertyType):
    This is the protocol that the state the store holds must implement.
  - [StoreType](/StoreType):
    A protocol that defines storage of an observable state and dispatch methods to
    modify it. Typically you will implement this on a struct and create a shared
    instance that you reference throughout your application to get the state or
    dispatch actions to change it.
  - [Reusable](/Reusable)
  - [ActionProtocol](/ActionProtocol):
    A protocol used to constraint `Action` initializers.
  - [AtomicProtocol](/AtomicProtocol):
    A protocol used to constraint convenience `Atomic` methods and properties.
  - [Disposable](/Disposable):
    Represents something that can be “disposed”, usually associated with freeing
    resources or canceling work.
  - [EventProtocol](/EventProtocol):
    Event protocol for constraining signal extensions
  - [ObserverProtocol](/ObserverProtocol):
    A protocol for type-constrained extensions of `Observer`.
  - [OptionalProtocol](/OptionalProtocol):
    An optional protocol for use in type constraints.
  - [PropertyProtocol](/PropertyProtocol):
    Represents a property that allows observation of its changes.
  - [MutablePropertyProtocol](/MutablePropertyProtocol):
    Represents an observable property that can be mutated directly.
  - [ReactiveExtensionsProvider](/ReactiveExtensionsProvider):
    Describes a provider of reactive extensions.
  - [SchedulerProtocol](/SchedulerProtocol):
    Represents a serial queue of work items.
  - [DateSchedulerProtocol](/DateSchedulerProtocol):
    A particular kind of scheduler that supports enqueuing actions at future
    dates.
  - [SignalProtocol](/SignalProtocol):
    A protocol used to constraint `Signal` operators.
  - [SignalProducerProtocol](/SignalProducerProtocol):
    A protocol used to constraint `SignalProducer` operators.
  - [BindingSourceProtocol](/BindingSourceProtocol):
    Describes a source which can be bound.
  - [BindingTargetProtocol](/BindingTargetProtocol):
    Describes a target which can be bound.
  - [ResultProtocol](/ResultProtocol):
    A type that can represent either failure with an error or success with a result value.
  - [ErrorProtocolConvertible](/ErrorProtocolConvertible):
    Protocol used to constrain `tryMap` to `Result`s with compatible `Error`s.
  - [URLConvertible](/URLConvertible):
    Types adopting the `URLConvertible` protocol can be used to construct URLs, which are then used to construct
    URL requests.
  - [URLRequestConvertible](/URLRequestConvertible):
    Types adopting the `URLRequestConvertible` protocol can be used to construct URL requests.
  - [ParameterEncoding](/ParameterEncoding):
    A type used to define how a set of parameters are applied to a `URLRequest`.
  - [RequestAdapter](/RequestAdapter):
    A type that can inspect and optionally adapt a `URLRequest` in some manner if necessary.
  - [RequestRetrier](/RequestRetrier):
    A type that determines whether a request should be retried after being executed by the specified session manager
    and encountering an error.
  - [DataResponseSerializerProtocol](/DataResponseSerializerProtocol):
    The type in which all data response serializers must conform to in order to serialize a response.
  - [DownloadResponseSerializerProtocol](/DownloadResponseSerializerProtocol):
    The type in which all download response serializers must conform to in order to serialize a response.
  - [BulletinItem](/BulletinItem)
  - [AnimatorDelegate](/AnimatorDelegate)
  - [ChartViewDelegate](/ChartViewDelegate)
  - [IMarker](/IMarker)
  - [IBarChartDataSet](/IBarChartDataSet)
  - [IBarLineScatterCandleBubbleChartDataSet](/IBarLineScatterCandleBubbleChartDataSet)
  - [IBubbleChartDataSet](/IBubbleChartDataSet)
  - [ICandleChartDataSet](/ICandleChartDataSet)
  - [IChartDataSet](/IChartDataSet)
  - [ILineChartDataSet](/ILineChartDataSet)
  - [ILineRadarChartDataSet](/ILineRadarChartDataSet)
  - [ILineScatterCandleRadarChartDataSet](/ILineScatterCandleRadarChartDataSet)
  - [IPieChartDataSet](/IPieChartDataSet)
  - [IRadarChartDataSet](/IRadarChartDataSet)
  - [IScatterChartDataSet](/IScatterChartDataSet)
  - [IAxisValueFormatter](/IAxisValueFormatter):
    An interface for providing custom axis Strings.
  - [IFillFormatter](/IFillFormatter):
    Protocol for providing a custom logic to where the filling line of a LineDataSet should end. This of course only works if setFillEnabled(...) is set to true.
  - [IValueFormatter](/IValueFormatter):
    Interface that allows custom formatting of all values inside the chart before they are drawn to the screen.
  - [IHighlighter](/IHighlighter)
  - [BarChartDataProvider](/BarChartDataProvider)
  - [BarLineScatterCandleBubbleChartDataProvider](/BarLineScatterCandleBubbleChartDataProvider)
  - [BubbleChartDataProvider](/BubbleChartDataProvider)
  - [CandleChartDataProvider](/CandleChartDataProvider)
  - [ChartDataProvider](/ChartDataProvider)
  - [CombinedChartDataProvider](/CombinedChartDataProvider)
  - [LineChartDataProvider](/LineChartDataProvider)
  - [ScatterChartDataProvider](/ScatterChartDataProvider)
  - [IShapeRenderer](/IShapeRenderer)
  - [PlaceholdersSwitcher](/PlaceholdersSwitcher):
    Protocol allows to switch between the different placehodlers used by CollectionView and TableView
  - [PlaceholderDelegate](/PlaceholderDelegate):
    The delegate of a TableView/CollectionView object must adopt the PlaceholderDelegate protocol. the method of the protocol allow the delegate to perform placeholders action.
  - [PastelLabelable](/PastelLabelable)
  - [SPAlertIconAnimatable](/SPAlertIconAnimatable):
    Protocol for generate animatable icon.
  - [Appearance](/Appearance)
  - [SkeletonCollectionViewDataSource](/SkeletonCollectionViewDataSource)
  - [SkeletonCollectionViewDelegate](/SkeletonCollectionViewDelegate)
  - [SkeletonReusableCell](/SkeletonReusableCell)
  - [SkeletonTableViewDataSource](/SkeletonTableViewDataSource)
  - [SkeletonTableViewDelegate](/SkeletonTableViewDelegate)
  - [CircularScrollingConfigurationState](/CircularScrollingConfigurationState)
  - [CircularScrollingConfiguration](/CircularScrollingConfiguration)
  - [SpreadsheetViewDataSource](/SpreadsheetViewDataSource):
    Implement this protocol to provide data to an `SpreadsheetView`.
  - [SpreadsheetViewDelegate](/SpreadsheetViewDelegate):
    The `SpreadsheetViewDelegate` protocol defines methods that allow you to manage the selection and
    highlighting of cells in a spreadsheet view and to perform actions on those cells.
    The methods of this protocol are all optional.
  - [Animation](/Animation):
    An animation type that handles how the views will change. Most of these are simply wrappers around the standard `UIViewAnimation` methods. This gives `Spruce` the flexibility to work with any style of animating.
  - [CornerSortFunction](/CornerSortFunction):
    A `DistanceSortFunction` that uses a corner attribute to define an animation's starting point.
  - [DirectionSortFunction](/DirectionSortFunction):
    A `DistanceSortFunction` that defines it's `distancePoint` based on a `Direction`. Any distance based sort functions that use a direction variable in order to determine the setup of the animation should implement this protocol.
  - [DistanceSortFunction](/DistanceSortFunction):
    A `SortFunction` implementation that contain basic methods needed for doing distance comparisons. If you are implementing a `SortFunction` that considers distance to be one of it's weighting mechanisms for sorting the views on the screen, then implementing this protocol would provide improvements over the standard `SortFunction`.
  - [PositionSortFunction](/PositionSortFunction):
    A `DistanceSortFunction` that uses a position attribute to define an animation's starting point.
  - [SortFunction](/SortFunction):
    For all the views on the screen, we need to find some way of organizing them so that when we start the animation, each view will know when to start their individual animation. The concept of a `SortFunction` is just that. Given a view, the subviews of that view are sorted in a way that when animated they resemble the nature of that sort function. There are many different types of sort functions because there are so many ways to sort the subviews that are on the screen. If you don't see a stock one that fits your need, feel free to implement this protocol and use your own custom `SortFunction` with Spruce.
  - [WeightSortFunction](/WeightSortFunction):
    A `SortFunction` that takes into account the vertical and horizontal weight of the position of views. The lighter the weight the the faster those views will start to animate. For example, if you had a light `verticalWeight` and a heavy `horizontalWeight`, the views that are vertically aligned with the starting position will animate before those that are horizontally aligned. This allows you to define the exact rigidness of a `radial` like `SortFunction`.
  - [View](/View):
    Used to keep track of the `UIView` object and a changing reference point. Since Spruce allows for
    recursive subview lookup, we need to handle changing the coordinate space. Once the coordinate space
    has been accounted for we can then alter the reference point.
  - [Animation](/Animation):
    Animation protocol defines the initial transform for a view for it to
    animate to its identity position.
  - [QueueProtocol](/QueueProtocol)
  - [Queue](/Queue)
  - [BulletinItem](/BulletinItem)
  - [PastelLabelable](/PastelLabelable)
  - [SPAlertIconAnimatable](/SPAlertIconAnimatable):
    Protocol for generate animatable icon.
  - [URLConvertible](/URLConvertible):
    Types adopting the `URLConvertible` protocol can be used to construct URLs, which are then used to construct
    URL requests.
  - [URLRequestConvertible](/URLRequestConvertible):
    Types adopting the `URLRequestConvertible` protocol can be used to construct URL requests.
  - [ParameterEncoding](/ParameterEncoding):
    A type used to define how a set of parameters are applied to a `URLRequest`.
  - [RequestAdapter](/RequestAdapter):
    A type that can inspect and optionally adapt a `URLRequest` in some manner if necessary.
  - [RequestRetrier](/RequestRetrier):
    A type that determines whether a request should be retried after being executed by the specified session manager
    and encountering an error.
  - [DataResponseSerializerProtocol](/DataResponseSerializerProtocol):
    The type in which all data response serializers must conform to in order to serialize a response.
  - [DownloadResponseSerializerProtocol](/DownloadResponseSerializerProtocol):
    The type in which all download response serializers must conform to in order to serialize a response.
  - [TimePeriodProtocol](/TimePeriodProtocol)
  - [PastelLabelable](/PastelLabelable)
  - [SPAlertIconAnimatable](/SPAlertIconAnimatable)
  - [QueueProtocol](/QueueProtocol)
  - [OCFileInput](/OCFileInput)
  - [OCLexInput](/OCLexInput)
  - [SemanticErrorDelegate](/SemanticErrorDelegate)
  - [AlamofireExtended](/AlamofireExtended):
    Protocol describing the `af` extension points for Alamofire extended types.
  - [AuthenticationCredential](/AuthenticationCredential):
    Types adopting the `AuthenticationCredential` protocol can be used to authenticate `URLRequest`s.
  - [Authenticator](/Authenticator):
    Types adopting the `Authenticator` protocol can be used to authenticate `URLRequest`s with an
    `AuthenticationCredential` as well as refresh the `AuthenticationCredential` when required.
  - [CachedResponseHandler](/CachedResponseHandler):
    A type that handles whether the data task should store the HTTP response in the cache.
  - [EventMonitor](/EventMonitor):
    Protocol outlining the lifetime events inside Alamofire. It includes both events received from the various
    `URLSession` delegate protocols as well as various events from the lifetime of `Request` and its subclasses.
  - [ParameterEncoder](/ParameterEncoder):
    A type that can encode any `Encodable` type into a `URLRequest`.
  - [ParameterEncoding](/ParameterEncoding):
    A type used to define how a set of parameters are applied to a `URLRequest`.
  - [RedirectHandler](/RedirectHandler):
    A type that handles how an HTTP redirect response from a remote server should be redirected to the new request.
  - [RequestDelegate](/RequestDelegate):
    Protocol abstraction for `Request`'s communication back to the `SessionDelegate`.
  - [UploadableConvertible](/UploadableConvertible):
    A type that can produce an `UploadRequest.Uploadable` value.
  - [UploadConvertible](/UploadConvertible):
    A type that can be converted to an upload, whether from an `UploadRequest.Uploadable` or `URLRequestConvertible`.
  - [RequestAdapter](/RequestAdapter):
    A type that can inspect and optionally adapt a `URLRequest` in some manner if necessary.
  - [RequestRetrier](/RequestRetrier):
    A type that determines whether a request should be retried after being executed by the specified session manager
    and encountering an error.
  - [RequestInterceptor](/RequestInterceptor):
    Type that provides both `RequestAdapter` and `RequestRetrier` functionality.
  - [DataResponseSerializerProtocol](/DataResponseSerializerProtocol):
    The type to which all data response serializers must conform in order to serialize a response.
  - [DownloadResponseSerializerProtocol](/DownloadResponseSerializerProtocol):
    The type to which all download response serializers must conform in order to serialize a response.
  - [ResponseSerializer](/ResponseSerializer):
    A serializer that can handle both data and download responses.
  - [DataPreprocessor](/DataPreprocessor):
    Type used to preprocess `Data` before it handled by a serializer.
  - [EmptyResponse](/EmptyResponse):
    Protocol representing an empty response. Use `T.emptyValue()` to get an instance.
  - [DataDecoder](/DataDecoder):
    Any type which can decode `Data` into a `Decodable` type.
  - [DataStreamSerializer](/DataStreamSerializer):
    A type which can serialize incoming `Data`.
  - [ServerTrustEvaluating](/ServerTrustEvaluating):
    A protocol describing the API used to evaluate server trusts.
  - [URLConvertible](/URLConvertible):
    Types adopting the `URLConvertible` protocol can be used to construct `URL`s, which can then be used to construct
    `URLRequests`.
  - [URLRequestConvertible](/URLRequestConvertible):
    Types adopting the `URLRequestConvertible` protocol can be used to safely construct `URLRequest`s.
  - [AlamofireExtended](/AlamofireExtended):
    Protocol describing the `af` extension points for Alamofire extended types.
  - [AuthenticationCredential](/AuthenticationCredential):
    Types adopting the `AuthenticationCredential` protocol can be used to authenticate `URLRequest`s.
  - [Authenticator](/Authenticator):
    Types adopting the `Authenticator` protocol can be used to authenticate `URLRequest`s with an
    `AuthenticationCredential` as well as refresh the `AuthenticationCredential` when required.
  - [CachedResponseHandler](/CachedResponseHandler):
    A type that handles whether the data task should store the HTTP response in the cache.
  - [EventMonitor](/EventMonitor):
    Protocol outlining the lifetime events inside Alamofire. It includes both events received from the various
    `URLSession` delegate protocols as well as various events from the lifetime of `Request` and its subclasses.
  - [ParameterEncoder](/ParameterEncoder):
    A type that can encode any `Encodable` type into a `URLRequest`.
  - [ParameterEncoding](/ParameterEncoding):
    A type used to define how a set of parameters are applied to a `URLRequest`.
  - [RedirectHandler](/RedirectHandler):
    A type that handles how an HTTP redirect response from a remote server should be redirected to the new request.
  - [RequestDelegate](/RequestDelegate):
    Protocol abstraction for `Request`'s communication back to the `SessionDelegate`.
  - [UploadableConvertible](/UploadableConvertible):
    A type that can produce an `UploadRequest.Uploadable` value.
  - [UploadConvertible](/UploadConvertible):
    A type that can be converted to an upload, whether from an `UploadRequest.Uploadable` or `URLRequestConvertible`.
  - [RequestAdapter](/RequestAdapter):
    A type that can inspect and optionally adapt a `URLRequest` in some manner if necessary.
  - [RequestRetrier](/RequestRetrier):
    A type that determines whether a request should be retried after being executed by the specified session manager
    and encountering an error.
  - [RequestInterceptor](/RequestInterceptor):
    Type that provides both `RequestAdapter` and `RequestRetrier` functionality.
  - [DataResponseSerializerProtocol](/DataResponseSerializerProtocol):
    The type to which all data response serializers must conform in order to serialize a response.
  - [DownloadResponseSerializerProtocol](/DownloadResponseSerializerProtocol):
    The type to which all download response serializers must conform in order to serialize a response.
  - [ResponseSerializer](/ResponseSerializer):
    A serializer that can handle both data and download responses.
  - [DataPreprocessor](/DataPreprocessor):
    Type used to preprocess `Data` before it handled by a serializer.
  - [EmptyResponse](/EmptyResponse):
    Protocol representing an empty response. Use `T.emptyValue()` to get an instance.
  - [DataDecoder](/DataDecoder):
    Any type which can decode `Data` into a `Decodable` type.
  - [DataStreamSerializer](/DataStreamSerializer):
    A type which can serialize incoming `Data`.
  - [ServerTrustEvaluating](/ServerTrustEvaluating):
    A protocol describing the API used to evaluate server trusts.
  - [URLConvertible](/URLConvertible):
    Types adopting the `URLConvertible` protocol can be used to construct `URL`s, which can then be used to construct
    `URLRequests`.
  - [URLRequestConvertible](/URLRequestConvertible):
    Types adopting the `URLRequestConvertible` protocol can be used to safely construct `URLRequest`s.
  - [ImageCache](/ImageCache):
    The `ImageCache` protocol defines a set of APIs for adding, removing and fetching images from a cache.
  - [ImageRequestCache](/ImageRequestCache):
    The `ImageRequestCache` protocol extends the `ImageCache` protocol by adding methods for adding, removing and
    fetching images from a cache given an `URLRequest` and additional identifier.
  - [ImageFilter](/ImageFilter):
    The `ImageFilter` protocol defines properties for filtering an image as well as identification of the filter.
  - [Sizable](/Sizable):
    The `Sizable` protocol defines a size property intended for use with `ImageFilter` types.
  - [Roundable](/Roundable):
    The `Roundable` protocol defines a radius property intended for use with `ImageFilter` types.
  - [CompositeImageFilter](/CompositeImageFilter):
    The `CompositeImageFilter` protocol defines an additional `filters` property to support multiple composite filters.
  - [CoreImageFilter](/CoreImageFilter):
    The `CoreImageFilter` protocol defines `parameters`, `filterName` properties used by CoreImage.
  - [ExtraCompatible](/ExtraCompatible):
    A type that has Extra extensions.
  - [JellyPresentation](/JellyPresentation):
    The JellyPresentation protocol defines which properties a basic presentation should provide
    Maybe we could use a class hierarchy to abstract all the different types better than using protocols for that
  - [AlignablePresentation](/AlignablePresentation):
    If a presentation is Alginable it provides vertical and horizontal alignment options
  - [DynamicPresentation](/DynamicPresentation)
  - [PastelLabelable](/PastelLabelable)
  - [ItemType](/ItemType)
  - [SOTabBarControllerDelegate](/SOTabBarControllerDelegate)
  - [SPAlertIconAnimatable](/SPAlertIconAnimatable):
    Protocol for generate animatable icon.
  - [SPStorkControllerConfirmDelegate](/SPStorkControllerConfirmDelegate)
  - [SPStorkControllerDelegate](/SPStorkControllerDelegate)
  - [Appearance](/Appearance)
  - [SkeletonCollectionViewDataSource](/SkeletonCollectionViewDataSource)
  - [SkeletonCollectionViewDelegate](/SkeletonCollectionViewDelegate)
  - [SkeletonReusableCell](/SkeletonReusableCell)
  - [SkeletonTableViewDataSource](/SkeletonTableViewDataSource)
  - [SkeletonTableViewDelegate](/SkeletonTableViewDelegate)
  - [StarsKitDelegate](/StarsKitDelegate):
    StarsKit events delegate
  - [StarsKitUIDelegate](/StarsKitUIDelegate):
    StarsKit UI event delegation
  - [RateView](/RateView)
  - [RateViewDelegate](/RateViewDelegate)
  - [Animation](/Animation):
    Animation protocol defines the initial transform for a view for it to
    animate to its identity position.
  - [AlamofireExtended](/AlamofireExtended):
    Protocol describing the `af` extension points for Alamofire extended types.
  - [AuthenticationCredential](/AuthenticationCredential):
    Types adopting the `AuthenticationCredential` protocol can be used to authenticate `URLRequest`s.
  - [Authenticator](/Authenticator):
    Types adopting the `Authenticator` protocol can be used to authenticate `URLRequest`s with an
    `AuthenticationCredential` as well as refresh the `AuthenticationCredential` when required.
  - [CachedResponseHandler](/CachedResponseHandler):
    A type that handles whether the data task should store the HTTP response in the cache.
  - [EventMonitor](/EventMonitor):
    Protocol outlining the lifetime events inside Alamofire. It includes both events received from the various
    `URLSession` delegate protocols as well as various events from the lifetime of `Request` and its subclasses.
  - [ParameterEncoder](/ParameterEncoder):
    A type that can encode any `Encodable` type into a `URLRequest`.
  - [ParameterEncoding](/ParameterEncoding):
    A type used to define how a set of parameters are applied to a `URLRequest`.
  - [RedirectHandler](/RedirectHandler):
    A type that handles how an HTTP redirect response from a remote server should be redirected to the new request.
  - [RequestDelegate](/RequestDelegate):
    Protocol abstraction for `Request`'s communication back to the `SessionDelegate`.
  - [UploadableConvertible](/UploadableConvertible):
    A type that can produce an `UploadRequest.Uploadable` value.
  - [UploadConvertible](/UploadConvertible):
    A type that can be converted to an upload, whether from an `UploadRequest.Uploadable` or `URLRequestConvertible`.
  - [RequestAdapter](/RequestAdapter):
    A type that can inspect and optionally adapt a `URLRequest` in some manner if necessary.
  - [RequestRetrier](/RequestRetrier):
    A type that determines whether a request should be retried after being executed by the specified session manager
    and encountering an error.
  - [RequestInterceptor](/RequestInterceptor):
    Type that provides both `RequestAdapter` and `RequestRetrier` functionality.
  - [DataResponseSerializerProtocol](/DataResponseSerializerProtocol):
    The type to which all data response serializers must conform in order to serialize a response.
  - [DownloadResponseSerializerProtocol](/DownloadResponseSerializerProtocol):
    The type to which all download response serializers must conform in order to serialize a response.
  - [ResponseSerializer](/ResponseSerializer):
    A serializer that can handle both data and download responses.
  - [DataPreprocessor](/DataPreprocessor):
    Type used to preprocess `Data` before it handled by a serializer.
  - [EmptyResponse](/EmptyResponse):
    Protocol representing an empty response. Use `T.emptyValue()` to get an instance.
  - [DataDecoder](/DataDecoder):
    Any type which can decode `Data` into a `Decodable` type.
  - [DataStreamSerializer](/DataStreamSerializer):
    A type which can serialize incoming `Data`.
  - [ServerTrustEvaluating](/ServerTrustEvaluating):
    A protocol describing the API used to evaluate server trusts.
  - [URLConvertible](/URLConvertible):
    Types adopting the `URLConvertible` protocol can be used to construct `URL`s, which can then be used to construct
    `URLRequests`.
  - [URLRequestConvertible](/URLRequestConvertible):
    Types adopting the `URLRequestConvertible` protocol can be used to safely construct `URLRequest`s.
  - [BulletinItem](/BulletinItem)
  - [DocumentIDWrappable](/DocumentIDWrappable):
    A type that can initialize itself from a Firestore `DocumentReference`,
    which makes it suitable for use with the `@DocumentID` property wrapper.
  - [ServerTimestampWrappable](/ServerTimestampWrappable):
    A type that can initialize itself from a Firestore Timestamp, which makes
    it suitable for use with the `@ServerTimestamp` property wrapper.
  - [SPAlertIconAnimatable](/SPAlertIconAnimatable):
    SPAlert: Protocol for animatable views.
  - [BenchmarkMetric](/BenchmarkMetric):
    A generic, named metric.
  - [DynamicallyIdentifiableMetric](/DynamicallyIdentifiableMetric):
    A metric which could dynamically provide a custom id and name.
  - [BenchmarkBlockMetric](/BenchmarkBlockMetric):
    A metric that runs over a period of time and needs
    to be started and stopped to produce its result.
  - [Checker](/Checker):
    A markup checker.
  - [RenderNodeTransforming](/RenderNodeTransforming):
    A type that modifies a render node.
  - [DocumentationServerProtocol](/DocumentationServerProtocol):
    Protocol for request-response based servers.
  - [DocumentationService](/DocumentationService):
    A service for processing documentation requests.
  - [TextIndexing](/TextIndexing):
    A value that can collect plain text content for use in search indexing.
  - [Indexable](/Indexable):
    A value that can provide search results.
  - [RenderNodeProvider](/RenderNodeProvider):
    A protocol to provide data to be indexed.
  - [Serializable](/Serializable):
    Defines an object that can be represented as raw Data and therefore serialized to/deserialized from disk.
  - [CommunicationBridge](/CommunicationBridge):
    A bridge that provides bi-directional communication with a documentation renderer.
  - [ConvertOutputConsumer](/ConvertOutputConsumer):
    A consumer for output produced by a documentation conversion.
  - [DiagnosticConsumer](/DiagnosticConsumer):
    A type that can receive diagnostics.
  - [DiagnosticFormattingConsumer](/DiagnosticFormattingConsumer):
    A type that can format received diagnostics in way that's suitable for writing to a destination such as a file or `TextOutputStream`.
  - [DocumentationContextDataProvider](/DocumentationContextDataProvider):
    A type that provides information about documentation bundles and their content.
  - [DocumentationContextDataProviderDelegate](/DocumentationContextDataProviderDelegate):
    An object that responds to changes in available documentation bundles for a specific provider.
  - [DocumentationConverterProtocol](/DocumentationConverterProtocol):
    A converter from a documentation bundle to an output that can be consumed by a renderer.
  - [ExternalReferenceResolver](/ExternalReferenceResolver):
    A type that resolves references to documentation outside of the documentation bundle, and creates documentation nodes with basic information about the resolved references.
  - [ExternalSymbolResolver](/ExternalSymbolResolver):
    A type that resolves references to symbols outside of the documentation bundle and creates documentation nodes with basic information about the resolved symbol.
  - [FallbackAssetResolver](/FallbackAssetResolver):
    An asset resolver that can be used to resolve assets that couldn't be resolved locally.
  - [FallbackReferenceResolver](/FallbackReferenceResolver):
    An reference resolver that can be used to resolve references that couldn't be resolved locally.
  - [DocCSymbolRepresentable](/DocCSymbolRepresentable):
    A type that can be converted to a DocC symbol.
  - [DocumentationWorkspaceDataProvider](/DocumentationWorkspaceDataProvider):
    A type that vends bundles and responds to requests for data.
  - [FileSystemProvider](/FileSystemProvider):
    A type that vends a tree of virtual filesystem objects.
  - [MediaReference](/MediaReference):
    A reference to media, such as an image or a video.
  - [RenderReference](/RenderReference):
    A reference to a resource.
  - [URLReference](/URLReference):
    A reference that has a file.
  - [RenderTree](/RenderTree)
  - [RenderSection](/RenderSection)
  - [VariantContainer](/VariantContainer):
    A type that contains variant collections.
  - [Section](/Section):
    A structured piece of documentation content.
  - [GroupedSection](/GroupedSection):
    A generic section that contains groups of links.
  - [MarkupConvertible](/MarkupConvertible):
    A type that can be initialized from markup.
  - [DirectiveConvertible](/DirectiveConvertible):
    A semantic object formed from a directive after a series of semantic analysis checks.
  - [Landmark](/Landmark):
    A linkable point on a page.
  - [SemanticAnalysis](/SemanticAnalysis):
    A focused semantic analysis of a `BlockDirective`, recording problems and producing a result.
  - [TechnologyBound](/TechnologyBound):
    An entity directly referring to the technology it belongs to.
  - [SemanticVisitor](/SemanticVisitor):
    Visits `Semantic` nodes and returns a result.
  - [SemanticWalker](/SemanticWalker):
    An interface for walking a `Semantic` tree without altering it.
  - [FileServerProvider](/FileServerProvider):
    A protocol used for serving content to a `FileServer`. The data can then come from multiple sources such as:
  - [DescribedError](/DescribedError):
    An error that offers a plain-text error message.
  - [LMDBData](/LMDBData):
    A type with a customized data representation suited for storage inside an LMDB database.
  - [AnyLink](/AnyLink):
    Any kind of `Markdown.Markup` element that has a `destination` property.
  - [Action](/Action):
    An independent unit of work in the command-line workflow.
  - [RecreatingContext](/RecreatingContext):
    An action for which you can optionally customize the documentation context.
  - [DirectoryPathOption](/DirectoryPathOption):
    A parsable argument for an optional directory path.
  - [QueueProtocol](/QueueProtocol)
  - [Queue](/Queue)

# Global Typealiases

  - [Parameters](/Parameters):
    A dictionary of parameters to apply to a `URLRequest`.
  - [RequestRetryCompletion](/RequestRetryCompletion):
    A closure executed when the `RequestRetrier` determines whether a `Request` should be retried or not.
  - [HTTPHeaders](/HTTPHeaders):
    A dictionary of headers to apply to a `URLRequest`.
  - [EventLogger](/EventLogger):
    A type that represents an event logging function.
  - [ResultType](/ResultType)
  - [ResultErrorType](/ResultErrorType)
  - [ErrorTypeConvertible](/ErrorTypeConvertible)
  - [Parameters](/Parameters):
    A dictionary of parameters to apply to a `URLRequest`.
  - [RequestRetryCompletion](/RequestRetryCompletion):
    A closure executed when the `RequestRetrier` determines whether a `Request` should be retried or not.
  - [HTTPHeaders](/HTTPHeaders):
    A dictionary of headers to apply to a `URLRequest`.
  - [ChartEasingFunctionBlock](/ChartEasingFunctionBlock)
  - [NSUIFont](/NSUIFont)
  - [NSUIColor](/NSUIColor)
  - [NSUIEvent](/NSUIEvent)
  - [NSUITouch](/NSUITouch)
  - [NSUIImage](/NSUIImage)
  - [NSUIScrollView](/NSUIScrollView)
  - [NSUIGestureRecognizer](/NSUIGestureRecognizer)
  - [NSUIGestureRecognizerState](/NSUIGestureRecognizerState)
  - [NSUIGestureRecognizerDelegate](/NSUIGestureRecognizerDelegate)
  - [NSUITapGestureRecognizer](/NSUITapGestureRecognizer)
  - [NSUIPanGestureRecognizer](/NSUIPanGestureRecognizer)
  - [NSUIPinchGestureRecognizer](/NSUIPinchGestureRecognizer)
  - [NSUIRotationGestureRecognizer](/NSUIRotationGestureRecognizer)
  - [NSUIScreen](/NSUIScreen)
  - [NSUIDisplayLink](/NSUIDisplayLink)
  - [NSUIFont](/NSUIFont)
  - [NSUIColor](/NSUIColor)
  - [NSUIEvent](/NSUIEvent)
  - [NSUITouch](/NSUITouch)
  - [NSUIImage](/NSUIImage)
  - [NSUIScrollView](/NSUIScrollView)
  - [NSUIGestureRecognizer](/NSUIGestureRecognizer)
  - [NSUIGestureRecognizerState](/NSUIGestureRecognizerState)
  - [NSUIGestureRecognizerDelegate](/NSUIGestureRecognizerDelegate)
  - [NSUITapGestureRecognizer](/NSUITapGestureRecognizer)
  - [NSUIPanGestureRecognizer](/NSUIPanGestureRecognizer)
  - [NSUIPinchGestureRecognizer](/NSUIPinchGestureRecognizer)
  - [NSUIRotationGestureRecognizer](/NSUIRotationGestureRecognizer)
  - [NSUIScreen](/NSUIScreen)
  - [ReusableCellIdentifier](/ReusableCellIdentifier)
  - [SkeletonLayerAnimation](/SkeletonLayerAnimation)
  - [Grids](/Grids)
  - [ChangeFunction](/ChangeFunction)
  - [CompletionHandler](/CompletionHandler)
  - [PrepareHandler](/PrepareHandler)
  - [Parameters](/Parameters):
    A dictionary of parameters to apply to a `URLRequest`.
  - [RequestRetryCompletion](/RequestRetryCompletion):
    A closure executed when the `RequestRetrier` determines whether a `Request` should be retried or not.
  - [HTTPHeaders](/HTTPHeaders):
    A dictionary of headers to apply to a `URLRequest`.
  - [🔳](/%F0%9F%94%B3)
  - [Parameters](/Parameters):
    A dictionary of parameters to apply to a `URLRequest`.
  - [AdaptHandler](/AdaptHandler):
    `RequestAdapter` closure definition.
  - [RetryHandler](/RetryHandler):
    `RequestRetrier` closure definition.
  - [AFDataResponse](/AFDataResponse):
    Default type of `DataResponse` returned by Alamofire, with an `AFError` `Failure` type.
  - [AFDownloadResponse](/AFDownloadResponse):
    Default type of `DownloadResponse` returned by Alamofire, with an `AFError` `Failure` type.
  - [AFResult](/AFResult):
    Default type of `Result` returned by Alamofire, with an `AFError` `Failure` type.
  - [DisabledEvaluator](/DisabledEvaluator):
    Disables all evaluation which in turn will always consider any server trust as valid.
  - [Parameters](/Parameters):
    A dictionary of parameters to apply to a `URLRequest`.
  - [AdaptHandler](/AdaptHandler):
    `RequestAdapter` closure definition.
  - [RetryHandler](/RetryHandler):
    `RequestRetrier` closure definition.
  - [AFDataResponse](/AFDataResponse):
    Default type of `DataResponse` returned by Alamofire, with an `AFError` `Failure` type.
  - [AFDownloadResponse](/AFDownloadResponse):
    Default type of `DownloadResponse` returned by Alamofire, with an `AFError` `Failure` type.
  - [AFResult](/AFResult):
    Default type of `Result` returned by Alamofire, with an `AFError` `Failure` type.
  - [DisabledEvaluator](/DisabledEvaluator):
    Disables all evaluation which in turn will always consider any server trust as valid.
  - [Image](/Image)
  - [Image](/Image)
  - [AFIDataResponse](/AFIDataResponse):
    Alias for `DataResponse<T, AFIError>`.
  - [AFIResult](/AFIResult):
    Alias for `Result<T, AFIError>`.
  - [ControlState](/ControlState)
  - [AnimationOptions](/AnimationOptions)
  - [GradientLoadingBar](/GradientLoadingBar):
    Type-alias for the controller to match pod name.
  - [NotchGradientLoadingBar](/NotchGradientLoadingBar):
    Type-alias for the controller to be more similar to the pod name.
  - [DisposeBag](/DisposeBag):
    Helper to allow storing multiple disposables and matching name from [RxSwift](https://github.com/ReactiveX/RxSwift).
  - [ReusableCellIdentifier](/ReusableCellIdentifier)
  - [ReusableHeaderFooterIdentifier](/ReusableHeaderFooterIdentifier)
  - [SkeletonLayerAnimation](/SkeletonLayerAnimation)
  - [Parameters](/Parameters):
    A dictionary of parameters to apply to a `URLRequest`.
  - [AdaptHandler](/AdaptHandler):
    `RequestAdapter` closure definition.
  - [RetryHandler](/RetryHandler):
    `RequestRetrier` closure definition.
  - [AFDataResponse](/AFDataResponse):
    Default type of `DataResponse` returned by Alamofire, with an `AFError` `Failure` type.
  - [AFDownloadResponse](/AFDownloadResponse):
    Default type of `DownloadResponse` returned by Alamofire, with an `AFError` `Failure` type.
  - [AFResult](/AFResult):
    Default type of `Result` returned by Alamofire, with an `AFError` `Failure` type.
  - [DisabledEvaluator](/DisabledEvaluator):
    Disables all evaluation which in turn will always consider any server trust as valid.
  - [Converter](/Converter):
    A converter that coverts documentation nodes to render nodes.
  - [RenderNodeTransformation](/RenderNodeTransformation):
    A type that modifies a render node.
  - [BasicDiagnostic](/BasicDiagnostic)
  - [BundleIdentifier](/BundleIdentifier):
    Documentation bundles use a string value as a unique identifier.
  - [JSONPatch](/JSONPatch):
    A patch to update a JSON value.
  - [TopicReferenceSchemeHandler](/TopicReferenceSchemeHandler)

# Global Functions

  - [request(\_:​method:​parameters:​encoding:​headers:​)](/request\(__method_parameters_encoding_headers_\)):
    Creates a `DataRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
    `method`, `parameters`, `encoding` and `headers`.
  - [request(\_:​)](/request\(__\)):
    Creates a `DataRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
    specified `urlRequest`.
  - [download(\_:​method:​parameters:​encoding:​headers:​to:​)](/download\(__method_parameters_encoding_headers_to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
    `method`, `parameters`, `encoding`, `headers` and save them to the `destination`.
  - [download(\_:​to:​)](/download\(__to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
    specified `urlRequest` and save them to the `destination`.
  - [download(resumingWith:​to:​)](/download\(resumingWith_to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` from the `resumeData` produced from a
    previous request cancellation to retrieve the contents of the original request and save them to the `destination`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `file`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates a `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `file`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `data`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `data`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `stream`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `stream`.
  - [upload(multipartFormData:​usingThreshold:​to:​method:​headers:​encodingCompletion:​)](/upload\(multipartFormData_usingThreshold_to_method_headers_encodingCompletion_\)):
    Encodes `multipartFormData` using `encodingMemoryThreshold` with the default `SessionManager` and calls
    `encodingCompletion` with new `UploadRequest` using the `url`, `method` and `headers`.
  - [upload(multipartFormData:​usingThreshold:​with:​encodingCompletion:​)](/upload\(multipartFormData_usingThreshold_with_encodingCompletion_\)):
    Encodes `multipartFormData` using `encodingMemoryThreshold` and the default `SessionManager` and
    calls `encodingCompletion` with new `UploadRequest` using the `urlRequest`.
  - [stream(withHostName:​port:​)](/stream\(withHostName_port_\)):
    Creates a `StreamRequest` using the default `SessionManager` for bidirectional streaming with the `hostname`
    and `port`.
  - [stream(with:​)](/stream\(with_\)):
    Creates a `StreamRequest` using the default `SessionManager` for bidirectional streaming with the `netService`.
  - [catDecoded(\_:​)](/catDecoded\(__\)):
    Create a new array of unwrapped `.Success` values, filtering out `.Failure`s.
  - [catDecoded(\_:​)](/catDecoded\(__\)):
    Create a new dictionary of unwrapped `.Success` values, filtering out
    `.Failure`s.
  - [decode(\_:​)](/decode\(__\)):
    Attempt to transform `Any` into a `Decodable` value.
  - [decode(\_:​)](/decode\(__\)):
    Attempt to transform `Any` into an `Array` of `Decodable` values.
  - [decode(\_:​)](/decode\(__\)):
    Attempt to transform `Any` into a `Decodable` value and return an `Optional`.
  - [decode(\_:​)](/decode\(__\)):
    Attempt to transform `Any` into an `Array` of `Decodable` values and
    return an `Optional`.
  - [decode(\_:​rootKey:​)](/decode\(__rootKey_\)):
    Attempt to transform `Any` into a `Decodable` value using a specified
    root key.
  - [decode(\_:​rootKey:​)](/decode\(__rootKey_\)):
    Attempt to transform `Any` into an `Array` of `Decodable` value using a
    specified root key.
  - [decode(\_:​rootKey:​)](/decode\(__rootKey_\)):
    Attempt to transform `Any` into a `Decodable` value using a specified
    root key and return an `Optional`.
  - [decode(\_:​rootKey:​)](/decode\(__rootKey_\)):
    Attempt to transform `Any` into an `Array` of `Decodable` value using a
    specified root key and return an `Optional`
  - [flatReduce(\_:​initial:​combine:​)](/flatReduce\(__initial_combine_\)):
    Reduce a sequence with a combinator that returns a `Decoded` type, flattening
    the result.
  - [sequence(\_:​)](/sequence\(__\)):
    Convert an `Array` of `Decoded<T>` values to a `Decoded` `Array` of unwrapped
    `T` values.
  - [sequence(\_:​)](/sequence\(__\)):
    Convert a `Dictionary` with `Decoded<T>` values to a `Decoded` `Dictionary`
    with unwrapped `T` values.
  - [pure(\_:​)](/pure\(__\)):
    Wrap a value in the minimal context of `.Success`.
  - [materialize(\_:​)](/materialize\(__\)):
    Construct a `Decoded` type from a throwing function.
  - [decodeArray(\_:​)](/decodeArray\(__\)):
    Decode `JSON` into an array of values where the elements of the array are
    `Decodable`.
  - [decodeObject(\_:​)](/decodeObject\(__\)):
    Decode `JSON` into a dictionary of keys and values where the keys are
    `String`s and the values are `Decodable`.
  - [decodedJSON(\_:​forKey:​)](/decodedJSON\(__forKey_\)):
    Pull an embedded `JSON` value from a specified key.
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [curry(\_:​)](/curry\(__\))
  - [timer(interval:​on:​)](/timer\(interval_on_\))
  - [timer(interval:​on:​leeway:​)](/timer\(interval_on_leeway_\))
  - [combineLatest(\_:​\_:​)](/combineLatest\(____\))
  - [combineLatest(\_:​\_:​\_:​)](/combineLatest\(______\))
  - [combineLatest(\_:​\_:​\_:​\_:​)](/combineLatest\(________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(__________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(____________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(______________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(________________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(__________________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(____________________\))
  - [combineLatest(\_:​)](/combineLatest\(__\))
  - [zip(\_:​\_:​)](/zip\(____\))
  - [zip(\_:​\_:​\_:​)](/zip\(______\))
  - [zip(\_:​\_:​\_:​\_:​)](/zip\(________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​)](/zip\(__________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(____________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(______________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(________________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(__________________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(____________________\))
  - [zip(\_:​)](/zip\(__\))
  - [combineLatest(\_:​\_:​)](/combineLatest\(____\))
  - [combineLatest(\_:​\_:​\_:​)](/combineLatest\(______\))
  - [combineLatest(\_:​\_:​\_:​\_:​)](/combineLatest\(________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(__________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(____________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(______________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(________________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(__________________\))
  - [combineLatest(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/combineLatest\(____________________\))
  - [combineLatest(\_:​)](/combineLatest\(__\))
  - [zip(\_:​\_:​)](/zip\(____\))
  - [zip(\_:​\_:​\_:​)](/zip\(______\))
  - [zip(\_:​\_:​\_:​\_:​)](/zip\(________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​)](/zip\(__________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(____________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(______________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(________________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(__________________\))
  - [zip(\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​\_:​)](/zip\(____________________\))
  - [zip(\_:​)](/zip\(__\))
  - [timer(interval:​on:​)](/timer\(interval_on_\)):
    Create a repeating timer of the given interval, with a reasonable default
    leeway, sending updates on the given scheduler.
  - [timer(interval:​on:​leeway:​)](/timer\(interval_on_leeway_\)):
    Creates a repeating timer of the given interval, sending updates on the
    given scheduler.
  - [materialize(\_:​)](/materialize\(__\))
  - [materialize(\_:​)](/materialize\(__\))
  - [materialize(\_:​)](/materialize\(__\))
  - [materialize(\_:​)](/materialize\(__\))
  - [`try`(\_:​file:​line:​`try`:​)](/%60try%60\(__file_line_%60try%60_\)):
    Constructs a `Result` with the result of calling `try` with an error pointer.
  - [`try`(\_:​file:​line:​`try`:​)](/%60try%60\(__file_line_%60try%60_\)):
    Constructs a `Result` with the result of calling `try` with an error pointer.
  - [pure(\_:​)](/pure\(__\)):
    Wrap a value in a minimal context of `[]`
  - [pure(\_:​)](/pure\(__\)):
    Wrap a value in a minimal context of `.Some`
  - [instantiateLiveView()](/instantiateLiveView\(\)):
    Instantiates a new instance of a live view.
  - [request(\_:​method:​parameters:​encoding:​headers:​)](/request\(__method_parameters_encoding_headers_\)):
    Creates a `DataRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
    `method`, `parameters`, `encoding` and `headers`.
  - [request(\_:​)](/request\(__\)):
    Creates a `DataRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
    specified `urlRequest`.
  - [download(\_:​method:​parameters:​encoding:​headers:​to:​)](/download\(__method_parameters_encoding_headers_to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
    `method`, `parameters`, `encoding`, `headers` and save them to the `destination`.
  - [download(\_:​to:​)](/download\(__to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
    specified `urlRequest` and save them to the `destination`.
  - [download(resumingWith:​to:​)](/download\(resumingWith_to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` from the `resumeData` produced from a
    previous request cancellation to retrieve the contents of the original request and save them to the `destination`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `file`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates a `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `file`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `data`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `data`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `stream`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `stream`.
  - [upload(multipartFormData:​usingThreshold:​to:​method:​headers:​encodingCompletion:​)](/upload\(multipartFormData_usingThreshold_to_method_headers_encodingCompletion_\)):
    Encodes `multipartFormData` using `encodingMemoryThreshold` with the default `SessionManager` and calls
    `encodingCompletion` with new `UploadRequest` using the `url`, `method` and `headers`.
  - [upload(multipartFormData:​usingThreshold:​with:​encodingCompletion:​)](/upload\(multipartFormData_usingThreshold_with_encodingCompletion_\)):
    Encodes `multipartFormData` using `encodingMemoryThreshold` and the default `SessionManager` and
    calls `encodingCompletion` with new `UploadRequest` using the `urlRequest`.
  - [stream(withHostName:​port:​)](/stream\(withHostName_port_\)):
    Creates a `StreamRequest` using the default `SessionManager` for bidirectional streaming with the `hostname`
    and `port`.
  - [stream(with:​)](/stream\(with_\)):
    Creates a `StreamRequest` using the default `SessionManager` for bidirectional streaming with the `netService`.
  - [configure(\_:​)](/configure\(__\))
  - [\_\_allTests()](/__allTests\(\))
  - [getData()](/getData\(\))
  - [borrarPlanes()](/borrarPlanes\(\))
  - [request(\_:​method:​parameters:​encoding:​headers:​)](/request\(__method_parameters_encoding_headers_\)):
    Creates a `DataRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
    `method`, `parameters`, `encoding` and `headers`.
  - [request(\_:​)](/request\(__\)):
    Creates a `DataRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
    specified `urlRequest`.
  - [download(\_:​method:​parameters:​encoding:​headers:​to:​)](/download\(__method_parameters_encoding_headers_to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
    `method`, `parameters`, `encoding`, `headers` and save them to the `destination`.
  - [download(\_:​to:​)](/download\(__to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
    specified `urlRequest` and save them to the `destination`.
  - [download(resumingWith:​to:​)](/download\(resumingWith_to_\)):
    Creates a `DownloadRequest` using the default `SessionManager` from the `resumeData` produced from a
    previous request cancellation to retrieve the contents of the original request and save them to the `destination`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `file`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates a `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `file`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `data`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `data`.
  - [upload(\_:​to:​method:​headers:​)](/upload\(__to_method_headers_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `url`, `method` and `headers`
    for uploading the `stream`.
  - [upload(\_:​with:​)](/upload\(__with_\)):
    Creates an `UploadRequest` using the default `SessionManager` from the specified `urlRequest` for
    uploading the `stream`.
  - [upload(multipartFormData:​usingThreshold:​to:​method:​headers:​encodingCompletion:​)](/upload\(multipartFormData_usingThreshold_to_method_headers_encodingCompletion_\)):
    Encodes `multipartFormData` using `encodingMemoryThreshold` with the default `SessionManager` and calls
    `encodingCompletion` with new `UploadRequest` using the `url`, `method` and `headers`.
  - [upload(multipartFormData:​usingThreshold:​with:​encodingCompletion:​)](/upload\(multipartFormData_usingThreshold_with_encodingCompletion_\)):
    Encodes `multipartFormData` using `encodingMemoryThreshold` and the default `SessionManager` and
    calls `encodingCompletion` with new `UploadRequest` using the `urlRequest`.
  - [stream(withHostName:​port:​)](/stream\(withHostName_port_\)):
    Creates a `StreamRequest` using the default `SessionManager` for bidirectional streaming with the `hostname`
    and `port`.
  - [stream(with:​)](/stream\(with_\)):
    Creates a `StreamRequest` using the default `SessionManager` for bidirectional streaming with the `netService`.
  - [countCharacter(\_:​\_:​)](/countCharacter\(____\))
  - [solution(\_:​)](/solution\(__\))
  - [downloadWithUrlSession(at:​completion:​)](/downloadWithUrlSession\(at_completion_\))
  - [benchmark(add:​benchmarkLog:​)](/benchmark\(add_benchmarkLog_\)):
    Logs a one-off metric value.
  - [benchmark(begin:​benchmarkLog:​)](/benchmark\(begin_benchmarkLog_\)):
    Starts the given metric.
  - [benchmark(end:​benchmarkLog:​)](/benchmark\(end_benchmarkLog_\)):
    Ends the given metric and adds it to the log.
  - [benchmark(wrap:​benchmarkLog:​body:​)](/benchmark\(wrap_benchmarkLog_body_\)):
    Ends the given metric and adds it to the log.
  - [autoreleasepool(\_:​)](/autoreleasepool\(__\)):
    A shim for Linux that runs the given block of code.
  - [AssertRoundtrip(for:​file:​line:​)](/AssertRoundtrip\(for_file_line_\)):
    Ensures a given render node can be encoded and decode back without throwing.
  - [allTests()](/allTests\(\))
  - [allTests()](/allTests\(\))
  - [allTests()](/allTests\(\))
  - [allTests()](/allTests\(\))
  - [allTests()](/allTests\(\))
  - [allTests()](/allTests\(\))
  - [configure(\_:​)](/configure\(__\))
  - [\_\_allTests()](/__allTests\(\))
  - [configure(\_:​)](/configure\(__\))
  - [\_\_allTests()](/__allTests\(\))
  - [configure(\_:​)](/configure\(__\))
  - [configure(\_:​)](/configure\(__\))

# Global Variables

  - [AF](/AF):
    Reference to `Session.default` for quick bootstrapping and examples.
  - [AF](/AF):
    Reference to `Session.default` for quick bootstrapping and examples.
  - [AF](/AF):
    Reference to `Session.default` for quick bootstrapping and examples.
  - [publicIntThatIsInSimplePackage](/publicIntThatIsInSimplePackage)
  - [shouldPrettyPrintOutputJSON](/shouldPrettyPrintOutputJSON)

# Operators

  - [\>\>-](/__-)
  - [\>\>-](/__-):
    map a function over a value with context and flatten the result
  - [\>-\>](/_-_):
    compose two functions that produce results in a context,
    from left to right, returning a result in that context
  - [\<~](/_~)
  - [\<||?](/____)
  - [\<||](/___)
  - [\<|?](/___)
  - [\<|\>](/___):
    an associative binary operation
  - [\<|](/__)
  - [\<^\>](/_%5E_):
    map a function over a value with context
  - [\<-\<](/_-_):
    compose two functions that produce results in a context,
    from right to left, returning a result in that context
  - [\<\*\>](/___):
    apply a function with context to a value with context
  - [\<\*](/__):
    sequence actions, discarding right (value of the second argument)
  - [-\<\<](/-__):
    map a function over a value with context and flatten the result
  - [\*\>](/__):
    sequence actions, discarding left (value of the first argument)
  - [&&&](/&&&)

# Extensions

  - [Array](/Array)
  - [Bool](/Bool)
  - [Bundle](/Bundle)
  - [CALayer](/CALayer)
  - [CGPoint](/CGPoint)
  - [CIColor](/CIColor)
  - [CharacterSet](/CharacterSet)
  - [CodingUserInfoKey](/CodingUserInfoKey)
  - [Collection](/Collection)
  - [CollectionReference](/CollectionReference)
  - [Color](/Color)
  - [Data](/Data)
  - [Date](/Date)
  - [DocumentReference](/DocumentReference)
  - [DocumentSnapshot](/DocumentSnapshot)
  - [DocumentationCoverageOptions.KindFilterOptions.BitFlagRepresentation](/DocumentationCoverageOptions_KindFilterOptions_BitFlagRepresentation)
  - [Double](/Double)
  - [Error](/Error)
  - [ExpressibleByDictionaryLiteral](/ExpressibleByDictionaryLiteral)
  - [FieldValue](/FieldValue)
  - [Firestore](/Firestore)
  - [Float](/Float)
  - [GMSMapViewType](/GMSMapViewType)
  - [GMSPlaceOpenStatus](/GMSPlaceOpenStatus)
  - [HTTPHeaders](/HTTPHeaders)
  - [HTTPURLResponse](/HTTPURLResponse)
  - [Heading](/Heading)
  - [IndexPath](/IndexPath)
  - [Int](/Int)
  - [Int64](/Int64)
  - [Lock](/Lock)
  - [Markup](/Markup)
  - [NSError](/NSError)
  - [Node](/Node)
  - [Notification](/Notification)
  - [Notification.Name](/Notification_Name)
  - [NotificationCenter](/NotificationCenter)
  - [Optional](/Optional)
  - [Sequence](/Sequence)
  - [String](/String)
  - [SymbolGraph.Relationship](/SymbolGraph_Relationship)
  - [SymbolGraph.SemanticVersion](/SymbolGraph_SemanticVersion)
  - [SymbolGraph.Symbol](/SymbolGraph_Symbol)
  - [SymbolGraph.Symbol.KindIdentifier](/SymbolGraph_Symbol_KindIdentifier)
  - [TextField](/TextField)
  - [TimeInterval](/TimeInterval)
  - [Transaction](/Transaction)
  - [UICollectionView](/UICollectionView)
  - [UIColor](/UIColor)
  - [UIImageView](/UIImageView)
  - [UILabel](/UILabel)
  - [UITableView](/UITableView)
  - [UITextView](/UITextView)
  - [UIView](/UIView)
  - [UIViewController](/UIViewController)
  - [UIViewControllerAnimatedTransitioning](/UIViewControllerAnimatedTransitioning)
  - [UInt](/UInt)
  - [UInt64](/UInt64)
  - [URL](/URL)
  - [URLComponents](/URLComponents)
  - [URLRequest](/URLRequest)
  - [URLSession](/URLSession)
  - [URLSessionConfiguration](/URLSessionConfiguration)
  - [UnifiedSymbolGraph.Symbol](/UnifiedSymbolGraph_Symbol)
  - [WriteBatch](/WriteBatch)
  - [XCTApplicationTester](/XCTApplicationTester)
