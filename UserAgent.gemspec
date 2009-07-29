# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{UserAgent}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Flournoy"]
  s.date = %q{2009-07-28}
  s.description = %q{Determine whether the HTTP user agent talking to your code is a web spider.}
  s.email = ["jamie@pervasivecode.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/user_agent.rb", "test/test_user_agent.rb"]
  s.homepage = %q{http://github.com/JamieFlournoy/UserAgent/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{useragent}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Determine whether the HTTP user agent talking to your code is a web spider.}
  s.test_files = ["test/test_user_agent.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.2"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.2"])
  end
end
