# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruchability/version'

Gem::Specification.new do |spec|
  spec.name          = "ruchability"
  spec.version       = Ruchability::VERSION
  spec.authors       = ["Mickaël Floc'hlay"]
  spec.email         = ["dirtyhenry@gmail.com"]
  spec.summary       = %q{Utility to monitor internet connectivity of your network system.}
  spec.description   = %q{Inspired from Apple's Reachability project, this gem is an attempt to have a Ruby tool monitoring internet connectivity, especially for Mac OS X machines.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  
  #spec.add_runtime_dependency "benchmark"
  #spec.add_runtime_dependency "net/http"
end
