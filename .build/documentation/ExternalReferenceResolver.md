# ExternalReferenceResolver

A type that resolves references to documentation outside of the documentation bundle, and creates documentation nodes with basic information about the resolved references.

``` swift
public protocol ExternalReferenceResolver 
```

Use this protocol to integrate documentation content from other sources. Your implementation needs to be able to:

  - Resolve references for the bundle identifier for which it's registered.

  - Create documentation nodes for the references it was able to resolve.

  - Return an external URL for the references it was able to resolve.

When the documentation context encounters a reference that can't be resolved in the current bundle, it checks whether an external resolver is registered in
`DocumentationContext/externalReferenceResolvers` for the bundle identifier of the unresolved reference. If there is, that external resolver is asked to attempt to resolve the reference.

If the reference exists in the external source of documentation, the external resolver returns a resolved reference to the context. Later, the context uses this resolved reference to ask the external resolver
for the node with the documentation content for that reference. Because this content isn't part of the compiled bundle, it won't be included in the build output. However, references to this node from the bundle's content
may incorporate, for example, the external node's title, kind, or abstract in their output.

If the reference doesn't exist in the external source of documentation or if an error occurs while attempting to resolve the reference, the external resolver returns information about the error.

In addition to the information in the documentation node, the external resolver may be asked to provide a web URL that can be used to navigate to this resource. When the render node translator converts a documentation node
that has an external reference in its content to a render node, this provided web URL is the link to the external content.

## See Also

  - `DocumentationContext/externalReferenceResolvers`

  - `LinkDestinationSummary`

  - `ExternalSymbolResolver`

  - `TopicReferenceResolutionResult`

## Requirements

### resolve(\_:​sourceLanguage:​)

Attempts to resolve an unresolved reference for an external topic.

``` swift
func resolve(_ reference: TopicReference, sourceLanguage: SourceLanguage) -> TopicReferenceResolutionResult
```

Your implementation returns a resolved reference if the topic exists in the external source of documentation, or information about why the reference failed to resolve if the topic doesn't exist in the external source.

Your implementation will only be called once for a given unresolved reference. Failures are assumed to persist for the duration of the documentation build.

#### Parameters

  - reference: The unresolved reference.
  - sourceLanguage: The source language of the reference, in case the reference exists in multiple languages.

#### Returns

The resolved reference for the topic, or information about why the resolver failed to resolve the reference.

### entity(with:​)

Creates a new documentation node with the documentation content for the external reference.

``` swift
func entity(with reference: ResolvedTopicReference) throws -> DocumentationNode
```

This node is not part of the local bundle and won't be part of the rendered output. Because of this, your implementation only needs to return a node with the subset of content that correspond to the non-optional
properties of a `LinkDestinationSummary`; the node's kind, title, abstract, relative path, reference URL, the language of the node, and the set of languages where the nodes is available.

#### Parameters

  - reference: The external reference that this resolver previously resolved.

#### Returns

A node with the documentation content for the referenced topic.

### urlForResolvedReference(\_:​)

Returns the web URL for the external topic.

``` swift
func urlForResolvedReference(_ reference: ResolvedTopicReference) -> URL
```

Some links may add query parameters, for example, to link to a specific language variant of the topic.

#### Parameters

  - reference: The external reference that this resolver previously resolved.

#### Returns

The web URL for the resolved external reference.
