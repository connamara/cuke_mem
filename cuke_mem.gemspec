# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cuke_mem"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Busbey"]
  s.date = "2013-08-27"
  s.description = "Gem serves as a place where step definitions from different modules can share remembered data"
  s.email = "info@connamara.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "CONTRIBUTION_GUIDELINES.md",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "cuke_mem.gemspec",
    "features/example.feature",
    "features/step_definitions/steps.rb",
    "features/support/env.rb",
    "lib/cuke_mem.rb",
    "lib/cuke_mem/cucumber.rb",
    "lib/cuke_mem/memory.rb",
    "spec/cuke_mem_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/connamara/cuke_mem"
  s.licenses = ["GPL"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "A very simple memory bank for cucumber tests"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, ["~> 1.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
    else
      s.add_dependency(%q<cucumber>, ["~> 1.3"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<jeweler>, ["~> 1.8"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
    end
  else
    s.add_dependency(%q<cucumber>, ["~> 1.3"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<jeweler>, ["~> 1.8"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
  end
end

