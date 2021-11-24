# StarFillMode

Defines how the star is filled when the rating is not an integer number. For example, if rating is 4.6 and the fill more is Half, the star will appear to be half filled.

``` swift
public enum StarFillMode: Int 
```

## Inheritance

`Int`

## Enumeration Cases

### `full`

Show only fully filled stars. For example, fourth star will be empty for 3.2.

``` swift
case full = 0
```

### `half`

Show fully filled and half-filled stars. For example, fourth star will be half filled for 3.6.

``` swift
case half = 1
```

### `precise`

Fill star according to decimal rating. For example, fourth star will be 20% filled for 3.2.

``` swift
case precise = 2
```
