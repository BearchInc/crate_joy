# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crate_joy/version'

Gem::Specification.new do |spec|
  spec.name          = "crate_joy"
  spec.version       = CrateJoy::VERSION
  spec.authors       = ["Daniel Amarante"]
  spec.email         = ["daniel.amarante@ambushconsulting.com"]

  spec.summary       = "Write a short summary, because Rubygems requires one."
  spec.description   = "Write a longer description or delete this line."
  spec.homepage      = "http://rubygems.org/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = ["lib/crate_joy.rb", "lib/crate_joy/box.rb", "lib/crate_joy/order.rb", "lib/crate_joy/version.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
