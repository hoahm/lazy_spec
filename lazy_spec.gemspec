# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lazy_spec/version'

Gem::Specification.new do |spec|
  spec.name          = 'lazy_spec'
  spec.version       = LazySpec::VERSION
  spec.authors       = ['Hoa Hoang']
  spec.email         = ['nobi.hoa@gmail.com']
  spec.summary       = 'Making unit test more easier than ever.'
  spec.description   = 'Making unit test more easier than ever.'
  spec.homepage      = 'https://github.com/hoahm/lazy_spec'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails', '~> 3.1.0'
end
