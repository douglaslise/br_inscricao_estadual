require "bundler/gem_tasks"

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  rdoc.title = 'br_inscricao_estadual'
  rdoc.main = "README.rdoc"
  rdoc.rdoc_dir = 'doc'
  rdoc.rdoc_files.include("README.rdoc","lib/**/*.rb")
  # rdoc.generator = 'darkfish'
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :test => :spec
task :default => :spec
