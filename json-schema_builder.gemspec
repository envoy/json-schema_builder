# coding: utf-8
lib = File.expand_path '../lib', __FILE__
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json/schema_builder/version'

Gem::Specification.new do |spec|
  spec.name          = 'json-schema_builder'
  spec.version       = JSON::SchemaBuilder::VERSION
  spec.authors       = ['Michael Parrish']
  spec.email         = ['michael@zooniverse.org']
  spec.summary       = 'Build JSON schemas with Ruby'
  spec.description   = 'Build JSON schemas with Ruby'
  spec.homepage      = 'https://github.com/parrish/json-schema_builder'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split "\x0"
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'pry'
  spec.add_dependency 'activesupport', '~> 5.0'
  spec.add_dependency 'json-schema', '~> 2.5'
end
