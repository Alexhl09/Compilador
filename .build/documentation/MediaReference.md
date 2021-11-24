# MediaReference

A reference to media, such as an image or a video.

``` swift
public protocol MediaReference: RenderReference 
```

## Inheritance

[`RenderReference`](/RenderReference)

## Requirements

### asset

The data associated with this asset, including its variants.

``` swift
var asset: DataAsset 
```

### altText

Alternate text for the media.

``` swift
var altText: String? 
```

This text helps screen readers describe the media.
