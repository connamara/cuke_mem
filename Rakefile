# encoding: utf-8

require "bundler/gem_tasks" 
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new(:spec)
Cucumber::Rake::Task.new(:cucumber)

task :test => [:spec, :cucumber]
task :default => :test

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "cuke_mem"
  gem.homepage = "http://github.com/connamara/cuke_mem"
  gem.license = "GPL"
  gem.summary = %Q{A very simple memory bank for cucumber tests}
  gem.description = %Q{Gem serves as a place where step definitions from different modules can share remembered data}
  gem.email = "info@connamara.com"
  gem.authors = ["Chris Busbey"]
  # dependencies defined in Gemfile
end

Jeweler::RubygemsDotOrgTasks.new
