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


  spec.add_runtime_dependency 'popper_js', '>= 1.12.9', '< 2'

  spec.add_runtime_dependency 'sass', '>= 3.5.2'
  spec.add_runtime_dependency 'autoprefixer-rails', '>= 6.0.3'

  # Testing dependencies
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'minitest', '~> 5.8.0'
  spec.add_development_dependency 'minitest-reporters', '~> 1.0.5'
  spec.add_development_dependency 'term-ansicolor'
  # Integration testing
  spec.add_development_dependency 'capybara', '>= 2.6.0'
  spec.add_development_dependency 'poltergeist'
  # Dummy Rails app dependencies
  spec.add_development_dependency 'actionpack', '>= 4.1.5'
  spec.add_development_dependency 'activesupport', '>= 4.1.5'
  spec.add_development_dependency 'json', '>= 1.8.1'
  spec.add_development_dependency 'sprockets-rails', '>= 2.3.2'
  spec.add_development_dependency 'jquery-rails', '>= 3.1.0'
  spec.add_development_dependency 'slim-rails'
  spec.add_development_dependency 'uglifier'

  spec.files      = `git ls-files`.split("\n")
  spec.test_files = `git ls-files -- test/*`.split("\n")

  #spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


end
