# frozen_string_literal: true

require 'yaml'
require 'active_record'

db_config_file = File.open 'config/database.yml'
DB_CONFIG = YAML.safe_load(db_config_file)[ENV['RAILS_ENV']].freeze

ActiveRecord::Base.establish_connection(DB_CONFIG)

Dir['app/models/*.rb'].each { |file| require "./#{file}" }
