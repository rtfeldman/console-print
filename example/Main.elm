port module Main exposing (..)

import Task
import Platform
import Console exposing (..)
import Json.Decode


port log : (String -> msg) -> Sub msg


main : Program Never () (Maybe String)
main =
    Platform.program
        { init = ( (), Cmd.none )
        , update = update
        , subscriptions = \_ -> log Just
        }


update : Maybe String -> () -> ( (), Cmd (Maybe String) )
update maybeStr model =
    case maybeStr of
        Just str ->
            let
                strings =
                    [ "this is " ++ plain "plain"
                    , "this is " ++ dark "dark"
                    , "this is " ++ bold "bold"
                    , "this is " ++ underline "underline"
                    , "this is " ++ colorsInverted "colorsInverted"
                    , "this is " ++ black "black"
                    , "this is " ++ red "red"
                    , "this is " ++ green "green"
                    , "this is " ++ yellow "yellow"
                    , "this is " ++ blue "blue"
                    , "this is " ++ magenta "magenta"
                    , "this is " ++ cyan "cyan"
                    , "this is " ++ white "white"
                    , "this is " ++ bgBlack "bgBlack"
                    , "this is " ++ bgRed "bgRed"
                    , "this is " ++ bgGreen "bgGreen"
                    , "this is " ++ bgYellow "bgYellow"
                    , "this is " ++ bgBlue "bgBlue"
                    , "this is " ++ bgMagenta "bgMagenta"
                    , "this is " ++ bgCyan "bgCyan"
                    , "this is " ++ bgWhite "bgWhite"
                    ]
                        |> String.join "\n"
            in
                ( Debug.log strings (), Cmd.none )

        Nothing ->
            ( (), Cmd.none )
