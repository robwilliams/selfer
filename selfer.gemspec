# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selfer/version'

Gem::Specification.new do |spec|
  spec.name          = "selfer"
  spec.version       = Selfer::VERSION
  spec.authors       = ["Robert Williams"]
  spec.email         = ["rob@r-williams.com"]

  spec.summary       = %q{Saves creating class methods that delegate to the same instance method.}
  spec.homepage      = "https://github.com/robwilliams/selfer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
