# frozen_string_literal: true

namespace :build do
  desc 'Build gem'
  task :gem do
    puts '[INFO] Building gem...'
    system('rm teuton-*.*.*.gem')
    system('gem build teuton.gemspec')
  end

  desc 'Generate docs'
  task :docs do
    puts '[INFO] Generating documentation...'
    system('rm -r html/')
    system('yardoc lib/* -o html')
  end

  desc 'Build all (gem and docs)'
  task :all do
    Rake::Task['build:gem'].invoke
    Rake::Task['build:docs'].invoke
  end
end
