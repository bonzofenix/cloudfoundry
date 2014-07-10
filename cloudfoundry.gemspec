# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloudfoundry/version'

Gem::Specification.new do |spec|
  spec.name          = "cloudfoundry"
  spec.version       = Cloudfoundry::VERSION
  spec.authors       = ["Alan Moran"]
  spec.email         = ["bonzofenix@gmail.com"]
  spec.summary       = %q{Cloudfoundry cloud controller cli}
  spec.description   = %q{This wants to achive the functionality lost with cfoundry }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
