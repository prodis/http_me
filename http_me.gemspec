lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_me/version'

Gem::Specification.new do |spec|
  spec.name          = 'http_me'
  spec.version       = HttpMe::VERSION
  spec.authors       = ['Prodis a.k.a. Fernando Hamasaki de Amorim']
  spec.email         = ['prodis@gmail.com']
  spec.description   = %q{HttpMe}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/prodis/http_me'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = Gem::Requirement.new('>= 1.9.3')

  spec.add_dependency 'wannabe_bool'

  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'vcr', '~> 2.9'
  spec.add_development_dependency 'webmock', '~> 1.15'
end
