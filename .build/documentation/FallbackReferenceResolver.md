# FallbackReferenceResolver

An reference resolver that can be used to resolve references that couldn't be resolved locally.

``` swift
public protocol FallbackReferenceResolver 
```

Fallback reference resolvers are used by a `DocumentationContext` to resolve externally resolve references that
couldn't be resolved internally.

## See Also

  - `DocumentationContext/fallbackReferenceResolvers`

  - `ExternalReferenceResolver`

## Requirements

### resolve(\_:​sourceLanguage:​)

Attempts to resolve an unresolved reference for a topic that couldn't be resolved locally.

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

### entityIfPreviouslyResolved(with:​)

Creates a new documentation node with the documentation content for the external reference, if the given reference was
resolved by this resolver.

``` swift
func entityIfPreviouslyResolved(
        with reference: ResolvedTopicReference
    ) throws -> DocumentationNode?
```

#### See Also

  - `ExternalReferenceResolver/resolve(_:sourceLanguage:)`

#### Parameters

  - reference: The external reference that this resolver may have previously resolved.

#### Returns

A node with the documentation content for the referenced topic, or `nil` if the reference wasn't previously resolved by this resolver.

### urlForResolvedReferenceIfPreviouslyResolved(\_:​)

Returns the web URL for the external topic.

``` swift
func urlForResolvedReferenceIfPreviouslyResolved(
        _ reference: ResolvedTopicReference
    ) -> URL?
```

Some links may add query parameters, for example, to link to a specific language variant of the topic.

#### See Also

  - `ExternalReferenceResolver/urlForResolvedReference(_:)`

#### Parameters

  - reference: The external reference that this resolver may have previously resolved.

#### Returns

The web URL for the resolved external reference, of `nil` if the reference wasn't previously resolved by this resolver.
