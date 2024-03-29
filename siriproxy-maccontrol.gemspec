# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "MacControl"
  s.version     = "0.0.1" 
  s.authors     = ["PathKiller29"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{A Siri Proxy Plugin to control aspects of the mac running the proxy}
  s.description = %q{A Siri Proxy Plugin to control aspects of the mac running the proxy, for example opening google.com, or twitter (application or site) }

  s.rubyforge_project = "MacConrol"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
