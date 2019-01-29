require_relative './application'
require 'rack'

use Rack::Reloader, 0
run Application.new
