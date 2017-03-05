# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'password_generator_trigram/version'

Gem::Specification.new do |spec|
  spec.name          = "password_generator_trigram"
  spec.version       = PasswordGeneratorTrigram::VERSION
  spec.authors       = ["Makvik"]
  spec.email         = ["storm.gman@mail.ru"]
  spec.summary       = "GPW - Generate pronounceable passwords. This program uses statistics on the frequency of three-letter sequences in English to generate passwords."
  spec.description   = "GPW - Generate pronounceable passwords. This program uses statistics on the frequency of three-letter sequences in English to generate passwords."
  spec.homepage      = "https://github.com/Makvik/password_generator_trigram"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
