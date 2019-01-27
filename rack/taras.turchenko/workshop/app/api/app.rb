# frozen_string_literal: true

require_relative './base'
require_relative './tamagotchi'
require_relative '../models/tamagotchi'

# Entry API
class AppAPI
  include TamagotchiAPI

  API = {
    { path: '/api/v1/stats', method: 'GET' } => :stats,
    { path: '/api/v1/action', method: 'POST' } => :do_action
  }.freeze

  attr_accessor :tamagotchi

  def call(env)
    request = Rack::Request.new env
    request_handler = request_handler_for request
    return BaseAPI.page_404 if request_handler.nil?

    self.tamagotchi ||= Tamagotchi.new
    send request_handler, request.params
  end

  def request_handler_for(request)
    method = request.env['REQUEST_METHOD']
    api_params = { path: request.path, method: method }
    API[api_params]
  end
end
