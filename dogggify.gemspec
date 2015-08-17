# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogggify/version'

Gem::Specification.new do |spec|
  spec.name          = "dogggify"
  spec.version       = Dogggify::VERSION
  spec.authors       = ["Andrew"]
  spec.email         = ["Asaganda@gmail.com"]

  spec.summary       = %q{Convert everyday boring English into doge speak! This gem is based off of someone else's tutorial for personal teaching for how to create a gem.}
  spec.description   = %q{English to doge translation; this gem is based off of someone else's tutorial for personal teaching for how to create a gem.}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'engtagger'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"

  # this used for testing
  spec.add_development_dependency 'rspec'
end
