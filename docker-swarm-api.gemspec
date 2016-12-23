# -*- encoding: utf-8 -*-

# To build:
# gem build docker-swarm-api.gemspec

require File.expand_path('../lib/docker/swarm/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Mike Moore / Rogue Wave Software']
  gem.email         = 'mike.moore@roguewave.com'
  gem.description   = 'API for creating container clusters using Docker Swarm.  Includes service, node, task management'
  gem.summary       = 'Ruby API for Docker Swarm'
  gem.homepage      = 'https://github.com/maxerly/docker-swarm-api'
  gem.license       = 'MIT'
  gem.files         = `git ls-files lib README.md LICENSE`.split($\)
  gem.name          = 'docker-swarm-api'
  gem.version       = Docker::Swarm::VERSION
  gem.add_dependency 'json'
  gem.add_runtime_dependency 'docker-api', '>= 1.33.1'
  gem.add_development_dependency 'byebug', '~> 6.0'
  gem.add_development_dependency 'retry_block'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 3.0'
  gem.add_development_dependency 'rspec-its'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'single_cov'
  gem.add_development_dependency 'parallel'
end
