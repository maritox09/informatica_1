module Main exposing (primosMenores)

esPrimo : Int -> Bool
esPrimo a = primAux 2 a
primAux cont a =
    if a == 2 then True
    else if modBy cont a == 0 then False
    else if cont == a - 1 then True else primAux (cont + 1) a

primosMenores : Int -> List Int
primosMenores x =
    if x < 1 then []
    else if esPrimo x == False then primosMenores (x-1)
    else x::primosMenores (x-1)