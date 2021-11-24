# StarsKitDelegate

StarsKit events delegate

``` swift
public protocol StarsKitDelegate: class 
```

## Inheritance

`class`

## Requirements

### needCustomDisplayRateScreen()

Only call when the default behavior is not used

``` swift
func needCustomDisplayRateScreen() -> Bool
```

### didUpdateRating(from:​to:​)

This callback fire when the user change the app rate on the view

``` swift
func didUpdateRating(from context: StarsKitContext, to rate: Int)
```

#### Parameters

  - context: The context when the event fire
  - rate: The user app rate level

### didValidateRating(to:​)

User tap on the submit rating button

``` swift
func didValidateRating(to rate: Int)
```

#### Parameters

  - rate: The user app rate level

### didChooseAction(\`at\`:​)

User tap on the action related to a screen step

``` swift
func didChooseAction(`at` step: RatingStep)
```

#### Parameters

  - step: The last step displayed

### didChooseLater(\`at\`:​)

User tap on the later button related to a screen step

``` swift
func didChooseLater(`at` step: RatingStep)
```

#### Parameters

  - step: The last step displayed
