#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

GestorTesisV6::Application.load_tasks

require "rake"
require "rake/testtask"
require "bundler/gem_tasks"

desc "Default: run unit tests."
task :default => :test

desc "Test the table_builder plugin."
Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.pattern = "test/**/*_test.rb"
  t.verbose = true
end
