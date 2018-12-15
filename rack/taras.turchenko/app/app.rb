# frozen_string_literal: true

require_relative './shared'
require_relative './models/tamagotchi'
require_relative './api/common_api'
require_relative './api/tamagotchi_actions_api'

# Entry app
class App
  include CommonAPI
  include TamagotchiActionsAPI

  API = {
    '/start' => :start,
    '/health' => :tamagotchi_health,
    '/do' => :request_tamagotchi_action
  }.freeze

  attr_accessor :tamagotchi

  def call(env)
    request = Rack::Request.new env
    request_handler = API[request.path]
    return not_found_page(request_path) if request_handler.nil?

    return send(request_handler, request.params) if request.params.any?

    send request_handler
  end
end
