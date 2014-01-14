$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "minimal-diff-chef-formatter"
  s.version     = "0.1.0"
  s.authors     = ["Vyacheslav Kuznetsov"]
  s.email       = ["kuznetsovvv@gmail.com"]
  s.homepage    = "https://github.com/smith3v/minimal-diff-chef-formatter"
  s.summary     = %q{Minimal Chef formatter with diffs}
  s.description = %q{Minimal Chef formatter with diffs}

  s.rubyforge_project = "minimal-diff-chef-formatter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
