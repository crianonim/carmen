module Main exposing (..)

import Html
import Html.Attributes as Attrs


main =
    Html.div [ Attrs.class "p-1 bg-yellow-500 text-black-400 rounded border" ]
        [ Html.text "Hello, world"
        ]
