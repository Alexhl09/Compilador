# Symbol

``` swift
public class Symbol 
```

## Inheritance

[`Semantic`](/Semantic), [`AutomaticTaskGroupsProviding`](/AutomaticTaskGroupsProviding), [`Abstracted`](/Abstracted), `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, [`Redirected`](/Redirected)

## Properties

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `titleVariants`

The title of the symbol in each language variant the symbol is available in.

``` swift
internal(set) public var titleVariants: DocumentationDataVariants<String>
```

### `subHeadingVariants`

The simplified version of the symbol's declaration in each language variant the symbol is available in.

``` swift
internal(set) public var subHeadingVariants: DocumentationDataVariants<[SymbolGraph.Symbol.DeclarationFragments.Fragment]>
```

### `navigatorVariants`

The simplified version of this symbol's declaration in each language variant the symbol is available in.

``` swift
internal(set) public var navigatorVariants: DocumentationDataVariants<[SymbolGraph.Symbol.DeclarationFragments.Fragment]>
```

### `roleHeadingVariants`

The presentation-friendly version of the symbol's kind in each language variant the symbol is available in.

``` swift
internal(set) public var roleHeadingVariants: DocumentationDataVariants<String>
```

### `kindVariants`

The kind of the symbol in each language variant the symbol is available in.

``` swift
internal(set) public var kindVariants: DocumentationDataVariants<SymbolGraph.Symbol.Kind>
```

### `platformNameVariants`

The symbol's platform in each language variant the symbol is available in.

``` swift
internal(set) public var platformNameVariants: DocumentationDataVariants<PlatformName>
```

### `moduleNameVariants`

The presentation-friendly name of the symbol's framework in each language variant the symbol is available in.

``` swift
internal(set) public var moduleNameVariants: DocumentationDataVariants<String>
```

### `extendedModuleVariants`

The name of the module extension in which the symbol is defined, if applicable, in each language variant the symbol is available in.

``` swift
internal(set) public var extendedModuleVariants: DocumentationDataVariants<String>
```

### `bystanderModuleNamesVariants`

Optional cross-import module names of the symbol, in each language variant the symbol is available in.

``` swift
internal(set) public var bystanderModuleNamesVariants: DocumentationDataVariants<[String]>
```

### `isRequiredVariants`

Whether the symbol is required in its context, in each language variant the symbol is available in.

``` swift
public var isRequiredVariants: DocumentationDataVariants<Bool>
```

### `externalIDVariants`

The symbol's external identifier, if available, in each language variant the symbol is available in.

``` swift
public var externalIDVariants: DocumentationDataVariants<String>
```

### `accessLevelVariants`

The symbol's access level, if available, in each language variant the symbol is available in.

``` swift
public var accessLevelVariants: DocumentationDataVariants<String>
```

### `deprecatedSummaryVariants`

The symbol's deprecation information, if deprecated, in each language variant the symbol is available in.

``` swift
public var deprecatedSummaryVariants: DocumentationDataVariants<DeprecatedSection>
```

### `declarationVariants`

The symbol's declarations in each language variant the symbol is available in.

``` swift
public var declarationVariants 
```

### `locationVariants`

``` swift
public var locationVariants 
```

### `constraintsVariants`

The symbol's availability or conformance constraints, in each language variant the symbol is available in.

``` swift
public var constraintsVariants 
```

### `originVariants`

The inheritance information for the symbol in each language variant the symbol is available in.

``` swift
public var originVariants: DocumentationDataVariants<SymbolGraph.Relationship.SourceOrigin>
```

### `availabilityVariants`

The platforms on which the symbol is available in each language variant the symbol is available in.

``` swift
public var availabilityVariants: DocumentationDataVariants<SymbolGraph.Symbol.Availability> 
```

> 

### `relationshipsVariants`

The presentation-friendly relationships of this symbol to other symbols, in each language variant the symbol is available in.

``` swift
public var relationshipsVariants 
```

### `abstractSectionVariants`

An optional, abstract summary for the symbol, in each language variant the symbol is available in.

``` swift
public var abstractSectionVariants: DocumentationDataVariants<AbstractSection>
```

### `discussionVariants`

An optional discussion for the symbol, in each language variant the symbol is available in.

``` swift
public var discussionVariants: DocumentationDataVariants<DiscussionSection>
```

### `topicsVariants`

The topics task groups for the symbol, in each language variant the symbol is available in.

``` swift
public var topicsVariants: DocumentationDataVariants<TopicsSection>
```

### `defaultImplementationsVariants`

Any default implementations of the symbol, if the symbol is a protocol requirement, in each language variant the symbol is available in.

``` swift
public var defaultImplementationsVariants 
```

### `seeAlsoVariants`

Any See Also groups of the symbol, in each language variant the symbol is available in.

``` swift
public var seeAlsoVariants: DocumentationDataVariants<SeeAlsoSection>
```

### `returnsSectionVariants`

Any return value information of the symbol, if the symbol returns, in each language variant the symbol is available in.

``` swift
public var returnsSectionVariants: DocumentationDataVariants<ReturnsSection>
```

### `parametersSectionVariants`

Any parameters of the symbol, if the symbol accepts parameters, in each language variant the symbol is available in.

``` swift
public var parametersSectionVariants: DocumentationDataVariants<ParametersSection>
```

### `redirectsVariants`

Any redirect information of the symbol, if the symbol has been moved from another location, in each language variant the symbol is available in.

``` swift
public var redirectsVariants: DocumentationDataVariants<[Redirect]>
```

### `abstractVariants`

The symbol's abstract summary as a single paragraph, in each language variant the symbol is available in.

``` swift
public var abstractVariants: DocumentationDataVariants<Paragraph> 
```

### `isDeprecatedVariants`

Whether the symbol is deprecated, in each language variant the symbol is available in.

``` swift
public var isDeprecatedVariants 
```

### `isSPIVariants`

Whether the symbol is declared as an SPI, in each language variant the symbol is available in.

``` swift
public var isSPIVariants 
```

### `kind`

The kind of the first variant of this symbol, such as protocol or variable.

``` swift
public var kind: SymbolGraph.Symbol.Kind 
```

### `kind`

The kind of the first variant of this symbol, such as protocol or variable.

``` swift
public var kind: SymbolGraph.Symbol.Kind 
```

### `kind`

The kind of the first variant of this symbol, such as protocol or variable.

``` swift
public var kind: SymbolGraph.Symbol.Kind 
```

### `kind`

The kind of the first variant of this symbol, such as protocol or variable.

``` swift
public var kind: SymbolGraph.Symbol.Kind 
```

### `title`

The title of the first variant of this symbol, usually a simplified version of the declaration.

``` swift
public var title: String 
```

### `title`

The title of the first variant of this symbol, usually a simplified version of the declaration.

``` swift
public var title: String 
```

### `title`

The title of the first variant of this symbol, usually a simplified version of the declaration.

``` swift
public var title: String 
```

### `title`

The title of the first variant of this symbol, usually a simplified version of the declaration.

``` swift
public var title: String 
```

### `subHeading`

The simplified version of the first variant of this symbol's declaration to use inside groups that may contain multiple links.

``` swift
public var subHeading: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `subHeading`

