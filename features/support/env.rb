# See http://wiki.github.com/aslakhellesoy/cucumber/sinatra
# for more details about Sinatra with Cucumber
require 'sinatra'

app_file = File.join(File.dirname(__FILE__), *%w[.. .. app.rb])
require app_file
# Force the application name because polyglot breaks the auto-detection logic.
Sinatra::Application.app_file = app_file

require 'spec/expectations'
require 'rack/test'
require 'capybara/cucumber'
require 'capybara/session'
require 'capybara/envjs'

set :environment, :test

Capybara.default_driver = :envjs
Capybara.app = Sinatra::Application
