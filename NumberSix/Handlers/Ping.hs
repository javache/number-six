{-# LANGUAGE OverloadedStrings #-}
module NumberSix.Handlers.Ping
    ( handler
    ) where

import NumberSix.Irc
import NumberSix.Message
import NumberSix.Bang

handler :: Handler
handler = makeHandler "ping" $ onCommand "PING" $ do
    params <- getParameters
    writeMessage $ makeMessage "PONG" params
