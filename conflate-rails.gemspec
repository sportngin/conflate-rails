# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conflate-rails/version'

authors = {
  "Patrick Byrne" => "patrick.byrne@sportngin.com",
}

Gem::Specification.new do |spec|
  spec.name          = "conflate-rails"
  spec.version       = Conflate::Rails::VERSION
  spec.authors       = authors.keys
  spec.email         = authors.values
  spec.description   = %q{Load YAML files in your config directory into the Rails.application.config.}
  spec.summary       = %q{Load YAML files in your config directory into the Rails.application.config.}
  spec.homepage      = "https://github.com/sportngin/conflate-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails"
  spec.add_runtime_dependency "conflate"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
