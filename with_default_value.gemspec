# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'with_default_value/version'

Gem::Specification.new do |spec|
  spec.name = "with_default_value"
  spec.version = WithDefaultValue::VERSION
  spec.authors = ["Shu Fujita"]
  spec.email = ["osorubeki.fujita@gmail.com"]

  spec.summary = "This method provides method \'with_default_value\' to objects."
  spec.description = "This method provides method \'with_default_value\' to objects. When this method is called, the method checkes instance by \'blank?\' (defined by ActiveSupport, not \'nil?\'). If the instance is evaluated as blank, returns default value."
  spec.homepage = "https://github.com/osorubeki-fujita/with_default_value"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
    # raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  
  spec.add_development_dependency "capistrano"
  spec.add_development_dependency "deplo" , ">= 0.1.4"

  spec.add_runtime_dependency "activesupport" , ">= 4.2.1"
end
