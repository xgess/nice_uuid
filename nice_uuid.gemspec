# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nice_uuid/version'

Gem::Specification.new do |spec|
  spec.name          = "nice_uuid"
  spec.version       = NiceUuid::VERSION
  spec.authors       = ["Alex Gessner"]
  spec.email         = ["alex.gessner@gmail.com"]
  spec.description   = 'nice and easy, user-facing uuids'
  spec.summary       = 'NiceUuid.generate(36) for a pleasant uuid with 4, dash-separated, readable words'
  spec.homepage      = "https://github.com/xgess/nice_uuid"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
