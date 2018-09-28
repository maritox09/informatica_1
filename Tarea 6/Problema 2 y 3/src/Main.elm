module Main exposing (..)

type Expresion = Valor Int | Suma Expresion Expresion | Mult Expresion Expresion

type Estado = Num Int | Cha (List Char)

paresear : String -> Expresion
paresear x = Valor (0)

--No entendi :(