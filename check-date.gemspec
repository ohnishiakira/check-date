# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "check-date/version"

Gem::Specification.new do |s|
  s.name        = "check-date"
  s.version     = CheckDate::VERSION
  s.authors     = ["Akira Ohnishi"]
  s.email       = ["s06206ao@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Check gem's date and warn if date is more than 1 years ago.}
  s.description = %q{Check gem's date and warn if date is more than 1 years ago.}

  s.rubyforge_project = "check-date"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
