# Relation

``` swift
public enum Relation 
```

  - There may come a need, say when you are making a scheduling app, when
  - it might be good to know how two time periods relate to one another.
  - Are they the same? Is one inside of another? All these questions may be
  - asked using the relationship methods of DTTimePeriod.
  - 
  - Further reading: [GitHub](https://github.com/MatthewYork/DateTools#relationships),
  - [CodeProject](http://www.codeproject.com/Articles/168662/Time-Period-Library-for-NET)

## Enumeration Cases

### `after`

``` swift
case after
```

### `startTouching`

``` swift
case startTouching
```

### `startInside`

``` swift
case startInside
```

### `insideStartTouching`

``` swift
case insideStartTouching
```

### `enclosingStartTouching`

``` swift
case enclosingStartTouching
```

### `enclosing`

``` swift
case enclosing
```

### `enclosingEndTouching`

``` swift
case enclosingEndTouching
```

### `exactMatch`

``` swift
case exactMatch
```

### `inside`

``` swift
case inside
```

### `insideEndTouching`

``` swift
case insideEndTouching
```

### `endInside`

``` swift
case endInside
```

### `endTouching`

``` swift
case endTouching
```

### `before`

``` swift
case before
```

### `none`

``` swift
case none
```
