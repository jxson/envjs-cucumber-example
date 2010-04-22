require 'rake'
require 'rubygems'

begin
  gem 'sinatra', '1.0'
  gem 'rspec'
  gem 'rack-test'
  gem 'cucumber', '0.6.4'
  gem 'capybara', '0.3.7'
  gem 'capybara-envjs', '0.1.0'
rescue LoadError
  puts <<-MESSAGE
Your are missing the required gems, you can install them with these commands:

gem install sinatra -v '1.0'
gem install rspec rack-test
gem install cucumber -v '0.6.4'
gem install capybara -v '0.3.7'
gem install capybara-envjs -v '0.1.0'
  MESSAGE

  exit(0)
end

require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber, 'Run all features') do |t|
end
