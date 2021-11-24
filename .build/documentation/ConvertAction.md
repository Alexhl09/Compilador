# ConvertAction

An action that converts a source bundle into compiled documentation.

``` swift
public struct ConvertAction: Action, RecreatingContext 
```

## Inheritance

[`Action`](/Action), [`Action`](/Action), [`RecreatingContext`](/RecreatingContext)

## Initializers

### `init(documentationBundleURL:outOfProcessResolver:analyze:targetDirectory:htmlTemplateDirectory:emitDigest:currentPlatforms:buildIndex:workspace:context:dataProvider:documentationCoverageOptions:bundleDiscoveryOptions:diagnosticLevel:diagnosticEngine:emitFixits:inheritDocs:experimentalEnableCustomTemplates:)`

Initializes the action with the given validated options, creates or uses the given action workspace & context.

``` swift
public init(
        documentationBundleURL: URL, outOfProcessResolver: OutOfProcessReferenceResolver?,
        analyze: Bool, targetDirectory: URL, htmlTemplateDirectory: URL?, emitDigest: Bool,
        currentPlatforms: [String : PlatformVersion]?, buildIndex: Bool = false,
        workspace: DocumentationWorkspace = DocumentationWorkspace(),
        context: DocumentationContext? = nil,
        dataProvider: DocumentationWorkspaceDataProvider? = nil,
        documentationCoverageOptions: DocumentationCoverageOptions = .noCoverage,
        bundleDiscoveryOptions: BundleDiscoveryOptions = .init(),
        diagnosticLevel: String? = nil,
        diagnosticEngine: DiagnosticEngine? = nil,
        emitFixits: Bool = false,
        inheritDocs: Bool = false,
        experimentalEnableCustomTemplates: Bool = false
    ) throws 
```

#### Parameters

  - workspace: A provided documentation workspace. Creates a new empty workspace if value is `nil`
  - context: A provided documentation context. Creates a new empty context in the workspace if value is `nil`
  - dataProvider: A data provider to use when registering bundles
  - documentationCoverageOptions: Indicates whether or not to generate coverage output and at what level.
  - diagnosticLevel: The level above which diagnostics will be filtered out. This filter level is inclusive, i.e. if a level of `DiagnosticSeverity.information` is specified, diagnostics with a severity up to and including `.information` will be printed.
  - diagnosticEngine: The engine that will collect and emit diagnostics during this action.

### `init(fromConvertCommand:withFallbackTemplate:)`

Creates a  convert action from the options in the given convert command.

``` swift
public init(fromConvertCommand convert: Docc.Convert, withFallbackTemplate fallbackTemplateURL: URL? = nil) throws 
```

#### Parameters

  - convert: The convert command this `ConvertAction` will be based on.
  - fallbackTemplateURL: A template URL to use if the one provided by the convert command is `nil`.

## Properties

### `setupContext`

``` swift
public var setupContext: ((inout DocumentationContext) -> Void)? 
```

## Methods

### `perform(logHandle:)`

Converts each eligible file from the source documentation bundle,
saves the results in the given output alongside the template files.

``` swift
mutating public func perform(logHandle: LogHandle) throws -> ActionResult 
```
