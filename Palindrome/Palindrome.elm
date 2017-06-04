module Palindrome exposing (isPalindrome)


isPalindrome : List a -> Bool
isPalindrome xs =
    let
        reverse =
            List.reverse xs
    in
        if reverse == xs then
            True
        else
            False
