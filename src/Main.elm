module Main exposing (..)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Attributes as Attrs
import Html.Events as Events
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


type Color
    = Green
    | Yellow
    | Red


colorToHex : Color -> String
colorToHex colors =
    case colors of
        Green ->
            "#017f45"

        Yellow ->
            "#fdd86d"

        Red ->
            "#f73116"


colorToName : Color -> String
colorToName color =
    case color of
        Green ->
            "Verde"

        Yellow ->
            "Amarillo"

        Red ->
            "Rojo"


type Msg
    = HeightChange Int
    | ColorChange Color


type alias Model =
    { height : Int
    , color : Color
    }


init : String -> ( Model, Cmd Msg )
init _ =
    ( { height = 0, color = Green }, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        HeightChange d ->
            ( { model | height = model.height + d }, Cmd.none )

        ColorChange color ->
            ( { model | color = color }, Cmd.none )


view : Model -> Html Msg
view model =
    let
        h =
            424 + model.height |> String.fromInt
    in
    Html.div [ Attrs.class "p-1" ]
        [ Html.h1 [] [ Html.text "Carmen Herrera" ]
        , Html.h2 [ Attrs.class "italic" ] [ Html.text <| "Blanco y " ++ colorToName model.color ]
        , Html.div [ Attrs.class "w-full p-4" ]
            [ Svg.svg
                [ Svg.width "100%"
                , Svg.viewBox "0 0 1111 1257"
                , Svg.class "bg-[#f3f3f3]"
                ]
                [ Svg.polygon
                    [ Svg.points <| "0,480 555," ++ h ++ " 1111,480"
                    , Svg.fill <| colorToHex model.color
                    ]
                    []
                ]
            ]
        , Html.div [ Attrs.class "flex justify-center gap-2" ]
            [ Html.button [ Attrs.class "text-white w-6 bg-slate-500 p-1 rounded", Events.onClick <| HeightChange -10 ] [ Html.text "↑" ]
            , Html.button [ Attrs.class "text-white  w-6 bg-slate-500 p-1 rounded", Events.onClick <| HeightChange 10 ] [ Html.text "↓" ]
            , Html.button [ Attrs.class "text-white bg-[#017f45] p-1 rounded", Events.onClick <| ColorChange Green ] [ Html.text "Verde" ]
            , Html.button [ Attrs.class "text-black bg-[#fdd86d] p-1 rounded", Events.onClick <| ColorChange Yellow ] [ Html.text "Amarillo" ]
            , Html.button [ Attrs.class "text-white bg-[#f73116] p-1 rounded", Events.onClick <| ColorChange Red ] [ Html.text "Rojo" ]
            ]
        ]
