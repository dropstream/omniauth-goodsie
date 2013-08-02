# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-goodsie/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-goodsie"
  s.version     = OmniAuth::Goodsie::VERSION
  s.authors     = ["Karl Falconer"]
  s.email       = ["karl@falconerdevelopment.com"]
  s.homepage    = "https://github.com/dropstream/omniauth-goodsie"
  s.summary     = %q{OmniAuth strategy for Goodsie}
  s.description = %q{In this gem you will find an OmniAuth Goodsie strategy.}

  s.rubyforge_project = "omniauth-ebay"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.1.0'

  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'rake'
end
