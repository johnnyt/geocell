# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geocell/version'

Gem::Specification.new do |spec|
  spec.name          = "geocell"
  spec.version       = Geocell::VERSION
  spec.authors       = ["JohnnyT"]
  spec.email         = ["ubergeek3141@gmail.com"]
  spec.summary       = %q{Data structure using GeoHash}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/johnnyt/geocell"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
