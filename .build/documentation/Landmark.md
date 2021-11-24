# Landmark

A linkable point on a page.

``` swift
public protocol Landmark 
```

## Requirements

### range

The document cursor range that the landmark contains.

``` swift
var range: SourceRange? 
```

### title

The title of the landmark.

``` swift
var title: String 
```

### markup

The content of the landmark.

``` swift
var markup: Markup 
```