The simplified version of the first variant of this symbol's declaration to use inside groups that may contain multiple links.

``` swift
public var subHeading: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `subHeading`

The simplified version of the first variant of this symbol's declaration to use inside groups that may contain multiple links.

``` swift
public var subHeading: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `subHeading`

The simplified version of the first variant of this symbol's declaration to use inside groups that may contain multiple links.

``` swift
public var subHeading: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `navigator`

The simplified version of the first variant of this symbol's declaration to use in navigation UI.

``` swift
public var navigator: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `navigator`

The simplified version of the first variant of this symbol's declaration to use in navigation UI.

``` swift
public var navigator: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `navigator`

The simplified version of the first variant of this symbol's declaration to use in navigation UI.

``` swift
public var navigator: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `navigator`

The simplified version of the first variant of this symbol's declaration to use in navigation UI.

``` swift
public var navigator: [SymbolGraph.Symbol.DeclarationFragments.Fragment]? 
```

### `roleHeading`

The presentation-friendly version of the first variant of the symbol's kind.

``` swift
public var roleHeading: String 
```

### `roleHeading`

The presentation-friendly version of the first variant of the symbol's kind.

``` swift
public var roleHeading: String 
```

### `roleHeading`

The presentation-friendly version of the first variant of the symbol's kind.

``` swift
public var roleHeading: String 
```

### `roleHeading`

The presentation-friendly version of the first variant of the symbol's kind.

``` swift
public var roleHeading: String 
```

### `platformName`

The first variant of the symbol's platform, if available.

``` swift
public var platformName: PlatformName? 
```

### `platformName`

The first variant of the symbol's platform, if available.

``` swift
public var platformName: PlatformName? 
```

### `platformName`

The first variant of the symbol's platform, if available.

``` swift
public var platformName: PlatformName? 
```

