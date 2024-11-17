module Main exposing (..)
import Browser
import Html exposing (Html, button, div, text, h1, h3)
import Html.Events exposing (onClick)

--Main
main =
  Browser.sandbox {init = 0, update = update, view = view}

--Model
-- Håller appens tillstånd
type alias Model = Int

init : Model
init =
  0

--Update
--Hanterar förändringar i tillståndet baserat på händelser
type Msg = Öka | Minska
update : Msg -> Model -> Model
update msg model =
  case msg of
      Öka ->
        model + 1

      Minska ->
       model - 1
--View
--Renderar gränssnittet baserat på tillståndet
view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text "Saras första projekt" ]
  ,button [onClick Öka][text "+"]
  , div[][ h3[] [text (String.fromInt model) ]
  , button [ onClick Minska] [text "-"]
  ]]
