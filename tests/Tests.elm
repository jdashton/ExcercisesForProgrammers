module Tests exposing (..)

import Test exposing (..)
import Expect
import Test.Runner.Html
import String

import Tips


all : Test
all =
    describe "Tips Engine"
        [ test "Ten bucks at 15%" <| \() -> Expect.equal (1.50, 11.50) (Tips.calc 10 15)
        , test "Rounding change"  <| \() -> Expect.equal (1.69, 12.94) (Tips.calc 11.25 15)
        ]

main : Program Never
main =
  [ all
  ]
    |> concat
    |> Test.Runner.Html.run