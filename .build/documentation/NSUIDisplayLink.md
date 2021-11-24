# NSUIDisplayLink

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

On OS X there is no CADisplayLink. Use a 60 fps timer to render the animations.

``` swift
public class NSUIDisplayLink
```

</dd>
</dl>

## Properties

### `timestamp`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
public var timestamp: CFTimeInterval
```

</dd>
</dl>

## Methods

### `add(to:forMode:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open func add(to runloop: RunLoop, forMode mode: RunLoop.Mode)
```

</dd>
</dl>

### `remove(from:forMode:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open func remove(from: RunLoop, forMode: RunLoop.Mode)
```

</dd>
</dl>
