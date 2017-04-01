module Console exposing (..)

{-| Functions to wrap strings in ANSI Escape sequences for colors and styling.

## Text Styles
@docs plain, dim, bold, underline, colorsInverted

## Foreground Colors
@docs black, red, green, yellow, blue, magenta, cyan, white

## Background Colors
@docs bgBlack, bgRed, bgGreen, bgYellow, bgBlue, bgMagenta, bgCyan, bgWhite
-}

-- Text Styles


plain : String -> String
plain str =
    String.join "" [ "\x1B[0m", str, "\x1B[0m" ]


dim : String -> String
dim str =
    String.join "" [ "\x1B[2m", str, "\x1B[22m" ]


bold : String -> String
bold str =
    String.join "" [ "\x1B[1m", str, "\x1B[22m" ]


underline : String -> String
underline str =
    String.join "" [ "\x1B[4m", str, "\x1B[24m" ]


colorsInverted : String -> String
colorsInverted str =
    String.join "" [ "\x1B[7m", str, "\x1B[27m" ]



-- Foreground Colors


black : String -> String
black str =
    String.join "" [ "\x1B[30m", str, "\x1B[39m" ]


red : String -> String
red str =
    String.join "" [ "\x1B[31m", str, "\x1B[39m" ]


green : String -> String
green str =
    String.join "" [ "\x1B[32m", str, "\x1B[39m" ]


yellow : String -> String
yellow str =
    String.join "" [ "\x1B[33m", str, "\x1B[39m" ]


blue : String -> String
blue str =
    String.join "" [ "\x1B[34m", str, "\x1B[39m" ]


magenta : String -> String
magenta str =
    String.join "" [ "\x1B[35m", str, "\x1B[39m" ]


cyan : String -> String
cyan str =
    String.join "" [ "\x1B[36m", str, "\x1B[39m" ]


white : String -> String
white str =
    String.join "" [ "\x1B[37m", str, "\x1B[39m" ]



-- Background Colors


bgBlack : String -> String
bgBlack str =
    String.join "" [ "\x1B[40m", str, "\x1B[49m" ]


bgRed : String -> String
bgRed str =
    String.join "" [ "\x1B[41m", str, "\x1B[49m" ]


bgGreen : String -> String
bgGreen str =
    String.join "" [ "\x1B[42m", str, "\x1B[49m" ]


bgYellow : String -> String
bgYellow str =
    String.join "" [ "\x1B[43m", str, "\x1B[49m" ]


bgBlue : String -> String
bgBlue str =
    String.join "" [ "\x1B[44m", str, "\x1B[49m" ]


bgMagenta : String -> String
bgMagenta str =
    String.join "" [ "\x1B[45m", str, "\x1B[49m" ]


bgCyan : String -> String
bgCyan str =
    String.join "" [ "\x1B[46m", str, "\x1B[49m" ]


bgWhite : String -> String
bgWhite str =
    String.join "" [ "\x1B[47m", str, "\x1B[49m" ]
