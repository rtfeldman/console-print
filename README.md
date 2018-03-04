# console-print

Print formatted text to the console using [ANSI escape sequences](http://bluesock.org/~willg/dev/ansi.html).

```
import Console exposing (dark, green)


-- "Hello, dark green world!" with "dark green" in dark green
greeting : String
greeting =
    "Hello, " ++ (dark << green) "dark green" ++ " world!"
```

## Running Examples

```
$ cd example
$ elm-make --output=elm.js Main.elm && node run.js
```

