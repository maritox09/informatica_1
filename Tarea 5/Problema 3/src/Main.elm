module Main exposing (fibonacci)

fibonacci : Int -> Int
fibonacci x = 
    if x == 0 then 0
    else if x == 1 then 1
    else fibonacci (x-1) + fibonacci (x-2)