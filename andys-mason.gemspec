$:.unshift File.expand_path("../lib", __FILE__)
require "mason/version"

Gem::Specification.new do |gem|
  gem.name     = "andys-mason"
  gem.version  = "#{Mason::VERSION}.3"

  gem.author   = "David Dollar"
  gem.email    = "ddollar@gmail.com"
  gem.homepage = "http://github.com/andys/mason"
  gem.summary  = "Build things"

  gem.description = gem.summary

  gem.executables = "mason"
  gem.files = Dir["**/*"].select { |d| d =~ %r{^(README|bin/|data/|ext/|lib/|spec/|test/)} }
  #gem.files << "man/mason.1"

  gem.add_dependency 'thor'
  gem.add_dependency 'foreman'

end
