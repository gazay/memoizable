lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memoizable/version'

Gem::Specification.new do |gem|
  gem.name        = 'memoizable'
  gem.version     = Memoizable::VERSION.dup
  gem.authors     = ['Dan Kubb', 'Erik Michaels-Ober']
  gem.email       = ['dan.kubb@gmail.com', 'Erik Michaels-Ober']
  gem.description = 'Memoize method return values'
  gem.summary     = gem.description
  gem.homepage    = 'https://github.com/dkubb/memoizable'
  gem.licenses    = %w[MIT]

  gem.require_paths    = %w[lib]
  gem.files            = `git ls-files`.split($/)
  gem.test_files       = `git ls-files -- spec/{unit,integration}`.split($/)
  gem.extra_rdoc_files = %w[LICENSE README.md CONTRIBUTING.md TODO]

  gem.add_runtime_dependency('thread_safe', '~> 0.1.3')

  gem.add_development_dependency('bundler', '~> 1.3', '>= 1.3.5')
end
