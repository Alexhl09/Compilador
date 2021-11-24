# DocumentationContextDataProviderDelegate

An object that responds to changes in available documentation bundles for a specific provider.

``` swift
public protocol DocumentationContextDataProviderDelegate: AnyObject 
```

## Inheritance

`AnyObject`

## Requirements

### dataProvider(\_:​didAddBundle:​)

Called when the `dataProvider` has added a new documentation bundle to its list of `bundles`.

``` swift
func dataProvider(_ dataProvider: DocumentationContextDataProvider, didAddBundle bundle:  DocumentationBundle) throws
```

> 

#### Parameters

  - dataProvider: The provider that added this bundle.
  - bundle: The bundle that was added.

### dataProvider(\_:​didRemoveBundle:​)

Called when the `dataProvider` has removed a documentation bundle from its list of `bundles`.

``` swift
func dataProvider(_ dataProvider: DocumentationContextDataProvider, didRemoveBundle bundle:  DocumentationBundle) throws
```

> 

#### Parameters

  - dataProvider: The provider that removed this bundle.
  - bundle: The bundle that was removed.
