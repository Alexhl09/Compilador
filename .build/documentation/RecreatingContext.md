# RecreatingContext

An action for which you can optionally customize the documentation context.

``` swift
public protocol RecreatingContext: Action 
```

## Inheritance

[`Action`](/Action), [`Action`](/Action)

## Requirements

### setupContext

A closure that an action calls with the action's context for built documentation,
before the action performs work.

``` swift
var setupContext: ((inout DocumentationContext) -> Void)? 
```

Use this closure to set the action's context to a certain state before the action runs.
