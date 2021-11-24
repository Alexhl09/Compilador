# RenderBlockContent.AsideStyle

An aside style.

``` swift
public enum AsideStyle: String, Codable, Equatable, CaseIterable 
```

## Inheritance

`CaseIterable`, `Codable`, `Equatable`, `String`

## Enumeration Cases

### `note`

A note aside.

``` swift
case note
```

### `important`

An important aside.

``` swift
case important
```

### `warning`

A warning aside.

``` swift
case warning
```

### `experiment`

An experiment aside.

``` swift
case experiment
```

### `tip`

A tip aside.

``` swift
case tip
```

### `attention`

An attention aside.

``` swift
case attention
```

### `author`

An author aside.

``` swift
case author
```

### `authors`

An authors aside.

``` swift
case authors
```

### `bug`

A bug aside.

``` swift
case bug
```

### `complexity`

A complexity aside.

``` swift
case complexity
```

### `copyright`

A copyright aside.

``` swift
case copyright
```

### `date`

A date aside.

``` swift
case date
```

### `invariant`

An invariant aside.

``` swift
case invariant
```

### `mutatingVariant`

A mutatingVariant aside.

``` swift
case mutatingVariant
```

### `nonMutatingVariant`

A nonMutatingVariant aside.

``` swift
case nonMutatingVariant
```

### `postcondition`

A postcondition aside.

``` swift
case postcondition
```

### `precondition`

A precondition aside.

``` swift
case precondition
```

### `remark`

A remark aside.

``` swift
case remark
```

### `requires`

A requires aside.

``` swift
case requires
```

### `since`

A since aside.

``` swift
case since
```

### `todo`

A todo aside.

``` swift
case todo
```

### `version`

A version aside.

``` swift
case version
```

### `` `throws` ``

A throws aside.

``` swift
case `throws`
```

## Methods

### `displayName()`

The heading text to use when rendering this style of aside.

``` swift
public func displayName() -> String 
```
