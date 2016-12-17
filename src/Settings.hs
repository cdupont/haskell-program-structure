
module Settings where

import Control.Lens
import Control.Monad.State
import Types

checkSettings :: StateT Settings IO Bool
checkSettings = do
   log <- use login
   return (length log /= 0)
