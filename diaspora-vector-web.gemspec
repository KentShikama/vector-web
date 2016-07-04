# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diaspora/vector/web/version'

Gem::Specification.new do |spec|
  spec.name          = "diaspora-vector-web"
  spec.version       = Diaspora::Vector::Web::VERSION
  spec.authors       = ["Kent Shikama"]
  spec.email         = ["kent@kentshikama.com"]

  spec.summary       = %q{This is a wrapper of Vector-web for Diaspora.}
  spec.homepage      = "https://github.com/KentShikama/diaspora-vector-web"

  spec.files         = Dir["{lib,vendor,public}/**/*"] + ["LICENSE", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
