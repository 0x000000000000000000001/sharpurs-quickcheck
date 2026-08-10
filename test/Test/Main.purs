module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Test.QuickCheck (quickCheck, quickCheck')

main :: Effect Unit
main = do
  log "Testing QuickCheck..."

  log "quickCheck (n + 1 > n)"
  quickCheck \n -> n + 1 > (n :: Int)

  log "quickCheck' 10 (n * 2 == n + n)"
  quickCheck' 10 \n -> n * 2 == (n :: Int) + n
