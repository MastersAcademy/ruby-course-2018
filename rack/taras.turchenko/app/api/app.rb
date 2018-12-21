# frozen_string_literal: true

require_relative './base'
require_relative './tamagotchi'
require_relative '../models/tamagotchi'

# Entry API
class AppAPI
  include TamagotchiAPI

  API = {
    { path: '/api/v1/stats', method: 'GET' } => :stats,
    { path: '/api/v1/play', method: 'POST' } => :play,
    { path: '/api/v1/feed', method: 'POST' } => :feed,
    { path: '/api/v1/rest', method: 'POST' } => :rest
  }.freeze

  attr_accessor :tamagotchi

  def call(env)
    request_handler = request_handler_for env
    return BaseAPI.page_404 if request_handler.nil?

    self.tamagotchi ||= Tamagotchi.new
    send request_handler
  end

  def request_handler_for(env)
    method = env['REQUEST_METHOD']
    path = env['PATH_INFO']
    API[{ path: path, method: method }]
  end
end