### `platformName`

The first variant of the symbol's platform, if available.

``` swift
public var platformName: PlatformName? 
```

### `moduleName`

The presentation-friendly name of the first variant of the symbol's framework.

``` swift
public var moduleName: String 
```

### `moduleName`

The presentation-friendly name of the first variant of the symbol's framework.

``` swift
public var moduleName: String 
```

### `moduleName`

The presentation-friendly name of the first variant of the symbol's framework.

``` swift
public var moduleName: String 
```

### `moduleName`

The presentation-friendly name of the first variant of the symbol's framework.

``` swift
public var moduleName: String 
```

### `isRequired`

Whether the first variant of the symbol is required in its context.

``` swift
public var isRequired: Bool 
```

### `isRequired`

Whether the first variant of the symbol is required in its context.

``` swift
public var isRequired: Bool 
```

### `isRequired`

Whether the first variant of the symbol is required in its context.

``` swift
public var isRequired: Bool 
```

### `isRequired`

Whether the first variant of the symbol is required in its context.

``` swift
public var isRequired: Bool 
```

### `externalID`

The first variant of the symbol's external identifier, if available.

``` swift
public var externalID: String? 
```

### `externalID`

The first variant of the symbol's external identifier, if available.

``` swift
public var externalID: String? 
```

### `externalID`

The first variant of the symbol's external identifier, if available.

``` swift
public var externalID: String? 
```

### `externalID`

The first variant of the symbol's external identifier, if available.

``` swift
public var externalID: String? 
```

### `extendedModule`

The name of the module extension in which the first variant of the symbol is defined, if applicable.

``` swift
public var extendedModule: String? 
```

### `extendedModule`

The name of the module extension in which the first variant of the symbol is defined, if applicable.

``` swift
public var extendedModule: String? 
```

### `extendedModule`

The name of the module extension in which the first variant of the symbol is defined, if applicable.

``` swift
public var extendedModule: String? 
```

### `extendedModule`

The name of the module extension in which the first variant of the symbol is defined, if applicable.

``` swift
public var extendedModule: String? 
```

### `bystanderModuleNames`

Optional cross-import module names of the first variant of the symbol.

``` swift
public var bystanderModuleNames: [String]? 
```

### `bystanderModuleNames`

Optional cross-import module names of the first variant of the symbol.

``` swift
public var bystanderModuleNames: [String]? 
```

### `bystanderModuleNames`

Optional cross-import module names of the first variant of the symbol.

``` swift
public var bystanderModuleNames: [String]? 
```

### `bystanderModuleNames`

Optional cross-import module names of the first variant of the symbol.

``` swift
public var bystanderModuleNames: [String]? 
```

### `deprecatedSummary`

The first variant of the symbol's deprecation information, if deprecated.

``` swift
public var deprecatedSummary: DeprecatedSection? 
```

### `deprecatedSummary`

The first variant of the symbol's deprecation information, if deprecated.

``` swift
public var deprecatedSummary: DeprecatedSection? 
```

### `deprecatedSummary`

The first variant of the symbol's deprecation information, if deprecated.

``` swift
public var deprecatedSummary: DeprecatedSection? 
```

### `deprecatedSummary`

The first variant of the symbol's deprecation information, if deprecated.

``` swift
public var deprecatedSummary: DeprecatedSection? 
```

### `declaration`

The first variant of the symbol's declarations.

``` swift
public var declaration: [[PlatformName?]: SymbolGraph.Symbol.DeclarationFragments] 
```

### `declaration`

The first variant of the symbol's declarations.

``` swift
public var declaration: [[PlatformName?]: SymbolGraph.Symbol.DeclarationFragments] 
```

### `declaration`

The first variant of the symbol's declarations.

``` swift
public var declaration: [[PlatformName?]: SymbolGraph.Symbol.DeclarationFragments] 
```

### `declaration`

The first variant of the symbol's declarations.

``` swift
public var declaration: [[PlatformName?]: SymbolGraph.Symbol.DeclarationFragments] 
```

### `location`

The place where the first variant of the symbol was originally declared in a source file.

``` swift
public var location: SymbolGraph.Symbol.Location? 
```

### `location`

The place where the first variant of the symbol was originally declared in a source file.

``` swift
public var location: SymbolGraph.Symbol.Location? 
```

### `location`

The place where the first variant of the symbol was originally declared in a source file.

``` swift
public var location: SymbolGraph.Symbol.Location? 
```

### `location`

The place where the first variant of the symbol was originally declared in a source file.

``` swift
public var location: SymbolGraph.Symbol.Location? 
```

