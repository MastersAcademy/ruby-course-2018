# frozen_string_literal: true

require_relative './shared'
require_relative './models/tamagotchi'
require_relative './api/main_api'
require_relative './api/tamagotchi_actions_api'

# Entry app
class App
  include MainAPI
  include TamagotchiActionsAPI

  API = {
    '/' => :index,
    '/health' => :tamagotchi_health,
    '/actions/to-feed' => :feed_tamagotchi,
    '/actions/put-to-bad' => :put_to_bad_tamagotchi,
    '/actions/play-game' => :play_in_game_with_tamagotchi
  }.freeze

  attr_accessor :tamagotchi

  def call(env)
    request = Rack::Request.new env
    request_path = request.path
    return not_found_page(request_path) unless API.key? request_path

    send API[request_path]
  end
end
