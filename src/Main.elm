module Main exposing (..)

import Html exposing (Html, div, h1, p, button, text)
import Html.Events exposing (onClick)


main : Program Never Model Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int


model : Model
model =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement
    | Reset


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text (toString model) ]
        , p []
            [ button [ onClick Decrement ] [ text "-" ]
            , button [ onClick Increment ] [ text "+" ]
            ]
        , p []
            [ button [ onClick Reset ] [ text "Reset" ]
            ]
        ]
