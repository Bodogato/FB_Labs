module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.List 

singleton :: forall arg. arg -> List arg
singleton arg = arg : Nil

null :: forall arg. List arg -> Boolean
null Nil = true
null _ = false 

snoc :: forall arg. List arg -> arg -> List arg
snoc list elem = reverse (elem : reverse list)

length :: forall arg. List arg -> Int 
length Nil = 0
length (Cons _ array) = 1 + length array



firstTask :: Int
firstTask = 7

secondTask :: List Int
secondTask = Nil

thirdTask :: List Int
thirdTask = 12 : 76 : 8 : Nil

thirdTaskInsert :: Int
thirdTaskInsert = 9

fourthTask :: List Int
fourthTask = 4 : 3 : 7 : 3 : Nil


main :: Effect Unit
main = do
  log ("Task 1: " <> show (singleton firstTask))
  log ("Task 2: " <> show (null secondTask))
  log ("Task 3: " <> show (snoc thirdTask thirdTaskInsert))
  log ("Task 4: " <> show (length fourthTask))