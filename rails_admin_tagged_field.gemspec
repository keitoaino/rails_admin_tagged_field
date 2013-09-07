# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_tagged_field/version'

Gem::Specification.new do |spec|
  spec.add_development_dependency('rails_admin')

  spec.name          = "rails_admin_tagged_field"
  spec.version       = RailsAdminTaggedField::VERSION
  spec.authors       = ["Keito Aino"]
  spec.email         = ["keitoaino@gmail.com"]
  spec.description   = "Adds a tagged field to rails_admin"
  spec.summary       = "Field with ability to add tags (special words will be parsed) to input"
  spec.homepage      = "http://github.com/keitoaino/rails_admin_tagged_field"
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