### `constraints`

The first variant of the symbol's availability or conformance constraints.

``` swift
public var constraints: [SymbolGraph.Symbol.Swift.GenericConstraint]? 
```

### `constraints`

The first variant of the symbol's availability or conformance constraints.

``` swift
public var constraints: [SymbolGraph.Symbol.Swift.GenericConstraint]? 
```

### `constraints`

The first variant of the symbol's availability or conformance constraints.

``` swift
public var constraints: [SymbolGraph.Symbol.Swift.GenericConstraint]? 
```

### `constraints`

The first variant of the symbol's availability or conformance constraints.

``` swift
public var constraints: [SymbolGraph.Symbol.Swift.GenericConstraint]? 
```

### `origin`

The inheritance information for the first variant of the symbol.

``` swift
public var origin: SymbolGraph.Relationship.SourceOrigin? 
```

### `origin`

The inheritance information for the first variant of the symbol.

``` swift
public var origin: SymbolGraph.Relationship.SourceOrigin? 
```

### `origin`

The inheritance information for the first variant of the symbol.

``` swift
public var origin: SymbolGraph.Relationship.SourceOrigin? 
```

### `origin`

The inheritance information for the first variant of the symbol.

``` swift
public var origin: SymbolGraph.Relationship.SourceOrigin? 
```

### `availability`

The platforms on which the first variant of the symbol is available.

``` swift
public var availability: SymbolGraph.Symbol.Availability? 
```

> 

### `availability`

The platforms on which the first variant of the symbol is available.

``` swift
public var availability: SymbolGraph.Symbol.Availability? 
```

> 

### `availability`

The platforms on which the first variant of the symbol is available.

``` swift
public var availability: SymbolGraph.Symbol.Availability? 
```

> 

### `availability`

The platforms on which the first variant of the symbol is available.

``` swift
public var availability: SymbolGraph.Symbol.Availability? 
```

> 

### `relationships`

The presentation-friendly relationships of the first variant of this symbol to other symbols.

``` swift
public var relationships: RelationshipsSection 
```

### `relationships`

The presentation-friendly relationships of the first variant of this symbol to other symbols.

``` swift
public var relationships: RelationshipsSection 
```

### `relationships`

The presentation-friendly relationships of the first variant of this symbol to other symbols.

``` swift
public var relationships: RelationshipsSection 
```

### `relationships`

The presentation-friendly relationships of the first variant of this symbol to other symbols.

``` swift
public var relationships: RelationshipsSection 
```

### `accessLevel`

The first variant of the symbol's access level, if available.

``` swift
public var accessLevel: String? 
```

### `accessLevel`

The first variant of the symbol's access level, if available.

``` swift
public var accessLevel: String? 
```

### `accessLevel`

The first variant of the symbol's access level, if available.

``` swift
public var accessLevel: String? 
```

### `accessLevel`

The first variant of the symbol's access level, if available.

``` swift
public var accessLevel: String? 
```

### `discussion`

An optional discussion for the first variant of the symbol.

``` swift
public var discussion: DiscussionSection? 
```

### `discussion`

An optional discussion for the first variant of the symbol.

``` swift
public var discussion: DiscussionSection? 
```

### `discussion`

An optional discussion for the first variant of the symbol.

``` swift
public var discussion: DiscussionSection? 
```

### `discussion`

An optional discussion for the first variant of the symbol.

``` swift
public var discussion: DiscussionSection? 
```

### `abstractSection`

An optional, abstract summary for the first variant of the symbol.

``` swift
public var abstractSection: AbstractSection? 
```

### `abstractSection`

An optional, abstract summary for the first variant of the symbol.

``` swift
public var abstractSection: AbstractSection? 
```

### `abstractSection`

An optional, abstract summary for the first variant of the symbol.

``` swift
public var abstractSection: AbstractSection? 
```

### `abstractSection`

An optional, abstract summary for the first variant of the symbol.

``` swift
public var abstractSection: AbstractSection? 
```

### `topics`

The topics task groups for the first variant of the symbol.

``` swift
public var topics: TopicsSection? 
```

### `topics`

The topics task groups for the first variant of the symbol.

``` swift
public var topics: TopicsSection? 
```

### `topics`

The topics task groups for the first variant of the symbol.

``` swift
public var topics: TopicsSection? 
```

### `topics`

The topics task groups for the first variant of the symbol.

``` swift
public var topics: TopicsSection? 
```

### `defaultImplementations`

Any default implementations of the first variant of the symbol, if the symbol is a protocol requirement.

