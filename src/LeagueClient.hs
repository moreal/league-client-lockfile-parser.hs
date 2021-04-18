module LeagueClient
    (
      parseLockFile
    , LeagueClientLockfile(..)
    ) where

import Data.List
import Data.List.Split

import Text.Show.Functions

data LeagueClientLockfile = LeagueClientLockfile
    {
        name :: String
    ,   processId :: Int
    ,   port :: Int
    ,   password :: String
    ,   protocol :: String
    } deriving (Eq)

instance Show LeagueClientLockfile where
   show (LeagueClientLockfile name processId port password protocol) = intercalate ":" [name, show processId, show port, password, protocol]

parseLockFile :: String -> LeagueClientLockfile
parseLockFile x =
    LeagueClientLockfile {
                           name = name
                         , processId = read processId
                         , port = read port
                         , password = password
                         , protocol = protocol
                         }
    where [name, processId, port, password, protocol] = splitOn ":" x
