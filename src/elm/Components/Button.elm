module Components.Button exposing (..)

import List exposing (append)
import Html exposing (Html, text, div)
import Html.Attributes exposing (style, class)


main : Html msg
main =
    view model


type alias Model =
    { label : String
    , class : StyleClass
    }


model : Model
model =
    { label = ""
    , class = Default
    }


type StyleClass
    = Default
    | Info
    | Warn
    | Danger
    | Success


type alias ComponentStyle =
    List ( String, String )


getStyle : StyleClass -> ComponentStyle
getStyle class =
    case class of
        Success ->
            append getDefaultStyle [ ( "background-color", "lightgreen" ) ]

        Info ->
            append getDefaultStyle [ ( "background-color", "lightblue" ) ]

        Warn ->
            append getDefaultStyle [ ( "background-color", "lightyellow" ) ]

        Danger ->
            append getDefaultStyle [ ( "background-color", "pink" ) ]

        Default ->
            append getDefaultStyle [ ( "background-color", "lightgray" ) ]


getDefaultStyle : ComponentStyle
getDefaultStyle =
    [ ( "display", "inline-block" )
    , ( "border", "1px solid #888" )
    , ( "border-radius", "2px" )
    , ( "padding", "2px 6px" )
    , ( "cursor", "pointer" )
    ]


view : Model -> Html msg
view model =
    div
        [ style (getStyle model.class)
        , class "button"
        ]
        [ text model.label ]
