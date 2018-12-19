# frozen_string_literal: true

require_relative './base'
require_relative './tamagotchi'

# Entry API
class AppAPI
  include TamagotchiAPI

  API = {
    { path: '/api/v1', method: 'GET' } => :sync
  }.freeze

  def call(env)
    request_handler = request_handler_from env
    return BaseAPI.page_404 if request_handler.nil?

    send request_handler
  end

  def request_handler_from(env)
    method = env['REQUEST_METHOD']
    path = env['PATH_INFO']
    API[{ path: path, method: method }]
  end
end
