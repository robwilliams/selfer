require "selfer/version"

module Selfer
  def selfer(method)
    define_singleton_method(method) do |*args|
      instance = allocate
      init_args = args.shift(instance.method(:initialize).arity)
      instance.send(:initialize, *init_args)
      instance.public_send(method, *args)
    end
  end
end
