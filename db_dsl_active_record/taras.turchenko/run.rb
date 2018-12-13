require 'pry'
require './config/initializers/database.rb'

require_relative './app/views/app_view'

AppView.new.start