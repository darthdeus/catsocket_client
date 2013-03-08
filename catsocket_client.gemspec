# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'catsocket_client/version'

Gem::Specification.new do |spec|
  spec.name          = "catsocket_client"
  spec.version       = CatsocketClient::VERSION
  spec.authors       = ["Jakub Arnold"]
  spec.email         = ["darthdeus@gmail.com"]
  spec.description   = %q{Client for CatSocket}
  spec.summary       = %q{Client for CatSocket}
  spec.homepage      = "http://catsocket.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "rake"
end
