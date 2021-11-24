# URLEncodedFormEncoder.KeyEncoding

Encoding to use for keys.

``` swift
public enum KeyEncoding 
```

This type is derived from [`JSONEncoder`'s `KeyEncodingStrategy`](https://github.com/apple/swift/blob/6aa313b8dd5f05135f7f878eccc1db6f9fbe34ff/stdlib/public/Darwin/Foundation/JSONEncoder.swift#L128)
and [`XMLEncoder`s `KeyEncodingStrategy`](https://github.com/MaxDesiatov/XMLCoder/blob/master/Sources/XMLCoder/Encoder/XMLEncoder.swift#L102).

## Enumeration Cases

### `useDefaultKeys`

Use the keys specified by each type. This is the default encoding.

``` swift
case useDefaultKeys
```

### `convertToSnakeCase`

Convert from "camelCaseKeys" to "snake\_case\_keys" before writing a key.

``` swift
case convertToSnakeCase
```

Capital characters are determined by testing membership in
`CharacterSet.uppercaseLetters` and `CharacterSet.lowercaseLetters`
(Unicode General Categories Lu and Lt).
The conversion to lower case uses `Locale.system`, also known as
the ICU "root" locale. This means the result is consistent
regardless of the current user's locale and language preferences.

Converting from camel case to snake case:

1.  Splits words at the boundary of lower-case to upper-case
2.  Inserts `_` between words
3.  Lowercases the entire string
4.  Preserves starting and ending `_`.

For example, `oneTwoThree` becomes `one_two_three`. `_oneTwoThree_` becomes `_one_two_three_`.

> 

### `convertToKebabCase`

Same as convertToSnakeCase, but using `-` instead of `_`.
For example `oneTwoThree` becomes `one-two-three`.

``` swift
case convertToKebabCase
```

### `capitalized`

Capitalize the first letter only.
For example `oneTwoThree` becomes  `OneTwoThree`.

``` swift
case capitalized
```

### `uppercased`

Uppercase all letters.
For example `oneTwoThree` becomes  `ONETWOTHREE`.

``` swift
case uppercased
```

### `lowercased`

Lowercase all letters.
For example `oneTwoThree` becomes  `onetwothree`.

``` swift
case lowercased
```

### `custom`

A custom encoding using the provided closure.

``` swift
case custom((String) -> String)
```

### `useDefaultKeys`

Use the keys specified by each type. This is the default encoding.

``` swift
case useDefaultKeys
```

### `convertToSnakeCase`

Convert from "camelCaseKeys" to "snake\_case\_keys" before writing a key.

``` swift
case convertToSnakeCase
```

Capital characters are determined by testing membership in
`CharacterSet.uppercaseLetters` and `CharacterSet.lowercaseLetters`
(Unicode General Categories Lu and Lt).
The conversion to lower case uses `Locale.system`, also known as
the ICU "root" locale. This means the result is consistent
regardless of the current user's locale and language preferences.

Converting from camel case to snake case:

1.  Splits words at the boundary of lower-case to upper-case
2.  Inserts `_` between words
3.  Lowercases the entire string
4.  Preserves starting and ending `_`.

For example, `oneTwoThree` becomes `one_two_three`. `_oneTwoThree_` becomes `_one_two_three_`.

> 

### `convertToKebabCase`

Same as convertToSnakeCase, but using `-` instead of `_`.
For example `oneTwoThree` becomes `one-two-three`.

``` swift
case convertToKebabCase
```

### `capitalized`

Capitalize the first letter only.
For example `oneTwoThree` becomes  `OneTwoThree`.

``` swift
case capitalized
```

### `uppercased`

Uppercase all letters.
For example `oneTwoThree` becomes  `ONETWOTHREE`.

``` swift
case uppercased
```

### `lowercased`

Lowercase all letters.
For example `oneTwoThree` becomes  `onetwothree`.

``` swift
case lowercased
```

### `custom`

A custom encoding using the provided closure.

``` swift
case custom((String) -> String)
```

### `useDefaultKeys`

Use the keys specified by each type. This is the default encoding.

``` swift
case useDefaultKeys
```

### `convertToSnakeCase`

Convert from "camelCaseKeys" to "snake\_case\_keys" before writing a key.

``` swift
case convertToSnakeCase
```

Capital characters are determined by testing membership in
`CharacterSet.uppercaseLetters` and `CharacterSet.lowercaseLetters`
(Unicode General Categories Lu and Lt).
The conversion to lower case uses `Locale.system`, also known as
the ICU "root" locale. This means the result is consistent
regardless of the current user's locale and language preferences.

Converting from camel case to snake case:

1.  Splits words at the boundary of lower-case to upper-case
2.  Inserts `_` between words
3.  Lowercases the entire string
4.  Preserves starting and ending `_`.

For example, `oneTwoThree` becomes `one_two_three`. `_oneTwoThree_` becomes `_one_two_three_`.

> 

### `convertToKebabCase`

Same as convertToSnakeCase, but using `-` instead of `_`.
For example `oneTwoThree` becomes `one-two-three`.

``` swift
case convertToKebabCase
```

### `capitalized`

Capitalize the first letter only.
For example `oneTwoThree` becomes  `OneTwoThree`.

``` swift
case capitalized
```

### `uppercased`

Uppercase all letters.
For example `oneTwoThree` becomes  `ONETWOTHREE`.

``` swift
case uppercased
```

### `lowercased`

Lowercase all letters.
For example `oneTwoThree` becomes  `onetwothree`.

``` swift
case lowercased
```

### `custom`

A custom encoding using the provided closure.

``` swift
case custom((String) -> String)
```
