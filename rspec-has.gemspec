# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/has/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-has"
  spec.version       = Rspec::Has::VERSION
  spec.authors       = ["Dmitry Gritsay"]
  spec.email         = ["unseductable@gmail.com"]

  spec.summary       = %q{One-liner for block expectations}
  spec.description   = %q{One-liner for block expectations}
  spec.homepage      = "https://github.com/d-unseductable/rspec-has"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
