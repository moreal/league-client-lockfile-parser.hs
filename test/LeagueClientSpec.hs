module LeagueClientSpec (spec) where

import Test.Hspec
import LeagueClient

spec :: Spec
spec = do
    describe "LeagueClientLockfile" $
        describe "show" $
            it "should return as its format" $
                show (parseLockFile "LeagueClient:850968:54164:w1_IwJ7Iw3X05b5Ye6P0bQ:https") `shouldBe` "LeagueClient:850968:54164:w1_IwJ7Iw3X05b5Ye6P0bQ:https"

    describe "parseLockFile" $
        it "should return parsed LeagueClientLockfile" $
            parseLockFile "LeagueClient:850968:54164:w1_IwJ7Iw3X05b5Ye6P0bQ:https" `shouldBe` LeagueClientLockfile "LeagueClient" 850968 54164 "w1_IwJ7Iw3X05b5Ye6P0bQ" "https"
