

module Game where

import Control.Lens
import Control.Monad
import Control.Monad.State
import Types
import Settings

startGame :: StateT Game IO Bool
startGame = do
  liftIO $ putStrLn "Starting Game"
  zoom settings checkSettings

