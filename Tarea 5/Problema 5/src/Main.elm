module Main exposing (nPrimos)

esPrimo : Int -> Bool
esPrimo a = primAux 2 a
primAux cont a =
    if a == 2 then True
    else if modBy cont a == 0 then False
    else if cont == a - 1 then True else primAux (cont + 1) a

nPrimos : Int -> List Int
nPrimos x = menAux (x,2)
menAux (x,y) =
    if x == 0 then []
    else if esPrimo y == False then menAux (x,y+1)
    else y:: menAux(x-1,y+1)