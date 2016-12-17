{-# LANGUAGE TemplateHaskell #-}

module Types where

import Control.Lens

-- | Informations on a particular game
data Game = Game { _gameName :: String,
                   _settings :: Settings}
                   deriving (Show, Eq)
 
-- | settings
data Settings = Settings { _login    :: String,
                           _password :: String}
                           deriving (Show, Eq)

makeLenses ''Game
makeLenses ''Settings


