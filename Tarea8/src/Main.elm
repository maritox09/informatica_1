module Main exposing (..)

zipWith : (a -> b -> c) -> List a -> List b -> List c
zipWith aux x1 y1 = case (x1, y1) of 
    ([], y1_) -> []
    (x1_, []) -> []
    (x::xs, y::ys) -> aux x y :: zipWith aux xs ys

groupBy : (a -> Bool) -> List a -> (List a, List a) 
groupBy z list = (aux1 z list, aux2 z list)

aux1 a list = case list of 
    [] -> []
    (x::xss) -> if a x 
                then aux1 a xss 
                else x:: aux1 a xss

aux2 a list = case list of 
    [] -> []
    (b::bss) -> if a b 
                then b:: aux2 a bss 
                else aux1 a bss

bind : Maybe a -> (a -> Maybe b) -> Maybe b
bind xs b = 
  case xs of 
    Nothing -> Nothing 
    Just a -> b a