# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "starting_blocks-rspec"
  spec.version       = "0.0.1"
  spec.authors       = ["Ross Fuhrman"]
  spec.email         = ["r.oss.fuhrman@gmail.com"]
  spec.description   = %q{Run your rspec tests automatically.}
  spec.summary       = %q{rspec support for starting_blocks}
  spec.homepage      = "http://www.github.com/rossfuhrman/starting_blocks-rspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "mocha"

  spec.add_runtime_dependency "starting_blocks"
end