``` swift
public var defaultImplementations: DefaultImplementationsSection 
```

### `defaultImplementations`

Any default implementations of the first variant of the symbol, if the symbol is a protocol requirement.

``` swift
public var defaultImplementations: DefaultImplementationsSection 
```

### `defaultImplementations`

Any default implementations of the first variant of the symbol, if the symbol is a protocol requirement.

``` swift
public var defaultImplementations: DefaultImplementationsSection 
```

### `defaultImplementations`

Any default implementations of the first variant of the symbol, if the symbol is a protocol requirement.

``` swift
public var defaultImplementations: DefaultImplementationsSection 
```

### `seeAlso`

Any See Also groups of the first variant of the symbol.

``` swift
public var seeAlso: SeeAlsoSection? 
```

### `seeAlso`

Any See Also groups of the first variant of the symbol.

``` swift
public var seeAlso: SeeAlsoSection? 
```

### `seeAlso`

Any See Also groups of the first variant of the symbol.

``` swift
public var seeAlso: SeeAlsoSection? 
```

### `seeAlso`

Any See Also groups of the first variant of the symbol.

``` swift
public var seeAlso: SeeAlsoSection? 
```

### `redirects`

Any redirect information of the first variant of the symbol, if the symbol has been moved from another location.

``` swift
public var redirects: [Redirect]? 
```

### `redirects`

Any redirect information of the first variant of the symbol, if the symbol has been moved from another location.

``` swift
public var redirects: [Redirect]? 
```

### `redirects`

Any redirect information of the first variant of the symbol, if the symbol has been moved from another location.

``` swift
public var redirects: [Redirect]? 
```

### `redirects`

Any redirect information of the first variant of the symbol, if the symbol has been moved from another location.

``` swift
public var redirects: [Redirect]? 
```

### `returnsSection`

Any return value information of the first variant of the symbol, if the symbol returns.

``` swift
public var returnsSection: ReturnsSection? 
```

### `returnsSection`

Any return value information of the first variant of the symbol, if the symbol returns.

``` swift
public var returnsSection: ReturnsSection? 
```

### `returnsSection`

Any return value information of the first variant of the symbol, if the symbol returns.

``` swift
public var returnsSection: ReturnsSection? 
```

### `returnsSection`

Any return value information of the first variant of the symbol, if the symbol returns.

``` swift
public var returnsSection: ReturnsSection? 
```

### `parametersSection`

Any parameters of the first variant of the symbol, if the symbol accepts parameters.

``` swift
public var parametersSection: ParametersSection? 
```

### `parametersSection`

Any parameters of the first variant of the symbol, if the symbol accepts parameters.

``` swift
public var parametersSection: ParametersSection? 
```

### `parametersSection`

Any parameters of the first variant of the symbol, if the symbol accepts parameters.

``` swift
public var parametersSection: ParametersSection? 
```

### `parametersSection`

Any parameters of the first variant of the symbol, if the symbol accepts parameters.

``` swift
public var parametersSection: ParametersSection? 
```

### `abstract`

The first variant of the symbol's abstract summary as a single paragraph.

``` swift
public var abstract: Paragraph? 
```

### `abstract`

The first variant of the symbol's abstract summary as a single paragraph.

``` swift
public var abstract: Paragraph? 
```

### `abstract`

The first variant of the symbol's abstract summary as a single paragraph.

``` swift
public var abstract: Paragraph? 
```

### `abstract`

The first variant of the symbol's abstract summary as a single paragraph.

``` swift
public var abstract: Paragraph? 
```

### `isDeprecated`

Whether the first variant of the symbol is deprecated.

``` swift
public var isDeprecated: Bool 
```

### `isDeprecated`

Whether the first variant of the symbol is deprecated.

``` swift
public var isDeprecated: Bool 
```

### `isDeprecated`

Whether the first variant of the symbol is deprecated.

``` swift
public var isDeprecated: Bool 
```

### `isDeprecated`

Whether the first variant of the symbol is deprecated.

``` swift
public var isDeprecated: Bool 
```

### `isSPI`

Whether the first variant of the symbol is declared as an SPI.

``` swift
public var isSPI: Bool 
```

### `isSPI`

Whether the first variant of the symbol is declared as an SPI.

``` swift
public var isSPI: Bool 
```

### `isSPI`

Whether the first variant of the symbol is declared as an SPI.

``` swift
public var isSPI: Bool 
```

### `isSPI`

Whether the first variant of the symbol is declared as an SPI.

``` swift
public var isSPI: Bool 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
