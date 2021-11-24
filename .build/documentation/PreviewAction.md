# PreviewAction

An action that monitors a documentation bundle for changes and runs a live web-preview.

``` swift
public final class PreviewAction: Action, RecreatingContext 
```

## Inheritance

[`Action`](/Action), [`Action`](/Action), [`RecreatingContext`](/RecreatingContext)

## Initializers

### `init(tlsCertificateKey:tlsCertificateChain:serverUsername:serverPassword:port:createConvertAction:workspace:context:printTemplatePath:)`

Creates a new preview action from the given parameters.

``` swift
public init(
        tlsCertificateKey: URL?, tlsCertificateChain: URL?, serverUsername: String?,
        serverPassword: String?, port: Int,
        createConvertAction: @escaping () throws -> ConvertAction,
        workspace: DocumentationWorkspace = DocumentationWorkspace(),
        context: DocumentationContext? = nil,
        printTemplatePath: Bool = true) throws
```

The `tlsCertificateKey`, `tlsCertificateChain`, `serverUsername`,  and `serverPassword`
parameters are optional, but if you provide one, all four are expected. They are used by the preview server
to serve content on the local network over SSL.

#### Parameters

  - tlsCertificateKey: The path to the TLS certificate key used by the preview server for SSL configuration.
  - tlsCertificateChain: The path to the TLS certificate chain used by the preview server for SSL configuration.
  - serverUsername: The username used by the preview server for HTTP authentication.
  - serverPassword: The password used by the preview server for HTTP authentication.
  - port: The port number used by the preview server.
  - convertAction: The action used to convert the documentation bundle before preview. On macOS, this action will be reused to convert documentation each time the source is modified.
  - workspace: The documentation workspace used by the the action's documentation context.
  - context: The documentation context for the action.
  - printTemplatePath: Whether or not the HTML template used by the convert action should be printed when the action is performed.

#### Throws

If an error is encountered while initializing the documentation context.

### `init(fromPreviewOptions:withFallbackTemplate:printTemplatePath:)`

Creates a preview action with the given preview options.

``` swift
public convenience init(
        fromPreviewOptions previewOptions: PreviewOptions,
        withFallbackTemplate fallbackTemplateURL: URL? = nil,
        printTemplatePath: Bool = true) throws
```

#### Parameters

  - previewOptions: The preview options this `PreviewAction` will be based on.
  - fallbackTemplateURL: A template URL to use if the one provided by the preview options is `nil`.
  - printTemplatePath: Whether or not the HTML template used by the convert action should be printed when the action

## Properties

### `setupContext`

``` swift
public var setupContext: ((inout DocumentationContext) -> Void)?
```

## Methods

### `perform(logHandle:)`

Converts a documentation bundle and starts a preview server to render the result of that conversion.

``` swift
public func perform(logHandle: LogHandle) throws -> ActionResult 
```

> Important: On macOS, the bundle will be converted each time the source is modified.

#### Parameters

  - logHandle: The file handle that the convert and preview actions will print debug messages to.
