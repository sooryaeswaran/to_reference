require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.libs << "lib/test"
  t.pattern = "lib/test/*_test.rb"
end

task default: :test