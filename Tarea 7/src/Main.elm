module Main exposing (..)

type Expresion = Valor Int | Suma Expresion Expresion | Mult Expresion Expresion

suma : Int-> Int -> Int
suma x y = x + y

multiplicacion : Int-> Int -> Int
multiplicacion x y = x * y

reducir : (Int -> Int -> Int, Int -> Int -> Int) -> Expresion -> Int
reducir (x,y) z = case z of
    Suma a b -> x (reducir (x, y) a) (reducir (x, y) b)
    Mult a b -> y (reducir (x, y) a) (reducir (x, y) b)
    Valor a -> a