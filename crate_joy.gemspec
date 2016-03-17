# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crate_joy/version'

Gem::Specification.new do |spec|
  spec.name          = 'crate_joy'
  spec.version       = CrateJoy::VERSION
  spec.authors       = ['Daniel Amarante']
  spec.email         = ['daniel.amarante@ambushconsulting.com']

  spec.summary       = 'Crate Joy API.'
  spec.description   = 'Crate Joy API..'
  spec.homepage      = 'http://rubygems.org/'
  spec.license       = 'MIT'
  
  spec.files = `git ls-files`.split($\)
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_dependency 'rest-client', '~> 1.8'
end
