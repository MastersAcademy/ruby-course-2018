# frozen_string_literal: true

require_relative './base'
require_relative './tamagotchi'
require_relative '../models/tamagotchi'

# Entry API
class AppAPI
  include TamagotchiAPI

  API = {
    { path: '/api/v1/', method: 'GET' } => :sync
  }.freeze

  attr_accessor :tamagotchi

  def call(env)
    request_handler = request_handler_from env
    return BaseAPI.page_404 if request_handler.nil?

    self.tamagotchi ||= Tamagotchi.new
    send request_handler
  end

  def request_handler_from(env)
    method = env['REQUEST_METHOD']
    path = env['PATH_INFO']
    API[{ path: path, method: method }]
  end
end
