{-# LANGUAGE ForeignFunctionInterface #-}
module Ffitest where

import Foreign
import Foreign.C.Types

hsfun :: CInt -> IO CInt
hsfun x = do
  putStrLn "Hello, Haskell!"
  return (42 + x)

foreign export ccall hsfun :: CInt -> IO CInt
