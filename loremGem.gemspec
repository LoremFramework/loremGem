# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'loremGem/version'

Gem::Specification.new do |spec|
  spec.name          = "loremGem"
  spec.version       = LoremGem::VERSION
  spec.authors       = ["Andrea Crisciotti"]
  spec.email         = ["crisciottiandrea@gmail.com"]

  spec.summary       = %q{This gem is created to the LoremFramework's sistem.}
  spec.description   = %q{Unify the web.}
  spec.homepage      = "https://github.com/LoremFramework/loremGem"
  spec.license       = "MIT"

  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
