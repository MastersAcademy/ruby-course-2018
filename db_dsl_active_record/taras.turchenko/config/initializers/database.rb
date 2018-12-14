# frozen_string_literal: true

require 'yaml'
require 'active_record'

DB_CONFIG = YAML.load(File.open('config/database.yml'))[ENV['RAILS_ENV']].freeze

ActiveRecord::Base.establish_connection(DB_CONFIG)

Dir['app/models/*.rb'].each { |file| require "./#{file}" }
