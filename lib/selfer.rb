require "selfer/version"

module Selfer
  def selfer(method)
    define_singleton_method(method) do |*args|
      new(*args).public_send(method)
    end
  end
end
