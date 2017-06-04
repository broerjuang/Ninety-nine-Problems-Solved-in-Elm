module DropWhile exposing (..)

import Html
import List


-- Function Implementation from the gitbook
-- I still learning it


type alias PredicateFunction a =
    a -> Bool


dropWhile : PredicateFunction a -> List a -> List a
dropWhile predicate list =
    case list of
        [] ->
            []

        x :: xs ->
            if (predicate x) then
                dropWhile predicate xs
            else
                list



-- End of function implementation


main : Html.Html a
main =
    Html.text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all ((==) True)
        [ (dropWhile isOdd [ 1, 2, 1 ] == [ 2, 1 ])
        , (dropWhile isEven [ 1, 2, 1 ] == [ 1, 2, 1 ])
        , (dropWhile isEven [] == [])
        , (dropWhile isEven [ 2, 4, 100000, 1 ] == [ 1 ])
        , (dropWhile (\x -> x < 5) (List.range 1 10) == [ 5, 6, 7, 8, 9, 10 ])
        ]


isEven : Int -> Bool
isEven x =
    x % 2 == 0


isOdd : Int -> Bool
isOdd x =
    x % 2 /= 0
