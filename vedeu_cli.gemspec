# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vedeu/cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'vedeu_cli'
  spec.version       = Vedeu::CLI::VERSION
  spec.authors       = ['Gavin Laking']
  spec.email         = ['gavinlaking@gmail.com']

  spec.summary       = 'A plugin for Vedeu.'
  spec.description   = 'Provides client application generators for Vedeu.'
  spec.homepage      = 'http://github.com/gavinlaking/vedeu_cli'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'guard',              '2.13.0'
  spec.add_development_dependency 'guard-minitest',     '2.4.4'
  spec.add_development_dependency 'guard-rubocop',      '1.2.0'
  spec.add_development_dependency 'minitest',           '5.8.1'
  spec.add_development_dependency 'minitest-reporters', '1.1.2'
  spec.add_development_dependency 'mocha',              '1.1.0'
  spec.add_development_dependency 'pry',                '0.10.2'
  spec.add_development_dependency 'rubocop',            '0.34.2'
  spec.add_development_dependency 'ruby-prof',          '0.15.8'
  spec.add_development_dependency 'simplecov',          '0.10.0'
  spec.add_development_dependency 'simplecov-console',  '0.2.0'
  spec.add_development_dependency 'yard',               '0.8.7.6'

  spec.add_dependency 'rake', '~> 10.4'
  spec.add_dependency 'thor', '0.19.1'
end
