# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'br_inscricao_estadual/version'

Gem::Specification.new do |spec|
  spec.name          = "br_inscricao_estadual"
  spec.version       = BrInscricaoEstadual::VERSION
  spec.authors       = ["Yuri Poloni"]
  spec.email         = ["yuripoloni@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rdoc', '~> 4.0'
  spec.add_development_dependency "rspec", "~> 2.13"
  spec.add_development_dependency "pry", "~> 0.9"
  spec.add_development_dependency "pry-nav", "~> 0.2"
  spec.add_development_dependency "simplecov", "~> 0.7"
  spec.add_development_dependency "coveralls", "~> 0.6"
end
