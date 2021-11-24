# Checksum

A checksum generator.

``` swift
public struct Checksum 
```

## Methods

### `sha512(of:)`

Computes the SHA512 checksum of the given data as a lowercased hex string.

``` swift
public static func sha512(of data: Data) -> String 
```

#### Parameters

  - data: The data to compute the checksum for.

#### Returns

The SHA512 checksum as a hex string.

### `md5(of:)`

Computes the MD5 checksum of the given data as a lowercased hex string.

``` swift
public static func md5(of data: Data) -> String 
```

> 

#### Parameters

  - data: The data to compute the checksum for.

#### Returns

The MD5 checksum as a hex string.
