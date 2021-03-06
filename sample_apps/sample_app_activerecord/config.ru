ENV['RACK_ENV'] ||= 'development'

Bundler.require :default

require_relative 'commands'
require 'yaml'

ActiveRecord::Base.establish_connection(YAML.load_file('config/postgresql.yml')[ENV['RACK_ENV']])

if ENV['RACK_ENV'] == 'development'
  puts 'Loading NewRelic in developer mode ...'
  # require 'new_relic/rack/developer_mode'
  # use NewRelic::Rack::DeveloperMode
end

# NewRelic::Agent.manual_start

SlackRubyBotServer::App.instance.prepare!
SlackRubyBotServer::Service.start!

run SlackRubyBotServer::Api::Middleware.instance
