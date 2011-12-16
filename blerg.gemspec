require 'rubygems'
require 'rake'

Gem::Specification.new do |spec|
  spec.name = 'blerg'
  spec.summary = "Simple code generation using eRB"
  spec.version = "1.0.0"
  spec.authors = ['Pat Gannon']
  spec.email = 'gannon@bizo.com'
  spec.description = <<-END
    Blerg is designed to take the headache out of boilerplate code.
    Just write up an eRB template for the boilerplate and pass variables into it on the command line.
    END

  spec.files = Dir.glob("lib/**/*") + %w[README.md LICENSE.txt]
  spec.executables = ['blerg']
  spec.test_files = Dir.glob("spec/**/*")

  spec.add_dependency 'activesupport'
  spec.add_dependency 'i18n'
  spec.add_development_dependency 'rspec'
end
