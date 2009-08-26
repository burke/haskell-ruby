begin
  require 'rubygems'
rescue LoadError; end
require 'ffi'

class MyFFI
  extend FFI::Library
  ffi_lib 'Ffitest'
  attach_function :hsfun, [:int], :int
end

puts MyFFI.hsfun(0)
