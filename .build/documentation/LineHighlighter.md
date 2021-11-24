# LineHighlighter

A utility type that computes highlighted lines for diffs between `Code`
elements in a `TutorialSection`'s `Step`s.

``` swift
public struct LineHighlighter 
```

The logic is tricky, so here's a diagram of what is going on here:

``` 
                         Start
                           |
             N -- < `previousFile`? > ----------------------- Y
             |                                                |
 N -- <  Previous `Code`? > -- Y                    N -- < `reset`? > -- Y
 |                             |                    |                    |
[ ]               N -- < `name` match? > -- Y    Compare                [ ]
                  |                         |
                 [ ]              N -- < `reset`? > -- Y
                                  |                    |
                               Compare                [ ]
```
