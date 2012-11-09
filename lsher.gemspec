# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lsher/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Brad Cater']
  gem.email         = ['bradcater@gmail.com']
  gem.description   = %q{This is little more than a gemified version of the Ruby-LSH library written by Joe Cannatti available at https://github.com/DreamKumo/Ruby-LSH.}
  gem.summary       = %q{Quickly calculate a locality sensitive hash}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "lsher"
  gem.require_paths = ["lib"]
  gem.version       = Lsher::Lsh::VERSION

  s.add_development_dependency "rake", "~> 0.9.2"
  gem.add_development_dependency "rspec", "~> 2.11"
end
