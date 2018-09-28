module Main exposing (..)

type Natural = Suc Natural | Cero

suma : Natural -> Natural -> Natural
suma x y = case (x,y) of
    (Cero,y_) -> y_
    (x_,Cero) -> x_
    (x_,Suc y_) -> suma (Suc x_) y_

resta : Natural -> Natural -> Natural
resta x y = case (x,y) of
    (Cero,y_) -> Cero
    (x_,Cero) -> x
    (Suc x_,Suc y_) -> resta x_ y_

mult : Natural -> Natural -> Natural
mult x y = case (x,y) of
    (Cero,_) -> Cero
    (_,Cero) -> Cero    
    (x_, Suc y_) -> suma (x_)(mult x_ y_)

div : Natural -> Natural -> (Natural,Natural)
div x y = divaux (x) (y) (Cero)
divaux x y c =
    if x == (Suc(Cero)) && y == (Suc(Cero)) then ((Suc(c),Cero))
    else if resta x y == Cero then (c,y)
    else divaux (resta x y) (y) (Suc (c))


