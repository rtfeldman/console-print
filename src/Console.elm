module Console exposing (plain, dark, bold, underline, colorsInverted, black, red, green, yellow, blue, magenta, cyan, white, bgBlack, bgRed, bgGreen, bgYellow, bgBlue, bgMagenta, bgCyan, bgWhite)

{-| Functions to wrap strings in ANSI Escape sequences for colors and styling.

## Text Styles
@docs plain, dark, bold, underline, colorsInverted

## Foreground Colors
@docs black, red, green, yellow, blue, magenta, cyan, white

## Background Colors
@docs bgBlack, bgRed, bgGreen, bgYellow, bgBlue, bgMagenta, bgCyan, bgWhite
-}

-- Text Styles


{-| Display the text in the console's default style.

-}
plain : String -> String
plain str =
    String.join "" [ "\u{001B}[0m", str, "\u{001B}[0m" ]


{-| Make the text darker.

This can be used with other text modifiers, such as color.

    import Console exposing (dark, green)


    -- "Hello, dark green world!" with "dark green" in dark green
    greeting : String
    greeting =
        "Hello, " ++ (dark << green) "dark green" ++ " world!"

Not all terminals support this.
-}
dark : String -> String
dark str =
    String.join "" [ "\u{001B}[2m", str, "\u{001B}[22m" ]


{-| Make the text bold.

This can be used with other text modifiers, such as color.

    import Console exposing (bold, blue)


    -- "Hello, bold blue world!" with "bold blue" in bold and blue
    greeting : String
    greeting =
        "Hello, " ++ (bold << blue) "bold blue" ++ " world!"

Some terminals implement this as a color change rather than a boldness change.
-}
bold : String -> String
bold str =
    String.join "" [ "\u{001B}[1m", str, "\u{001B}[22m" ]


{-| Make the text underlined.

This can be used with other text modifiers, such as color.

    import Console exposing (underline)


    -- "This will look like a hyperlink" with "hyperlink" underlined
    example : String
    example =
        "This will look like a " ++ underline "hyperlink"

Not all terminals support this.
-}
underline : String -> String
underline str =
    String.join "" [ "\u{001B}[4m", str, "\u{001B}[24m" ]


{-| Invert the foreground and background colors from what they would otherwise be.
-}
colorsInverted : String -> String
colorsInverted str =
    String.join "" [ "\u{001B}[7m", str, "\u{001B}[27m" ]



-- Foreground Colors


{-| Make the foreground text black.
-}
black : String -> String
black str =
    String.join "" [ "\u{001B}[30m", str, "\u{001B}[39m" ]


{-| Make the foreground text red.
-}
red : String -> String
red str =
    String.join "" [ "\u{001B}[31m", str, "\u{001B}[39m" ]


{-| Make the foreground text green.
-}
green : String -> String
green str =
    String.join "" [ "\u{001B}[32m", str, "\u{001B}[39m" ]


{-| Make the foreground text yellow.
-}
yellow : String -> String
yellow str =
    String.join "" [ "\u{001B}[33m", str, "\u{001B}[39m" ]


{-| Make the foreground text blue.
-}
blue : String -> String
blue str =
    String.join "" [ "\u{001B}[34m", str, "\u{001B}[39m" ]


{-| Make the foreground text magenta.
-}
magenta : String -> String
magenta str =
    String.join "" [ "\u{001B}[35m", str, "\u{001B}[39m" ]


{-| Make the foreground text cyan.
-}
cyan : String -> String
cyan str =
    String.join "" [ "\u{001B}[36m", str, "\u{001B}[39m" ]


{-| Make the foreground text white.
-}
white : String -> String
white str =
    String.join "" [ "\u{001B}[37m", str, "\u{001B}[39m" ]



-- Background Colors


{-| Make the background black.
-}
bgBlack : String -> String
bgBlack str =
    String.join "" [ "\u{001B}[40m", str, "\u{001B}[49m" ]


{-| Make the background red.
-}
bgRed : String -> String
bgRed str =
    String.join "" [ "\u{001B}[41m", str, "\u{001B}[49m" ]


{-| Make the background green.
-}
bgGreen : String -> String
bgGreen str =
    String.join "" [ "\u{001B}[42m", str, "\u{001B}[49m" ]


{-| Make the background yellow.
-}
bgYellow : String -> String
bgYellow str =
    String.join "" [ "\u{001B}[43m", str, "\u{001B}[49m" ]


{-| Make the background blue.
-}
bgBlue : String -> String
bgBlue str =
    String.join "" [ "\u{001B}[44m", str, "\u{001B}[49m" ]


{-| Make the background magenta.
-}
bgMagenta : String -> String
bgMagenta str =
    String.join "" [ "\u{001B}[45m", str, "\u{001B}[49m" ]


{-| Make the background cyan.
-}
bgCyan : String -> String
bgCyan str =
    String.join "" [ "\u{001B}[46m", str, "\u{001B}[49m" ]


{-| Make the background white.
-}
bgWhite : String -> String
bgWhite str =
    String.join "" [ "\u{001B}[47m", str, "\u{001B}[49m" ]
