# Docc.Convert

Converts a documentation bundle.

``` swift
public struct Convert: ParsableCommand 
```

## Inheritance

`ParsableCommand`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `configuration`

``` swift
public static var configuration 
```

### `documentationBundle`

The user-provided path to a `.docc` documentation bundle.

``` swift
@OptionGroup()
        public var documentationBundle: DocumentationBundleOption
```

### `platforms`

User-provided platform name/version pairs.

``` swift
@Option(
            name: .customLong("platform"),
            parsing: ArrayParsingStrategy.singleValue,
            help: ArgumentHelp(
                """
                Set the current release version of a platform.
                """,
                discussion: """
                    Use the following format: "name={platform name},version={semantic version}".
                    """))
        public var platforms: [String] = []
```

Used to set the current release version of a platform. Contains an array of strings in the following format:

``` 
name={platform name},version={semantic version}
```

### Example

``` 
"name=macOS,version=10.1.2"
```

### `templateOption`

The user-provided path to an HTML documentation template.

``` swift
@OptionGroup()
        public var templateOption: TemplateOption
```

### `outOfProcessLinkResolverOption`

The user-provided path to an executable that can be used to resolve links.

``` swift
@OptionGroup()
        public var outOfProcessLinkResolverOption: OutOfProcessLinkResolverOption
```

This is an optional value and an internal link resolver is used by default.

### `analyze`

A user-provided value that is true if additional analyzer style warnings should be outputted to the terminal.

``` swift
@Flag(
            help: """
                Outputs additional analyzer style warnings in addition to standard warnings/errors.
                """)
        public var analyze = false
```

Defaults to false.

### `emitDigest`

A user-provided value that is true if additional metadata files should be produced.

``` swift
@Flag(help: "Writes additional metadata files to the output directory.")
        public var emitDigest = false
```

Defaults to false.

### `index`

A user-provided value that is true if the navigator index should be produced.

``` swift
@Flag(help: "Writes the navigator index to the output directory.")
        public var index = false
```

Defaults to false.

### `emitFixits`

A user-provided value that is true if fix-its should be written to output.

``` swift
@Flag(inversion: .prefixedNo, help: "Outputs fixits for common issues")
        public var emitFixits = false
```

Defaults to false.

### `experimentalDocumentationCoverageOptions`

A user-provided value that is true if the user wants to opt in to Experimental documentation coverage generation.

``` swift
@OptionGroup()
        public var experimentalDocumentationCoverageOptions: DocumentationCoverageOptionsArgument
```

Defaults to none.

### `experimentalEnableCustomTemplates`

A user-provided value that is true if the user wants to provide a custom template for rendered output.

``` swift
@Flag(help: "Allows for custom templates, like `header.html`.")
        public var experimentalEnableCustomTemplates = false
```

Defaults to false

### `enableExperimentalObjectiveCSupport`

A user-provided value that is true if the user enables experimental Objective-C language support.

``` swift
@Flag(help: .hidden)
        public var enableExperimentalObjectiveCSupport = false
```

Defaults to false.

### `enableInheritedDocs`

A user-provided value that is true if experimental documentation inheritance is to be enabled.

``` swift
@Flag(help: "Inherit documentation for inherited symbols")
        public var enableInheritedDocs = false
```

Defaults to false.

### `fallbackBundleDisplayName`

A user-provided fallback display name for the documentation bundle.

``` swift
@Option(
            name: [.customLong("fallback-display-name"), .customLong("display-name")], // Remove spelling without "fallback" prefix when other tools no longer use it. (rdar://72449411)
            help: "A fallback display name if no value is provided in the documentation bundle's Info.plist file."
        )
        public var fallbackBundleDisplayName: String?
```

If the documentation bundle's Info.plist file contains a bundle display name, the documentation bundle ignores this fallback name.

### `fallbackBundleIdentifier`

A user-provided fallback display name for the documentation bundle.

``` swift
@Option(
            name: [.customLong("fallback-bundle-identifier"), .customLong("bundle-identifier")], // Remove spelling without "fallback" prefix when other tools no longer use it. (rdar://72449411)
            help: "A fallback bundle identifier if no value is provided in the documentation bundle's Info.plist file."
        )
        public var fallbackBundleIdentifier: String?
```

If the documentation bundle's Info.plist file contains a bundle identifier, the documentation bundle ignores this fallback identifier.

### `fallbackBundleVersion`

A user-provided fallback version for the documentation bundle.

``` swift
@Option(
            name: [.customLong("fallback-bundle-version"), .customLong("bundle-version")], // Remove spelling without "fallback" prefix when other tools no longer use it. (rdar://72449411)
            help: "A fallback bundle version if no value is provided in the documentation bundle's Info.plist file."
        )
        public var fallbackBundleVersion: String?
```

If the documentation bundle's Info.plist file contains a bundle version, the documentation bundle ignores this fallback version.

### `defaultCodeListingLanguage`

A user-provided default language for code listings.

``` swift
@Option(
            name: [.customLong("default-code-listing-language")],
            help: "A fallback default language for code listings if no value is provided in the documentation bundle's Info.plist file."
        )
        public var defaultCodeListingLanguage: String?
```

If the documentation bundle's Info.plist file contains a default code listing language, the documentation bundle ignores this fallback language.

### `fallbackDefaultModuleKind`

``` swift
@Option(
            help: """
                A fallback default module kind if no value is provided \
                in the documentation bundle's Info.plist file.
                """
        )
        public var fallbackDefaultModuleKind: String?
```

### `additionalSymbolGraphDirectory`

A user-provided path to a directory of additional symbol graph files that the convert action will process.

``` swift
@Option(
            name: [.customLong("additional-symbol-graph-dir")],
            help: "A path to a directory of additional symbol graph files.",
            transform: URL.init(fileURLWithPath:)
        )
        public var additionalSymbolGraphDirectory: URL?
```

### `additionalSymbolGraphFiles`

A user-provided list o path to additional symbol graph files that the convert action will process.

``` swift
@Option(
            name: [.customLong("additional-symbol-graph-files")],
            parsing: ArrayParsingStrategy.upToNextOption,
            help: .hidden,
            transform: URL.init(fileURLWithPath:)
        )
        public var additionalSymbolGraphFiles: [URL] = [] 
```

### `diagnosticLevel`

``` swift
@Option(help: ArgumentHelp("Filters diagnostics above this level from output", discussion:
        """
        This filter level is inclusive. If a level of `information` is specified, diagnostics with a severity up to and including `information` will be printed.
        This option is ignored if `--analyze` is passed.
        Must be one of "error", "warning", "information", or "hint"
        """))
        public var diagnosticLevel: String?
```

### `outputURL`

The path to the directory that all build output should be placed in.

``` swift
public var outputURL: URL 
```

## Methods

### `validate()`

``` swift
public mutating func validate() throws 
```

### `run()`

``` swift
public mutating func run() throws 
```
