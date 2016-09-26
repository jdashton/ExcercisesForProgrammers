module Tips exposing (..)

type alias TipData = (Float, Float)

calc : Float -> Float -> TipData
calc bill_amt tip_percent =
  ( bill_amt *  tip_percent        |> munge
  , bill_amt * (tip_percent + 100) |> munge
  )

munge : Float -> Float
munge amt =
  amt
  |> round
  |> toFloat
  |> div100

div100 x = x / 100