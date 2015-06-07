$:.push File.expand_path("../lib", __FILE__)
require "wiskey/version"
# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "wiskey"
  s.summary = "The solutoiuns for the rails cutupping."

  s.authors                   = [ "Alexey Osipenko" ]
  s.email                     = [ "alexey@osipenko.in.ua" ]
  s.homepage                  = "https://github.com/cimon-io/wiskey/"
  s.description = "The rails 3 gem, which include SCSS mixins and default rails templates for true-cutupping."
  s.version = Wiskey::VERSION

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'sass', '>= 3.1'
  s.add_development_dependency 'rake'
end
