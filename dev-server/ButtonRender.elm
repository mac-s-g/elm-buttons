module Main exposing (..)

import Components.Button as Button exposing (..)
import Html exposing (Html, div)
import Html.Attributes exposing (style)


main : Html msg
main =
    div
        [ style
            [ ( "margin", "30px" )
            ]
        ]
        [ Button.view
            { label = "success"
            , class = Success
            }
        , Button.view
            { label = "info"
            , class = Info
            }
        , Button.view
            { label = "warn"
            , class = Warn
            }
        , Button.view
            { label = "danger"
            , class = Danger
            }
        , Button.view
            { label = "default"
            , class = Default
            }
        ]
