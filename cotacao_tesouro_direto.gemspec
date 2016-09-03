# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cotacao_tesouro_direto/version'

Gem::Specification.new do |spec|
  spec.name          = "cotacao_tesouro_direto"
  spec.version       = CotacaoTesouroDireto::VERSION
  spec.authors       = "Rubens Praser Júnior"
  spec.email         = "praser@gmail.com"

  spec.summary       = "A gem to check prices and rates of brazil's public titles offered through Tesouro Direto"
  spec.description   = "It checks the actual prices and rates of those papers directly from the website where they are negociated"
  spec.homepage      = "https://github.com/praser/cotacao_tesouro_direto"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
