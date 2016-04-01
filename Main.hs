module Main where

import Test.HUnit
import Chapter2_Tests
import qualified System.Exit as Exit


testsSuite = TestList [
                   Chapter2_Tests.tests
                 ]

main :: IO ()
main = do count <- runTestTT $ testsSuite
          if failures count > 0 then Exit.exitFailure else return ()


