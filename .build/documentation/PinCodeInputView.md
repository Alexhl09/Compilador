# PinCodeInputView

``` swift
@IBDesignable
public class PinCodeInputView<T: UIView & ItemType>: UIControl, UITextInputTraits, UIKeyInput 
```

## Inheritance

`UIControl`, `UIKeyInput`, `UITextInputTraits`

## Initializers

### `init(digit:itemSpacing:itemFactory:)`

``` swift
public init(
        digit: Int,
        itemSpacing: CGFloat,
        itemFactory: @escaping (() -> T)
        ) 
```

## Properties

### `text`

``` swift
private(set) public var text: String = "" 
```

### `isEmpty`

``` swift
public var isEmpty: Bool 
```

### `isFilled`

``` swift
public var isFilled: Bool 
```

### `hasText`

``` swift
public var hasText: Bool 
```

### `intrinsicContentSize`

``` swift
override public var intrinsicContentSize: CGSize 
```

### `autocapitalizationType`

``` swift
public var autocapitalizationType = UITextAutocapitalizationType.none
```

### `autocorrectionType`

``` swift
public var autocorrectionType = UITextAutocorrectionType.no
```

### `spellCheckingType`

``` swift
public var spellCheckingType = UITextSpellCheckingType.no
```

### `keyboardType`

``` swift
public var keyboardType = UIKeyboardType.numberPad
```

### `keyboardAppearance`

``` swift
public var keyboardAppearance = UIKeyboardAppearance.default
```

### `returnKeyType`

``` swift
public var returnKeyType = UIReturnKeyType.done
```

### `enablesReturnKeyAutomatically`

``` swift
public var enablesReturnKeyAutomatically = true
```

### `canBecomeFirstResponder`

``` swift
override public var canBecomeFirstResponder: Bool 
```

## Methods

### `layoutSubviews()`

``` swift
override public func layoutSubviews() 
```

### `set(text:)`

``` swift
public func set(text: String) 
```

### `set(changeTextHandler:)`

``` swift
public func set(changeTextHandler: @escaping (String) -> ()) 
```

### `set(appearance:)`

``` swift
public func set(appearance: ItemAppearance) 
```

### `insertText(_:)`

``` swift
public func insertText(_ textToInsert: String) 
```

### `deleteBackward()`

``` swift
public func deleteBackward() 
```

### `becomeFirstResponder()`

``` swift
@discardableResult
    override public func becomeFirstResponder() -> Bool 
```

### `resignFirstResponder()`

``` swift
@discardableResult
    override public func resignFirstResponder() -> Bool 
```
