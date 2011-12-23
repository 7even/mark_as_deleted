# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'mark_as_deleted/version'

Gem::Specification.new do |s|
  s.name        = 'mark_as_deleted'
  s.version     = MarkAsDeleted::VERSION
  s.authors     = ['Vsevolod Romashov']
  s.email       = ['7@7vn.ru']
  s.homepage    = ""
  s.summary     = "Allows to mark AR objects as deleted instead of actual deletion"
  s.description = "A simple gem that adds mark_as_deleted ActiveRecord macro. Models having this are not actually being deleted, they are marked as deleted instead."
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_dependency 'activerecord', '~> 3'
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
