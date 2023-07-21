module Main exposing (..)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Attributes as Attrs
import Svg
import Svg.Attributes as Svg


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
        , Html.div [ Attrs.class "border border-slate-500 w-[300px] " ]
            [ Svg.svg
                [ Svg.width "100%"
                , Svg.viewBox "0 0 1111 1257"
                , Svg.class "bg-[#f3f3f3]"
                ]
                [ Svg.polygon
                    [ Svg.points "0,480 555,424 1111,480"
                    , Svg.fill "#017f45"
                    ]
                    []
                ]
            ]
        ]
