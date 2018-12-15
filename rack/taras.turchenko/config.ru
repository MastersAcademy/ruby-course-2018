# frozen_string_literal: true

require_relative './app/app'

STATIC_FILES = {
  '/main.js' => 'main.js',
  '/styles.css' => 'styles.css'
}

use Rack::Static, :urls => STATIC_FILES, :root => 'public', :index => 'index.html'

run App.new
