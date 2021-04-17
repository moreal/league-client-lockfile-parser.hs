module Main where

import LeagueClient ( parseLockFile )

main :: IO ()
main = do
    lockfileContent <- getLine
    print $ parseLockFile lockfileContent
