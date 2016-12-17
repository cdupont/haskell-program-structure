
module Main where

import Game
import Types
import Control.Monad
import Control.Monad.State

main :: IO ()
main = do
   let settings = Settings "myName" "myPass"
   let game = Game "myGame" settings 
   void $ execStateT startGame game
