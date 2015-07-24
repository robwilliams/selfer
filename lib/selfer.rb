require "selfer/version"

module Selfer
  def selfer(*method_names)
    method_names.each do |method_name|
      define_singleton_method(method_name) do |*args|
        instance = allocate
        init_args = args.shift(instance.method(:initialize).arity)
        instance.send(:initialize, *init_args)
        instance.public_send(method_name, *args)
      end
    end
  end
end
