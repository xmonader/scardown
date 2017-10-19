module Scardown exposing (..)
import Html exposing (..)
import Html.Events exposing (onInput, on)
import Html.Attributes exposing (..)
import Markdown

type Msg = Update String
type alias Model = String

view : String -> Html Msg
view model =
    div []
    [
          text "ELM Scardown"
        , div [] [textarea [rows 20, cols 100, onInput Update] []]

        , div [] [Markdown.toHtml [] model] 

    ]
update : Msg -> String -> String
update msg model =  
    case msg of
            Update x -> x

model : String
model = ""

main : Program Never String Msg
main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }
