module Main exposing (..)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Attributes as Attrs


main : Program String Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = always Sub.none
        , view = view
        }


type Msg
    = NoOp


type alias Model =
    ()


init : String -> ( Model, Cmd Msg )
init _ =
    ( (), Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html msg
view model =
    Html.div [ Attrs.class "border border-slate-500" ]
        [ Html.h1 [] [ Html.text "Carmen Herrera" ]
        ]
