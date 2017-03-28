lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "dynamic_uniqueness_validator"
  spec.version       = "0.1.0"
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Pavel Kononovich"]
  spec.email         = ["p.kononovich@gmail.com"]

  spec.summary       = %q{Dynamic uniqueness validator.}
  spec.description   = %q{Dynamic uniqueness validator to validation two fields before save in db.}
  spec.homepage      = "https://github.com/Platinet/dynamic_uniqueness_validator"
  spec.license       = "MIT"

  spec.files         = Dir['{lib}/**/*', 'LICENSE', 'README.md']
  spec.test_files    = Dir['{spec}/**/*']

  spec.add_dependency "activerecord", ">= 0"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
