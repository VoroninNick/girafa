# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "browsercms"
  s.version = "3.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["BrowserMedia"]
  s.date = "2012-06-07"
  s.description = "BrowserCMS is a general purpose, open source Web Content Management System (CMS) that supports Ruby on Rails v3.2. It can be used as a standalone CMS, added to existing Rails projects or extended using Rails Engines."
  s.email = "github@browsermedia.com"
  s.executables = ["bcms", "bcms-upgrade", "browsercms"]
  s.extra_rdoc_files = ["LICENSE.txt", "COPYRIGHT.txt", "GPL.txt", "README.markdown"]
  s.files = ["bin/bcms", "bin/bcms-upgrade", "bin/browsercms", "LICENSE.txt", "COPYRIGHT.txt", "GPL.txt", "README.markdown"]
  s.homepage = "http://www.browsercms.org"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "1.8.25"
  s.summary = "Web Content Management in Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["< 3.3.0", ">= 3.2.5"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 0"])
      s.add_runtime_dependency(%q<ancestry>, ["~> 1.2.4"])
      s.add_runtime_dependency(%q<ckeditor_rails>, ["~> 3.6.2.2"])
      s.add_runtime_dependency(%q<jquery-rails>, ["~> 2.0"])
      s.add_runtime_dependency(%q<paperclip>, ["~> 3.0.3"])
      s.add_runtime_dependency(%q<term-ansicolor>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["< 3.3.0", ">= 3.2.5"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<ancestry>, ["~> 1.2.4"])
      s.add_dependency(%q<ckeditor_rails>, ["~> 3.6.2.2"])
      s.add_dependency(%q<jquery-rails>, ["~> 2.0"])
      s.add_dependency(%q<paperclip>, ["~> 3.0.3"])
      s.add_dependency(%q<term-ansicolor>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["< 3.3.0", ">= 3.2.5"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<ancestry>, ["~> 1.2.4"])
    s.add_dependency(%q<ckeditor_rails>, ["~> 3.6.2.2"])
    s.add_dependency(%q<jquery-rails>, ["~> 2.0"])
    s.add_dependency(%q<paperclip>, ["~> 3.0.3"])
    s.add_dependency(%q<term-ansicolor>, [">= 0"])
  end
end
