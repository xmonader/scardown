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
          div [style [("float", "left"), ("width", "50%")]] [textarea [rows 100, cols 85, onInput Update] []]
        , div [style [("float", "left"), ("width", "50%")]] [Markdown.toHtml [] model] 

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
