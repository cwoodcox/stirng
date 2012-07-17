# -*- encoding: utf-8 -*-
require File.expand_path('../lib/stirng/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Corey Woodcox"]
  gem.email         = ["corey.woodcox@gmail.com"]
  gem.description   = %q{Stirng helps you avoid typos}
  gem.summary       = %q{Stirng is a gem that implements the Jaro-Winkler Distance algorithm to detect typos and inadvertant misspellings.}
  gem.homepage      = "https://github.com/cwoodcox/stirng"

  gem.files         = `git ls-files`.split($\)
  gem.extensions    = ['ext/stirng/extconf.rb']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "stirng"
  gem.require_paths = ["lib"]
  gem.version       = Stirng::VERSION
end
