# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bcms_kcfinder"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["BrowserMedia"]
  s.date = "2012-06-07"
  s.description = "A BrowserCMS module that allows users to browse, upload and link to files while editing content. Integrates the KCFinder library with CKEditor."
  s.email = ["github@browsermedia.com"]
  s.homepage = "http://github.com/browsermedia/bcms_kcfinder"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "A BrowserCMS module which integrates KCFinder."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<browsercms>, ["~> 3.5.2"])
    else
      s.add_dependency(%q<browsercms>, ["~> 3.5.2"])
    end
  else
    s.add_dependency(%q<browsercms>, ["~> 3.5.2"])
  end
end
