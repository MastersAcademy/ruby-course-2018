require 'pry'
require './config/initializers/database.rb'

require_relative './app/views/app'

App.new.start