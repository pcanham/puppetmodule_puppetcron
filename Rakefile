require 'rake'
require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'puppetlabs_spec_helper/rake_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*/*_spec.rb'
end
