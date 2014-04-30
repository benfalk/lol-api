# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lol/api/version'

Gem::Specification.new do |spec|
  spec.name          = "lol-api"
  spec.version       = LOL::Api::VERSION
  spec.authors       = ["Benjamin Falk"]
  spec.email         = ["benjamin.falk@yahoo.com"]
  spec.summary       = %q{League of Legends API}
  spec.description   = %q{API wrapper for League of Legends}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
